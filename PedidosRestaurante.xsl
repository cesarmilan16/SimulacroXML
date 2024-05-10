<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head>
            <title>Lista de pedidos</title>
        </head>
        <body>
            <h1>Lista de pedidos</h1>
            <table border="1">
                <tr>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                    <th>Fecha del pedido</th>
                </tr>
                <xsl:for-each select="pedidos/pedido">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="descripcion"/></td>
                            <xsl:choose>
                                <xsl:when test="precio * cantidad &gt; 20">
                                        <td><b><xsl:value-of select="precio"/></b></td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td><xsl:value-of select="precio"/></td>
                                    </xsl:otherwise>
                            </xsl:choose>
                        <td><xsl:value-of select="cantidad"/></td>
                        <td><xsl:value-of select="fecha"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>