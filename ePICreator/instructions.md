## Instructions

Create Xlsx file with each tab the information for the Resource like:

*    AdministrableProductDefinition
*    Substance
*    RegulatedAuthorization
*    Organization
*    ClinicalUseDefinition
*    Composition
*    Ingredient
*    MedicinalProductDefinition
*    ManufacturedItemDefinition
*    PackagedProductDefinition
*    Bundle

Then run the creator.py with 3 arguments:
* data_file = place where the xlsx is
* template_folder = folder of the templates
* output_folder = where to place the data created

example code:  
```python creator.py Humalog.xlsx templates/ ../input/fsh/examples/```

for creating all at the same time:
```python createAll.py . templates/ ../input/fsh/examples/```