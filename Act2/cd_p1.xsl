<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Lista de CDs</h2>
                <table border="1">
                    <tr>
                        <th>Título del Álbum</th>
                        <th>Artista</th>
                        <th>Títulos de las Canciones</th>
                        <th>Sello Discográfico</th>
                        <th>Año de Publicación</th>
                    </tr>
                    <xsl:for-each select="CDS/cd">
                        <tr>
                            <td><xsl:value-of select="TituloAlbum"/></td>
                            <td><xsl:value-of select="Artista"/></td>
                            <td>
                                <xsl:for-each select="Canciones/Cancion">
                                    <xsl:value-of select="Titulo"/> - <xsl:value-of select="Tiempo"/><br/>
                                </xsl:for-each>
                            </td>
                            <td><xsl:value-of select="SelloDiscografico"/></td>
                            <td><xsl:value-of select="AnioPublicacion"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>