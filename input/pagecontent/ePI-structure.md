### ePI Structure

Summary of Product Characteristics (SmPC): A document describing the properties and the officially approved conditions of use of a medicine. Summaries of product characteristics form the basis of information for healthcare professionals on how to use the medicine safely and effectively. Abbreviated as SmPC. 


### Sections Description
#### Bundle
The Bundle is a container that gathers together a collection of resources into a single instance. The contained resources in the Bundle can be interpreted in two ways:

1. As a logical document: the bundle of contained resources is a single instance and can only be interpreted, changed or viewed as a whole. For example, the Bundle represents version 3 of a Package Leaflet or version 2 of a SmPC.

2. As individual resources: Certain resoureces exist independently outside the Bundle and outside of the logical document. For example, the Medicinal Product Definition resource lives both as part of the logical document and as an independent resource. 



#### Composition
The Composition defines the basic structure and the human readable narrative content for the ePI document. For example, encoded section headings; narrative text (paragraphs, sentences); tables; and bulleted lists. The Composition taggs the language of the narrative content

All narrative content is in XHTML fragment with HTML 4.0 standard formatting ([Refer to Narrative section](http://build.fhir.org/narrative.html#xhtml) of the FHIR specification for exceptions and exclusions regarding the HTML 4.0 standard). 

##### Summary of Product Characteristics



##### Patient Information Leaflet

#### Binary


#### List
The list resource references other resources. In this context, the List contains:
1. Narrative description of the medicinal products it contains
2. An ordered collection of cross-references to the Medicinal Product Definition resources that the ePI document is about. The List is dynamic since the cross-references are added, removed or changed over time.




#### Organization



#### Medicinal Product Definition


