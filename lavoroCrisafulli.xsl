<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>   

<xsl:template match="/">
    <html>
        <head>
            <title>Elenco Luoghi</title>
            <style>
                .luogo {
                    border: 1px solid #000;
                    margin: 10px;
                    padding: 10px;
                }
            </style>
        </head>
        <body>
            <h1>Elenco Luoghi</h1>
            <xsl:for-each select="righe/riga">
                <div class="luogo">
                    <p><strong>Comune:</strong> <xsl:value-of select="comune"/></p>
                    <p><strong>Provincia:</strong> <xsl:value-of select="provincia"/></p>
                    <p><strong>Regione:</strong> <xsl:value-of select="regione"/></p>
                    <p><strong>Categoria:</strong> <xsl:value-of select="categoria"/></p>
                    <p><strong>Tipologia:</strong> <xsl:value-of select="tipologia"/></p>
                    <p><strong>Nome:</strong> <xsl:value-of select="nome"/></p>
                    <p><strong>Indirizzo:</strong> <xsl:value-of select="indirizzo"/></p>
                    <p><strong>Sigla Provincia:</strong> <xsl:value-of select="sigla_provincia"/></p>
                    <p><strong>Telefono:</strong> <xsl:value-of select="telefono"/></p>
                    <p><strong>Email:</strong> <xsl:value-of select="indirizzo_posta_elettronica"/></p>
                    <p><strong>Codice:</strong> <xsl:value-of select="codice"/></p>
                    <p><strong>Longitudine:</strong> <xsl:value-of select="longitudine"/></p>
                    <p><strong>Latitudine:</strong> <xsl:value-of select="latitudine"/></p>
                    <p><strong>Classe:</strong> <xsl:value-of select="classe/@nome"/></p>
                </div>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
