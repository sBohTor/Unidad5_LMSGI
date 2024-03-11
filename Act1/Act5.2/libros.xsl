<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca Personal </h1>
                <table>
                    <tr bgcolor="#888888">
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Precio</th>
                        <th>ISBN</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                    <xsl:sort select="precio" data-type="number" order="ascending"/>
                        <xsl:variable name="totalLibros" select="count(libreria/libro)" />
                        <xsl:for-each select="libreria/libro">
                            <xsl:if test="position() = $totalLibros">
                                <tr>
                                    <td>
                                        <xsl:value-of select="titulo" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="autor" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="precio" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="isbn" />
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>