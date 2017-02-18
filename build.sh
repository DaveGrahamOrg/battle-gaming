echo "Start Build Battle Gaming ebooks"

mkdir -p publish

echo "Building Warrior Code System Core Document"
rm -f publish/Warrior-Code-System-Core-Document.epub
cp ebooks/shared-content/license.xhtml ebooks/warrior-code/sys-core-doc/Text
echo "<!-- WARNING: This file was imported from another project and all edits will be overwritten by the next build.-->" >> ebooks/warrior-code/sys-core-doc/Text/license.xhtml
$importItems = $importSources -replace "shared-content", "warrior-code\sys-core-doc\Text"
cd ebooks/warrior-code
zip ../../publish/Warrior_Code_System_Core_Document.epub sys-core-doc/*
cd ../..
echo "Built publish/Warrior-Code-System-Core-Document.epub"

echo "Building Warrior Code Padded Weapon Rules Document"
rm -f publish\Warrior-Code-Padded-Weapon-Rules-Document.epub
cp ebooks/shared-content/license.xhtml warrior-code/padded-weapon-rules-doc/Text
cp ebooks/warrior-code/sys-core-doc/Text/srd-topic-weapon-grouping-classes.xhtml warrior-code/padded-weapon-rules-doc/Text
cp ebooks/warrior-code/sys-core-doc/Text/srd-topic-weapon-mass-classes.xhtml warrior-code/padded-weapon-rules-doc/Text
cp ebooks/warrior-code/sys-core-doc/Text/srd-topic-weapon-part-definitions.xhtml warrior-code/padded-weapon-rules-doc/Text
cp ebooks/warrior-code/sys-core-doc/Text/srd-topic-weapon-size-classes.xhtml warrior-code/padded-weapon-rules-doc/Text
echo "<!-- WARNING: This file was imported from another project and all edits will be overwritten by the next build.-->" >> ebooks/warrior-code/padded-weapon-rules-doc/Text/license.xhtml
echo "<!-- WARNING: This file was imported from another project and all edits will be overwritten by the next build.-->" >> ebooks/warrior-code/padded-weapon-rules-doc/Text/srd-topic-weapon-grouping-classes.xhtml
echo "<!-- WARNING: This file was imported from another project and all edits will be overwritten by the next build.-->" >> ebooks/warrior-code/padded-weapon-rules-doc/Text/srd-topic-weapon-mass-classes.xhtml
echo "<!-- WARNING: This file was imported from another project and all edits will be overwritten by the next build.-->" >> ebooks/warrior-code/padded-weapon-rules-doc/Text/srd-topic-weapon-part-definitions.xhtml
echo "<!-- WARNING: This file was imported from another project and all edits will be overwritten by the next build.-->" >> ebooks/warrior-code/padded-weapon-rules-doc/Text/srd-topic-weapon-size-classes.xhtml
cd ebooks/warrior-code
zip ../../publish/Warrior-Code-Padded-Weapon-Rules-Document.epub sys-core-doc/*
cd ../..
echo  "Built publish/Warrior-Code-Padded-Weapon-Rules-Document.epub"

echo "End Build Battle Gaming ebooks"
