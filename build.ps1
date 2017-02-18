Write-Output "Start Build Battle Gaming ebooks"

$exists = Test-Path "publish"
If (-Not $exists) {
    New-Item -ItemType directory -Name "publish"
}

Write-Output "Building Warrior Code System Core Document"
$exists = Test-Path "publish\Warrior-Code-System-Core-Document.epub"
If ($exists) {
    Remove-Item "publish\Warrior-Code-System-Core-Document.epub"
}
$importSources = @(
    "ebooks\shared-content\license.xhtml"
	)
Copy-Item -Path $importSources -Destination "ebooks\warrior-code\sys-core-doc\Text"
$importItems = $importSources -replace "shared-content", "warrior-code\sys-core-doc\Text"
Compress-Archive -Path "ebooks\warrior-code\sys-core-doc" -DestinationPath "publish\Warrior-Code-System-Core-Document.zip"
Rename-Item -Path "publish\Warrior-Code-System-Core-Document.zip" -NewName "Warrior-Code-System-Core-Document.epub"
Write-Output "Built publish\Warrior-Code-System-Core-Document.epub"

Write-Output "Building Warrior Code Padded Weapon Rules Document"
$exists = Test-Path "publish\Warrior-Code-Padded-Weapon-Rules-Document.epub"
If ($exists) {
    Remove-Item "publish\Warrior-Code-Padded-Weapon-Rules-Document.epub"
}
$importSources = @(
    "ebooks\shared-content\license.xhtml",
	"ebooks\warrior-code\sys-core-doc\Text\srd-topic-weapon-grouping-classes.xhtml",
	"ebooks\warrior-code\sys-core-doc\Text\srd-topic-weapon-mass-classes.xhtml",
	"ebooks\warrior-code\sys-core-doc\Text\srd-topic-weapon-part-definitions.xhtml",
	"ebooks\warrior-code\sys-core-doc\Text\srd-topic-weapon-size-classes.xhtml"
	)
Copy-Item -Path $importSources -Destination "ebooks\warrior-code\padded-weapon-rules-doc\Text"
$importItemsScd = $importSources -replace "sys-core-doc", "padded-weapon-rules-doc"
$importItems = $importItemsScd -replace "shared-content", "warrior-code\padded-weapon-rules-doc\Text"
Add-Content $importItems "<!-- WARNING: This file was imported from another project and all edits will be overwritten by the next build.-->`r`n"
Compress-Archive -Path "ebooks\warrior-code\padded-weapon-rules-doc" -DestinationPath "publish\Warrior-Code-Padded-Weapon-Rules-Document.zip"
Rename-Item -Path "publish\Warrior-Code-Padded-Weapon-Rules-Document.zip" -NewName "Warrior-Code-Padded-Weapon-Rules-Document.epub"
Write-Output "Built publish\Warrior-Code-Padded-Weapon-Rules-Document.epub"

Write-Output "End Build Battle Gaming ebooks"