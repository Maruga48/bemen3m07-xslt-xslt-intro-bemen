<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="#000FFF">
      <th style="text-align:left">Title</th>
      <th style="text-align:left">Artist</th>
      <th style="text-align:left">Country</th>
      <th style="text-align:left">Price</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <!-- <xsl:if test="price &lt; 10">-->
    <xsl:if test="price &lt; 5">
    <!-- <xsl:for-each select="catalog/cd[country='USA']"> -->
    <!-- <xsl:sort select="artist -->
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
      <td><xsl:value-of select="country"/></td>
      <td><xsl:value-of select="price"/></td>
      <td style="text-align:left">&#10084;</td>
    </tr>
    </xsl:if>
    </xsl:for-each>
    <xsl:for-each select="catalog/cd">
    <!-- <xsl:if test="price &lt; 10">-->
    <xsl:if test="price &gt; 5">
    <!-- <xsl:for-each select="catalog/cd[country='USA']"> -->
    <!-- <xsl:sort select="artist -->
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
      <td><xsl:value-of select="country"/></td>
      <td><xsl:value-of select="price"/></td>
      <td style="text-align:left">&#128148;</td>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>