<?xml version="1.0" encoding="UTF-8"?>

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="JDV_PrelevementFixateur-CISIS" is-a="dansJeuDeValeurs">
    <param name="path_jdv" value="$jdv_PrelevementFixateur-CISIS"/>
    <param name="vue_elt" value="ClinicalDocument/component/structuredBody/component/section/entry/procedure/entryRelationship/observation/value"/>
    <param name="xpath_elt" value="cda:observation[cda:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.13' 
        and cda:code/@code='MED-664']/cda:value"/>
    <param name="nullFlavor" value="0"/>
</pattern> 

