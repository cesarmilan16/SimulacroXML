<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head>
            <title>Lista de ventas</title>
        </head>
        <body>
            <h1>Lista de ventas</h1>
            <table border="1">
                <tr>
                    <th>Titulo</th>
                    <th>Autor</th>
                    <th>Genero</th>
                    <th>Precio unitario</th>
                    <th>Fecha de la transaccion</th>
                </tr>
                <xsl:for-each select="ventas/venta">
                    <tr>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="genero"/></td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="precio &gt; 5">
                                        <span style="font-weight: bold;"><xsl:value-of select="precio"/></span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="precio"/>
                                    </xsl:otherwise>
                            </xsl:choose>
                        </td>
                        <td><xsl:value-of select="fecha"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>