<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head>
            <title>Lista de Reservas</title>
        </head>
        <body>
            <h1>Lista de Reservas</h1>
            <table border="1">
                <tr>
                    <th>Nombre cliente</th>
                    <th>Tipo de habitación</th>
                    <th>Fecha entrada</th>
                    <th>Fecha salida</th>
                    <th>Coste total</th>
                </tr>
                <xsl:for-each select="reservas/reserva">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="tipoHabitacion"/></td>
                        <td><xsl:value-of select="fechaEntrada"/></td>
                        <td><xsl:value-of select="fechaSalida"/></td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="costoTotal &gt; 500.00">
                                        <span style="font-weight: bold;"><xsl:value-of select="precio"/></span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="costoTotal"/>
                                    </xsl:otherwise>
                            </xsl:choose>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>