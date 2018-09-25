<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"   xpath-default-namespace="http://www.tei-c.org/ns/1.0" 
   xmlns="http://www.w3.org/1999/xhtml"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
<xsl:template match="/">
    <html>
        <head><title>Occupations in the Digital Mitford Site Index</title>
            <link rel="stylesheet" type="text/css" href="local.css" />
        </head>
        <body>
            <h1>Occupations in the Digital Mitford Site Index</h1>  
            <p>These values are extracted from all person elements except those representing the editing team.</p>
          <table>
              <xsl:variable name="tree" select="." as="node()"/>
              <xsl:for-each select="distinct-values(//occupation[not(ancestor::div[@type='Mitford_Team']) and not(affiliation)])">
                  <xsl:sort select="count($tree//occupation[. = current()])" order="descending"/>
  <tr>
      <td><xsl:value-of select="position()"/></td>
      <td><xsl:value-of select="current()"/></td><td>Count: <xsl:value-of select="count($tree//occupation[. = current()])"/></td>
      <td>Who: <xsl:value-of select="string-join($tree//person[descendant::occupation[. = current()]]/persName[1]/normalize-space(), ', ')"/></td>
      <td><xsl:if test="$tree//person[descendant::occupation[. = current()]]//roleName">roleNames: <xsl:value-of select="string-join($tree//person[descendant::occupation[. = current()]]//roleName/normalize-space(), ', ')"/></xsl:if></td>
      
  </tr>                
                  
                  
              </xsl:for-each>
              
          </table>
          
          
        </body>
        
    </html>

</xsl:template>
</xsl:stylesheet>