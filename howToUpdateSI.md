# How to update the site index (si.xml) for the Digital Mitford project

1. Begin by staging file(s) containing entries to be added in the Digital Mitford Site Index repo: `DM_SiteIndex` in the `si_Add_Staged` directory. 
1. At this point, you should alert Elisa and/or Lisa Wilson (using the Issues board on the `DM_SiteIndex` repo and pinging them at `@ebeshero` and/or `@lmwilson`) that you are starting work on the Site Index. NOTE: Only one person at a time should be altering site index files in the repo to prevent errors and merge conflicts. 
1. Make sure the proper SI ODD schema lines are associated with the file(s). These have the filename `si_ODD.rng` at the end of the file path, and always come in pairs (both are necessary for the schema to work). Check schema lines to make sure they are one of the following:
**SI schema lines, Version 1:** (published on the website and stable/canonical for SI checking):
  
```
<?xml-model href="https://digitalmitford.org/schemas/out/si_ODD.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
<?xml-model href="https://digitalmitford.org/schemas/out/si_ODD.rng" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>
```


**SI schema lines, Version 2:** local for the GitHub repo and may respond more quickly if you have a slow internet connection:

```
<?xml-model href="../schemas/out/si_ODD.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
<?xml-model href="../schemas/out/si_ODD.rng" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>
```

4. Be sure you have up-to-date versions of all files in the `DM_SiteIndex` repo. 
    * Open your git bash shell, navigate to the `DM_SiteIndex` repo (using `cd` to change directories and `ls` to list the contents of a directory). 
    * When you arrive at the directory, type in `git pull` to pull in the up to date versions of all files onto your local computer. 

5. Next, open the files you want to work with in oXygen in side-by-side tile view. 
    * Open the file whose entries you wish to add to the SI.
    * Open the **current version of the SI** by using `File > Open URL` in oXygen, and type in: `https://digitalmitford.org/si.xml` to open the current version as published on our website. 
    * Save the published SI file locally inside `DM_SiteIndex/si_Full_IP` as `si-local.xml`. This is the in-progress directory for editing the site index. Always do your editing in `si-local.xml`. 
    * Tile editors next to each other in oXygen by going to `Window > Tile Editors Vertically`.  Now you have prepared your oXygen workspace. Be sure to click in the file in the window you want to use Find or the XPath window and navigate it. 

You will have two different kinds of SI alterations to make:
a. edits to existing entries
b. entirely new entries to add
It may not always be clear which of these are you are working with. Always search the full SI carefully to be sure with a proposed “new” entry is really new. Here are some search tips:
    * Search for a person by checking for the first few letters of the surname as an xml:id value. For example, if the surname is Dagwood, try searching with: `="Dag` This brings up any xml:ids beginning with Dag
    * Try just `Dag` in the Find window
    * Try an XPath in the Window, on `//surname[contains(., 'Dag')]`
    * Try searching for parts of names or parts of titles, etc.

In the process of editing the site index, you may locate duplicate entries there. When that happens: 
1. Record the duplicate `@xml:id`s, and the duplicate entry names/titles/etc in the current SI file. 
2. Write an Issue on the `DM_SiteIndex` web repo pinging `@ebeshero` about these, indicating the conflicting `@xml:id`s . She will check to see which of these are being referenced in project files and help resolve which is the best for us to keep. Wait for her response before finalizing the newly edited version of the SI. (You can keep going in revising and adding new entries, but leave a note for yourself to go back and resolve the issue with the duplicate entries entries.)
3. When ready to resolve the duplicate entries, carefully(!) review their code. Each entry may contain valuable information that is absent in the other entry. Be sure to preserve the distinct information from each entry before eliminating an entry in the `si-local.xml` file. 

