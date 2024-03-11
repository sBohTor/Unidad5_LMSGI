<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Notas de Alumnos</title>
                <style type="text/css">
                    .sobresaliente { color: #0000FF; }
                    .notable { color: #0000CC; }
                    .bien { color: #000000; }
                    .suficiente { color: #FFA500; }
                    .suspenso { color: #FF0000; }
                    .td{ background-color: #c4c9ff;}
                    .tdSuperior{ background-color: #8d84ff;}
                </style>
            </head>
            <body>
                <div style="position: center; margin: auto; width: 50%;">
                    <table border="1">
                        <tr>
                            <th colspan="3" class="tdSuperior">Datos</th>
                            <th colspan="3" class="tdSuperior">Notas</th>
                        </tr>
                        <tr>
                            <th class="td">Nombre</th>
                            <th class="td">Apellidos</th>
                            <th class="td">Cuestionarios</th>
                            <th class="td">Tareas</th>
                            <th class="td">Examen</th>
                            <th class="td">Final</th>
                        </tr>
                        <xsl:apply-templates select="notas/alumno[@convocatoria='Junio']"/>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="alumno">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="apellidos"/></td>
            <td><xsl:value-of select="cuestionarios"/></td>
            <td><xsl:value-of select="tareas"/></td>
            <td><xsl:value-of select="examen"/></td>
            <td>
                <xsl:choose>
                    <xsl:when test="final >= 9">
                        <span class="sobresaliente">Sobresaliente</span>
                    </xsl:when>
                    <xsl:when test="final >= 7">
                        <span class="notable">Notable</span>
                    </xsl:when>
                    <xsl:when test="final >= 6">
                        <span class="bien">Bien</span>
                    </xsl:when>
                    <xsl:when test="final >= 5">
                        <span class="suficiente">Suficiente</span>
                    </xsl:when>
                    <xsl:otherwise>
                        <span class="suspenso">Suspenso</span>
                    </xsl:otherwise>
                </xsl:choose>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="matricula"/>

</xsl:stylesheet>
