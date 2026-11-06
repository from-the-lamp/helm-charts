# Renders trivy's `config --format json` output as deterministic markdown.
# `--format table`'s own renderer has no stable tie-break when two findings
# share the same rule ID *and* message (e.g. a generic rule firing on two
# containers of the same pod) - its order then depends on internal map
# iteration and flips between runs, which broke the chart-readme pre-commit
# hook's idempotency. Every list here is explicitly sorted, so the same scan
# always produces byte-identical markdown.

[
  "# Trivy scan - Helm Chart",
  "",
  "## Report Summary",
  "",
  "| Target | Type | Misconfigurations |",
  "| --- | --- | --- |"
]
+ (
    [.Results[]? ]
    | sort_by(.Target)
    | map("| " + .Target + " | " + .Type + " | " + ((.MisconfSummary.Failures // 0) | tostring) + " |")
  )
+ (
    [.Results[]? | select((.MisconfSummary.Failures // 0) > 0)]
    | sort_by(.Target)
    | map(
        . as $result
        | ["", "## " + .Target, ""]
        + (
            .Misconfigurations
            | sort_by([.ID, .Message, (.CauseMetadata.StartLine // 0)])
            | map(
                ["### " + .ID + " (" + .Severity + "): " + .Title, ""]
                + [.Message, ""]
                + (if .Resolution then ["- Resolution: " + .Resolution] else [] end)
                + ["- See: " + .PrimaryURL]
                + (
                    if .CauseMetadata.StartLine then
                      ["- Location: `" + $result.Target + ":" + (.CauseMetadata.StartLine | tostring) + "-" + (.CauseMetadata.EndLine | tostring) + "`", ""]
                    else [""] end
                  )
                + (
                    if .CauseMetadata.Code.Lines then
                      ["```"]
                      + (.CauseMetadata.Code.Lines | map(
                          (.Content // "" | sub("[ \t]+$"; "")) as $content
                          | if $content == "" then "\(.Number):" else "\(.Number): \($content)" end
                        ))
                      + ["```", ""]
                    else [] end
                  )
              )
          )
      )
    | flatten
  )
| flatten
# drop a trailing blank line at the very end of the file - end-of-file-fixer
# wants exactly one newline there, not an extra blank line after it.
| (if .[-1] == "" then .[0:-1] else . end)
| .[]
