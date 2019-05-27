# Process for updating the Site Index



Check schema lines to make sure they are one of the following:

Version 1: (published on the website and stable/canonical for SI checking):  These have the filename si_ODD.rng 
```
<?xml-model href="https://digitalmitford.org/schemas/out/si_ODD.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
<?xml-model href="https://digitalmitford.org/schemas/out/si_ODD.rng" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>
```

Version 2: local for the GitHub repo and may respond more quickly if you have a slow internet connection:
Get this up to date with a `git pull`:

```
<?xml-model href="../schemas/out/si_ODD.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
<?xml-model href="../schemas/out/si_ODD.rng" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>

```

