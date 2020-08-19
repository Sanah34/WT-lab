<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/Travels">
  <html>
  <body>
  <h2>Discounts Available</h2>
  <table border="1">
    <tr>
      <th>CountryName</th>
      <th>Title</th>
      <th>Discount</th>
       <th>Price</th>
       <th>Stay</th>
    </tr>
    <xsl:for-each select="Address">
      <tr>
        <td><xsl:value-of select="CountryName"/></td>
        <td><xsl:value-of select="Title"/></td>
        <td><xsl:value-of select="Discount"/></td>
        <td><xsl:value-of select="Price"/></td>
        <td><xsl:value-of select="Stay"/></td>
      </tr>
    </xsl:for-each>
  </table>
    <xsl:value-of select="description"/>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>