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
                            <xsl:choose>
                                <xsl:when test="costoTotal &gt; 500.00">
                                        <td><b><xsl:value-of select="costoTotal"/></b></td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td><xsl:value-of select="costoTotal"/></td>
                                    </xsl:otherwise>
                            </xsl:choose>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>