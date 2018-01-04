$step=$args[0]
$a=".strong"
$b=".weak"
$PathToSearch=$PSScriptRoot
Remove-Item -Path $PathToSearch"\*" -Recurse -Exclude *.txt,*.ps1
Remove-Item -Path $PathToSearch"\*"  -Recurse -Exclude *.txt,*.ps1
Get-ChildItem $PathToSearch -Filter *.txt | `
Foreach-Object{

$avg = (get-content -Path $_.FullName | select -last $step | % { $_.Split(",") | select -Last 1} | measure-object -Average)
$avgint = $avg.average -as [int]
$filename = ( $_.Name.Split(".") | select -first 1)


if ($avgint -ge 5)
{

New-Item -Path $PathToSearch -Name $filename$a -ItemType file
}
else
{
New-Item -Path $PathToSearch -Name $filename$b -ItemType file
}
}