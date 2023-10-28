<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Elenco Strutture Ricettive</title>
        <style type="text/css">
          body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
          }
          h1 {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 15px;
            margin: 0;
          }
          table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            border: 2px solid #333;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.1);
          }
          th, td {
            padding: 15px;
            text-align: left;
          }
          th {
            background-color: #333;
            color: #fff;
          }
          tr:nth-child(even) {
            background-color: #f2f2f2;
          }
          tr:hover {
            background-color: #ddd;
          }
          a {
            color: #007BFF;
            text-decoration: none;
          }
          a:hover {
            text-decoration: underline;
          }
        </style>
      </head>
      <body>
        <h1>Elenco Strutture Ricettive</h1>
        <table>
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