## Staging and posting the updated Site Index

When saving files in this directory, they are understood to be ready to post on the Digital Mitford website and release into Sharepoint. Be sure to 
* Check and if necessary change the schema line on this SI file to point to the web URL for the current Site Index schema. The schema lines should read: 
```
<?xml-model href="https://digitalmitford.org/schemas/out/si_ODD.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
<?xml-model href="https://digitalmitford.org/schemas/out/si_ODD.rng" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>
```
* Update the ODD-generated RNG XML-syntax schema for this SI on the Digital Mitford website (in the schemas folder > out).
