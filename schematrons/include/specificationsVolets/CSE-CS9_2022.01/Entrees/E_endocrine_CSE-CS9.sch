<?xml version="1.0" encoding="UTF-8"?>

<!-- E_endocrine_CSE-CS9
    
    Vérification des entrées FR-Probleme de la sous-section Système endocrinien et métabolique du CSE-CS9
    
    Historique :
    27/06/2011 : Création
    25/07/2011 : Ajout des éléments cliniques des volets CS8, CS9 et CS24
    11/10/2017 : Ajout du nom du schématron sur les messages d'erreur
    23/02/2021 : Séparation des schématrons par document (ici CSE-CS9) et modification des messages d'erreur 
    30/08/2021 : Suppression du [@negationInd] dans cda:observation[@negationInd] qui n'est pas obligatoire dans l'observation 
    06/04/2022 : Modification des codes en dur SNOMED 3.5 en CIM-10
-->

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="E_endocrine_CSE-CS9">
    <title>Vérification des entrées FR-Probleme de la sous-section Système endocrinien et métabolique du CSE-CS9</title>
    
    <!-- ****** Contexte = sous-section Système endocrinien et métabolique ****** -->
    <rule context='*[cda:templateId/@root="1.3.6.1.4.1.19376.1.5.3.1.1.9.25"]'>

        <assert test='.//cda:entry/cda:observation/cda:value/@code="E88.9"'>
            [E_endocrine_CSE-CS9] Erreur de conformité :
            L'entrée FR-Probleme de code "E88.9" est obligatoire pour indiquer l'absence ou la présence de Maladie métabolique.
        </assert>
        <report test='(.//cda:entry/cda:observation[@negationInd="false"]/cda:value/@code="E88.9") and 
            (.//cda:entry/cda:observation[cda:value/@code="E88.9"]/cda:entryRelationship/cda:act/cda:text="")'>
            [E_endocrine_CSE-CS9] Erreur de conformité :
            Dans le cas d'une présence de maladie métabolique (@negationInd="false"), préciser laquelle. 
        </report>
        <report test='(.//cda:entry/cda:observation[@negationInd="true"]/cda:value/@code="E88.9") and 
            (.//cda:entry/cda:observation[cda:value/@code="E88.9"]/cda:entryRelationship/cda:act/cda:text!="")'> 
            [E_endocrine_CSE-CS9] Erreur de conformité :
            Dans le cas d'absence de maladie métabolique (@negationInd="true"), l'élément text doit être vide
        </report>
        
        <assert test='.//cda:entry/cda:observation/cda:value/@code="E34.9"'>
            [E_endocrine_CSE-CS9] Erreur de conformité :
            L'entrée FR-Probleme de code "E34.9" est obligatoire pour indiquer l'absence ou la présence de maladie endocrinienne.
         </assert>
        <report test='(.//cda:entry/cda:observation[@negationInd="false"]/cda:value/@code="E34.9") and 
            (.//cda:entry/cda:observation[cda:value/@code="E34.9"]/cda:entryRelationship/cda:act/cda:text="")'>
            [E_endocrine_CSE-CS9] Erreur de conformité :
            Dans le cas d'une présence de maladie endocrinienne (@negationInd="false"), préciser laquelle. 
        </report>
        <report test='(.//cda:entry/cda:observation[@negationInd="true"]/cda:value/@code="E34.9") and 
            (.//cda:entry/cda:observation[cda:value/@code="E34.9"]/cda:entryRelationship/cda:act/cda:text!="")'> 
            [E_endocrine_CSE-CS9] Erreur de conformité :
            Dans le cas d'absence de maladie endocrinienne (@negationInd="true"), l'élément text doit être vide.
        </report>
    </rule>
</pattern>

