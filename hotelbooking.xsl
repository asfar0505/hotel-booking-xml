<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>HOTELROOM LIST</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>roomtype</th>
        <th>bed</th>
        <th>price</th>

      </tr>
      <xsl:for-each select="hotelbooking/room">
      <xsl:sort select="roomtype"/>
      <tr>
        <td><xsl:value-of select="roomtype"/></td>
        <td><xsl:value-of select="bed"/></td>
        <td><xsl:value-of select="price"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

