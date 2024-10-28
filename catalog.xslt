<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>My CD Collection</h2>
  <xsl:if test="price &lt; 10"> 
  <table border="1">
    <tr bgcolor="#000FFF" >
      <th style="text-align:left">Title</th>
      <th style="text-align:left">Artist</th>
      <th style="text-align:left">Country</th>
      <th style="text-align:left">Price</th>
      <th style="text-align:left">Dot</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <!-- <xsl:for-each select="catalog/cd[country='USA']"> -->
    <!--<xsl:if test="price &lt; 10"> -->
   <!-- <xsl:sort select="price"/> -->

    

    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>