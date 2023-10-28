<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Elenco Strutture Ricettive</title>
      </head>
      <body>
        <h1>Elenco Strutture Ricettive</h1>
        <table border="1">
          <tr>
            <th>Nome</th>
            <th>Tipologia</th>
            <th>Indirizzo</th>
            <th>Telefono</th>
            <th>Email</th>
          </tr>
          <xsl:apply-templates select="righe/riga"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="riga">
    <tr>
      <td><xsl:value-of select="nome"/></td>
      <td><xsl:value-of select="tipologia"/></td>
      <td><xsl:value-of select="indirizzo"/></td>
      <td><xsl:value-of select="telefono"/></td>
      <td><a href="mailto:{indirizzo_posta_elettronica}"><xsl:value-of select="indirizzo_posta_elettronica"/></a></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
