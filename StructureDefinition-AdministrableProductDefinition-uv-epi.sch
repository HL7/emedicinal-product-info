<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile AdministrableProductDefinition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>AdministrableProductDefinition</sch:title>
    <sch:rule context="f:AdministrableProductDefinition">
      <sch:assert test="count(f:AdministrableProductDefinition/f:routeOfAdministration/f:code|//f:MedicinalProductDefinition[f:id/@value=current()/ancestor::f:AdministrableProductDefinition/f:formOf/f:reference/@value]/f:route) &lt; 2">RouteOfAdministration cannot be used when the 'formOf' product already uses MedicinalProductDefinition.route (and vice versa) (inherited)</sch:assert>
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources (inherited)</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/f:id/@value return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label (inherited)</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.meta</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.implicitRules</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.language</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.text</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.modifierExtension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.identifier</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdministrableProductDefinition/f:identifier</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.identifier.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:identifier/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.identifier.use</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:identifier/f:use">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.identifier.type</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:identifier/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.identifier.system</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:identifier/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.identifier.value</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:identifier/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.identifier.period</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:identifier/f:period">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.identifier.assigner</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:identifier/f:assigner">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.status</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.formOf</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:formOf">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdministrableProductDefinition/f:administrableDoseForm</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:administrableDoseForm">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.administrableDoseForm</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:administrableDoseForm">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.administrableDoseForm.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:administrableDoseForm/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.administrableDoseForm.coding</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:administrableDoseForm/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdministrableProductDefinition/f:administrableDoseForm/f:coding</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:administrableDoseForm/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.administrableDoseForm.coding.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:administrableDoseForm/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.administrableDoseForm.coding.system</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:administrableDoseForm/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.administrableDoseForm.coding.version</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:administrableDoseForm/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.administrableDoseForm.coding.code</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:administrableDoseForm/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.administrableDoseForm.coding.display</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:administrableDoseForm/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.administrableDoseForm.coding.userSelected</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:administrableDoseForm/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.administrableDoseForm.text</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:administrableDoseForm/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdministrableProductDefinition/f:unitOfPresentation</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:unitOfPresentation">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.unitOfPresentation</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:unitOfPresentation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.unitOfPresentation.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:unitOfPresentation/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.unitOfPresentation.coding</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:unitOfPresentation/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdministrableProductDefinition/f:unitOfPresentation/f:coding</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:unitOfPresentation/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.unitOfPresentation.coding.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:unitOfPresentation/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.unitOfPresentation.coding.system</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:unitOfPresentation/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.unitOfPresentation.coding.version</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:unitOfPresentation/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.unitOfPresentation.coding.code</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:unitOfPresentation/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.unitOfPresentation.coding.display</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:unitOfPresentation/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.unitOfPresentation.coding.userSelected</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:unitOfPresentation/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.unitOfPresentation.text</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:unitOfPresentation/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.producedFrom</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:producedFrom">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.ingredient</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:ingredient">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.device</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:device">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.property</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:property">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.property.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:property/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.property.modifierExtension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:property/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.property.type</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:property/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.property.value[x] 1</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:property/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.property.status</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:property/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.modifierExtension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdministrableProductDefinition/f:routeOfAdministration/f:code</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.code</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.code.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:code/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.code.coding</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:code/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdministrableProductDefinition/f:routeOfAdministration/f:code/f:coding</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:code/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.code.coding.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:code/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.code.coding.system</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:code/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.code.coding.version</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:code/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.code.coding.code</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:code/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.code.coding.display</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:code/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.code.coding.userSelected</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:code/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.code.text</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:code/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.firstDose</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:firstDose">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.maxSingleDose</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:maxSingleDose">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.maxDosePerDay</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:maxDosePerDay">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.maxDosePerTreatmentPeriod</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:maxDosePerTreatmentPeriod">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.maxTreatmentPeriod</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:maxTreatmentPeriod">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.modifierExtension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.code</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.code.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.code.coding</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code/f:coding</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.code.coding.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.code.coding.system</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.code.coding.version</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.code.coding.code</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.code.coding.display</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.code.coding.userSelected</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.code.text</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:code/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.withdrawalPeriod</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:withdrawalPeriod">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.withdrawalPeriod.extension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:withdrawalPeriod/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.withdrawalPeriod.modifierExtension</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:withdrawalPeriod/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.withdrawalPeriod.tissue</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:withdrawalPeriod/f:tissue">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.withdrawalPeriod.value</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:withdrawalPeriod/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AdministrableProductDefinition.routeOfAdministration.targetSpecies.withdrawalPeriod.supportingInformation</sch:title>
    <sch:rule context="f:AdministrableProductDefinition/f:routeOfAdministration/f:targetSpecies/f:withdrawalPeriod/f:supportingInformation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
