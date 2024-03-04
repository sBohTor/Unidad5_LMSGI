<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Canciones de Quevedo</h2>
                <table border="1">
                    <tr>
                        <th>Título de la Canción</th>
                        <th>Duración</th>
                    </tr>
                    <xsl:for-each select="CDS/cd[Artista='Quevedo']">
                        <xsl:for-each select="Canciones/Cancion">
                            <tr>
                                <td><xsl:value-of select="Titulo"/></td>
                                <td><xsl:value-of select="Tiempo"/></td>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>