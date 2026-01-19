$files = @('src/index.tsx', 'src/reportWebVitals.ts')

foreach ($file in $files) {
    $content = [System.IO.File]::ReadAllText($file)
    $newContent = $content -replace "`r`n", "`n"
    [System.IO.File]::WriteAllText($file, $newContent)
    Write-Host "Convertido: $file"
}
