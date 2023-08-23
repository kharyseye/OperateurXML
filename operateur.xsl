<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:template match="/">
      <html>
          <head></head>
          <body>
              <xsl:for-each select="/operateur/client">
                  <ul>
                      <li>Nom Client : <xsl:value-of select="@nom"/></li>
                  </ul>
                  <table width="80%" border="1">
                      <tr>
                          <th>Numero</th><th>Date_Abonnement</th><th>Type</th><th>Total Facture</th>
                      </tr>
                      <xsl:for-each select="abonnement">
                          <tr>
                              <td><xsl:value-of select="@num"></xsl:value-of></td>
                              <td><xsl:value-of select="@dateAb"></xsl:value-of></td>
                              <td><xsl:value-of select="@type"></xsl:value-of></td>
                              <td><xsl:value-of select="sum(facture/@montant)"></xsl:value-of></td>
                          </tr>
                      </xsl:for-each>
                  </table>
              </xsl:for-each>
              
          </body>
      </html>
      
  </xsl:template>   
</xsl:stylesheet>