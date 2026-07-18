# README.md -> preview.html (local review)
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$readmePath = Join-Path $root "README.md"
$outPath = Join-Path $root "preview.html"
$md = [System.IO.File]::ReadAllText($readmePath, [System.Text.Encoding]::UTF8)

function Slugify([string]$t) {
  $t = $t -replace '\s*\{#.*$', ''
  # Match GitHub-style heading anchors: remove punctuation, then replace each
  # whitespace character with a hyphen (without collapsing adjacent spaces).
  $t = $t.Trim().ToLower() -replace '[^\p{L}\p{Nd}\s-]', ''
  $t = $t -replace '\s', '-'
  return $t
}

function CleanTitle([string]$t) {
  return ($t -replace '\s*\{#.*$', '').Trim()
}

function Get-HeadingId([string]$raw) {
  if ($raw -match '\{#([^}]+)\}\s*$') {
    return $matches[1].Trim()
  }
  return Slugify (CleanTitle $raw)
}

function Inline([string]$s) {
  if ([string]::IsNullOrEmpty($s)) { return $s }
  $s = [regex]::Replace($s, '\*\*(.+?)\*\*', '<strong>$1</strong>')
  $s = [regex]::Replace($s, '(?<!\*)\*(?!\*)(.+?)(?<!\*)\*(?!\*)', '<em>$1</em>')
  $s = [regex]::Replace($s, '\[([^\]]+)\]\(([^)]+)\)', '<a href="$2">$1</a>')
  $s = [regex]::Replace($s, '`([^`]+)`', '<code>$1</code>')
  return $s
}

$lines = $md -split "`r?`n"
$out = New-Object System.Collections.Generic.List[string]
$inUl = $false
$table = @()

function Close-Ul {
  param($list, [ref]$flag)
  if ($flag.Value) { $list.Add('</ul>'); $flag.Value = $false }
}

function Flush-Table($list, [ref]$rows) {
  if ($rows.Value.Count -lt 1) { return }
  $list.Add('<div class="table-wrap"><table>')
  $hdr = ($rows.Value[0].Trim('|').Split('|') | ForEach-Object { $_.Trim() })
  $list.Add('<thead><tr>' + (($hdr | ForEach-Object { '<th>' + (Inline $_) + '</th>' }) -join '') + '</tr></thead><tbody>')
  for ($i = 1; $i -lt $rows.Value.Count; $i++) {
    $r = $rows.Value[$i]
    if ($r -match '^\|\s*-') { continue }
    $cells = ($r.Trim('|').Split('|') | ForEach-Object { $_.Trim() })
    $list.Add('<tr>' + (($cells | ForEach-Object { '<td>' + (Inline $_) + '</td>' }) -join '') + '</tr>')
  }
  $list.Add('</tbody></table></div>')
  $rows.Value = @()
}

foreach ($line in $lines) {
  if ($line -match '^\|') {
    Close-Ul $out ([ref]$inUl)
    $table += $line
    continue
  }
  if ($table.Count -gt 0) {
    Flush-Table $out ([ref]$table)
  }

  if ($line -match '^\s*<p\s') {
    Close-Ul $out ([ref]$inUl)
    $out.Add(($line -replace 'align="center"', 'class="center"'))
    continue
  }
  if ($line -match '^\s*</p>\s*$' -or $line -match '^\s*<img\s') {
    $out.Add($line)
    continue
  }
  if ($line -match '^\s*&nbsp;\s*$') { continue }

  if ($line -match '^---\s*$') { Close-Ul $out ([ref]$inUl); $out.Add('<hr>'); continue }

  if ($line -match '^# (.+)$') {
    Close-Ul $out ([ref]$inUl)
    $t = CleanTitle $matches[1]; $out.Add('<h1 id="' + (Get-HeadingId $matches[1]) + '">' + (Inline $t) + '</h1>'); continue
  }
  if ($line -match '^## (.+)$') {
    Close-Ul $out ([ref]$inUl)
    $t = CleanTitle $matches[1]; $out.Add('<h2 id="' + (Get-HeadingId $matches[1]) + '">' + (Inline $t) + '</h2>'); continue
  }
  if ($line -match '^### (.+)$') {
    Close-Ul $out ([ref]$inUl)
    $t = CleanTitle $matches[1]; $out.Add('<h3 id="' + (Get-HeadingId $matches[1]) + '">' + (Inline $t) + '</h3>'); continue
  }
  if ($line -match '^> (.+)$') {
    Close-Ul $out ([ref]$inUl)
    $out.Add('<blockquote>' + (Inline $matches[1]) + '</blockquote>'); continue
  }
  if ($line -match '^- (.+)$') {
    if (-not $inUl) { $out.Add('<ul>'); $inUl = $true }
    $out.Add('<li>' + (Inline $matches[1]) + '</li>'); continue
  }

  if ($line.Trim() -eq '') { Close-Ul $out ([ref]$inUl); continue }

  Close-Ul $out ([ref]$inUl)
  $cls = ''
  if ($line -match '^\*\*Q\.') { $cls = ' class="faq-q"' }
  $out.Add("<p$cls>" + (Inline $line) + '</p>')
}
Close-Ul $out ([ref]$inUl)
if ($table.Count -gt 0) { Flush-Table $out ([ref]$table) }

$body = $out -join "`n"

$html = @"
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Yomi Calendar - Local README Preview</title>
  <style>
    :root { --bg:#fff; --text:#1f2328; --muted:#656d76; --border:#d0d7de; --link:#0969da; --quote-bg:#f6f8fa; }
    @media (prefers-color-scheme: dark) {
      :root { --bg:#0d1117; --text:#e6edf3; --muted:#8b949e; --border:#30363d; --link:#4493f8; --quote-bg:#161b22; }
    }
    body { margin:0; font:16px/1.65 -apple-system,BlinkMacSystemFont,"Segoe UI",Helvetica,Arial,sans-serif; color:var(--text); background:var(--bg); }
    .banner { background:var(--quote-bg); border-bottom:1px solid var(--border); padding:.75rem 1rem; text-align:center; font-size:.875rem; color:var(--muted); }
    main { max-width:920px; margin:0 auto; padding:2rem 1.25rem 4rem; }
    h1 { font-size:2rem; border-bottom:1px solid var(--border); padding-bottom:.35rem; }
    h2 { font-size:1.45rem; border-bottom:1px solid var(--border); padding-bottom:.25rem; margin-top:2.25rem; }
    h3 { font-size:1.1rem; margin-top:1.5rem; }
    a { color:var(--link); }
    blockquote { margin:1rem 0; padding:.6rem 1rem; border-left:4px solid var(--border); background:var(--quote-bg); color:var(--muted); }
    hr { border:none; border-top:1px solid var(--border); margin:2rem 0; }
    code { background:var(--quote-bg); padding:.12em .35em; border-radius:4px; font-size:.88em; }
    p.center, p[class="center"] { text-align:center; margin:1rem 0; }
    .center img, p.center img { max-width:100%; height:auto; border-radius:12px; border:1px solid var(--border); vertical-align:middle; margin:.25rem; }
    .table-wrap { overflow-x:auto; margin:1rem 0; }
    table { width:100%; border-collapse:collapse; }
    th, td { border:1px solid var(--border); padding:.55rem .75rem; text-align:left; vertical-align:top; }
    th { background:var(--quote-bg); }
    ul { padding-left:1.4rem; }
    .faq-q { font-weight:600; margin-top:1.1rem; margin-bottom:.25rem; }
  </style>
</head>
<body>
  <div class="banner">Local preview &middot; <strong>preview.html</strong> &middot; Source: <code>README.md</code> &middot; Images: <code>assets/</code> &middot; Rebuild: <code>.\build-preview.ps1</code></div>
  <main>
$body
  </main>
</body>
</html>
"@

[System.IO.File]::WriteAllText($outPath, $html, [System.Text.UTF8Encoding]::new($false))
Write-Host "OK: $outPath"
