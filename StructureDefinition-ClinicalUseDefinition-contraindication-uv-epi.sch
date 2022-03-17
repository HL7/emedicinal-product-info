<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ClinicalUseDefinition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ClinicalUseDefinition</sch:title>
    <sch:rule context="f:ClinicalUseDefinition">
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:contraindication) &gt;= 1">contraindication: minimum cardinality of 'contraindication' is 1</sch:assert>
      <sch:assert test="count(f:interaction) &lt;= 0">interaction: maximum cardinality of 'interaction' is 0</sch:assert>
      <sch:assert test="count(f:undesirableEffect) &lt;= 0">undesirableEffect: maximum cardinality of 'undesirableEffect' is 0</sch:assert>
      <sch:assert test="count(f:warning) &lt;= 0">warning: maximum cardinality of 'warning' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition</sch:title>
    <sch:rule context="f:ClinicalUseDefinition">
      <sch:assert test="count(f:ClinicalUseDefinition.f:indication|f:ClinicalUseDefinition.f:contraIndication|f:ClinicalUseDefinition.f:interaction|f:ClinicalUseDefinition.f:undesirableEffect|f:ClinicalUseDefinition.f:warning) &lt; 2">Indication, Contraindication, Interaction, UndesirableEffect and Warning cannot be used in the same instance (inherited)</sch:assert>
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources (inherited)</sch:assert>
      <sch:assert test="not(exists(for $contained in f:contained return $contained[not(exists(parent::*/descendant::f:reference/@value=concat('#', $contained/*/f:id/@value)) or exists(descendant::f:reference[@value='#']))]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label (inherited)</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.meta</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.implicitRules</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.language</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.text</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.extension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.modifierExtension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.identifier</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.type</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.category</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:category">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.subject</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:subject">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.status</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.extension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.modifierExtension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ClinicalUseDefinition/f:contraindication/f:diseaseSymptomProcedure</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:diseaseSymptomProcedure">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:concept) &gt;= 1">concept: minimum cardinality of 'concept' is 1</sch:assert>
      <sch:assert test="count(f:concept) &lt;= 1">concept: maximum cardinality of 'concept' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.diseaseSymptomProcedure</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:diseaseSymptomProcedure">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.diseaseSymptomProcedure.extension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:diseaseSymptomProcedure/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.diseaseSymptomProcedure.concept</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:diseaseSymptomProcedure/f:concept">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.diseaseSymptomProcedure.reference</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:diseaseSymptomProcedure/f:reference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.diseaseStatus</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:diseaseStatus">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.comorbidity</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:comorbidity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.indication</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:indication">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.otherTherapy</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:otherTherapy">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.otherTherapy.extension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:otherTherapy/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.otherTherapy.modifierExtension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:otherTherapy/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.otherTherapy.relationshipType</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:otherTherapy/f:relationshipType">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.contraindication.otherTherapy.therapy</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:contraindication/f:otherTherapy/f:therapy">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.indication</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:indication">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.indication.extension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:indication/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.indication.modifierExtension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:indication/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.indication.diseaseSymptomProcedure</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:indication/f:diseaseSymptomProcedure">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.indication.diseaseStatus</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:indication/f:diseaseStatus">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.indication.comorbidity</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:indication/f:comorbidity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.indication.intendedEffect</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:indication/f:intendedEffect">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.indication.duration</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:indication/f:duration">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.indication.undesirableEffect</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:indication/f:undesirableEffect">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.indication.otherTherapy</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:indication/f:otherTherapy">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.interaction</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:interaction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.interaction.extension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:interaction/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.interaction.modifierExtension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:interaction/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.interaction.interactant</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:interaction/f:interactant">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.interaction.interactant.extension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:interaction/f:interactant/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.interaction.interactant.modifierExtension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:interaction/f:interactant/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.interaction.interactant.item[x] 1</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:interaction/f:interactant/f:item[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.interaction.type</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:interaction/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.interaction.effect</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:interaction/f:effect">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.interaction.incidence</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:interaction/f:incidence">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.interaction.management</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:interaction/f:management">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.population</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:population">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.undesirableEffect</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:undesirableEffect">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.undesirableEffect.extension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:undesirableEffect/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.undesirableEffect.modifierExtension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:undesirableEffect/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.undesirableEffect.symptomConditionEffect</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:undesirableEffect/f:symptomConditionEffect">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.undesirableEffect.classification</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:undesirableEffect/f:classification">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.undesirableEffect.frequencyOfOccurrence</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:undesirableEffect/f:frequencyOfOccurrence">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.warning</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:warning">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.warning.extension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:warning/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.warning.modifierExtension</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:warning/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.warning.description</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:warning/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ClinicalUseDefinition.warning.code</sch:title>
    <sch:rule context="f:ClinicalUseDefinition/f:warning/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
