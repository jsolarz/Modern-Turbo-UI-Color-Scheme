# PowerShell Reference File

param(
    [string]$Name = "Nord Turbo"
)

Write-Host "Hello, $Name"

$nums = 1..5
foreach ($n in $nums) {
    Write-Host "n = $n"
}
