# How to update the site index (si.xml) for the Digital Mitford project

1. Begin by staging file(s) containing entries to be added in the Digital Mitford Site Index repo: `DM_SiteIndex` in the `si_Add_Staged` directory. 
1. At this point, you should alert Elisa and/or Lisa Wilson (using the Issues board on the `DM_SiteIndex` repo and pinging them at `@ebeshero` and/or `@lmwilson`) that you are starting work on the Site Index. NOTE: Only one person at a time should be altering site index files in the repo to prevent errors and merge conflicts. 
1. Make sure the proper SI ODD schema lines are associated with the file(s). These have the filename `si_ODD.rng` at the end of the file path, and always come in pairs (both are necessary for the schema to work). Check schema lines to make sure they are one of the following:
    * Version 1: (published on the website and stable/canonical for SI checking):  
```
<?xml-model href="https://digitalmitford.org/schemas/out/si_ODD.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
<?xml-model href="https://digitalmitford.org/schemas/out/si_ODD.rng" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>
```
    * Version 2: local for the GitHub repo and may respond more quickly if you have a slow internet connection:

```
<?xml-model href="../schemas/out/si_ODD.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
<?xml-model href="../schemas/out/si_ODD.rng" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>
```

3. Be sure you have up-to-date versions of all files in the `DM_SiteIndex` repo. 
    * Open your git bash shell, navigate to the `DM_SiteIndex` repo (using `cd` to change directories and `ls` to list the contents of a directory). 
    * When you arrive at the directory, type in `git pull` to pull in the up to date versions of all files onto your local computer. 

3. Next, open the files you want to work with in oXygen in side-by-side tile view. 
    * Open the file whose entries you wish to add to the SI.
    * Open the **current version of the SI** by using `File > Open URL` in oXygen, and type in: `https://digitalmitford.org/si.xml` to open the current version as published on our website. 
    * Save the published SI file locally inside `DM_SiteIndex/si_Full_IP`. This is the in-progress directory for editing the site index.
    * Tile editors next to each other in oXygen by going to `Window > Tile Editors Vertically`.  Now you have prepared your oXygen workspace. Be sure to click in the file in the window you want to use Find or the XPath window and navigate it. 



