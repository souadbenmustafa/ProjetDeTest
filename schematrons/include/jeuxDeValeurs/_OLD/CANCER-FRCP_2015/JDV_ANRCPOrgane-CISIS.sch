<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    JDV_Organe-CISIS.sch :
    Contenu :

    Paramètres d'appel :
        Néant 
    Historique :
        27/06/11 : CRI ASIP/PRAS : Création
        14/10/19 : NMA : Mise à jour du nom du schématron, de l'id, de la variable et du titre
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="JDV_ANRCPOrgane-CISIS" is-a="dansJeuDeValeurs">
    <p>Conformité Organe</p>
    <param name="path_jdv" value="$JDV_ANRCPOrgane-CISIS"/>
    <param name="vue_elt" value="ClinicalDocument/component/structuredBody/component/section/entry/observation/entryRelationship/observation/entryRelationship/observation/value"/>
    <param name="xpath_elt" value="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.3.2']/cda:entry/cda:observation/cda:entryRelationship/cda:observation[cda:code/@code='RCP_099']/cda:entryRelationship/cda:observation[cda:code/@code='ORG-119']/cda:value"/>
    <param name="nullFlavor" value="1"/>
</pattern>   

