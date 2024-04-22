<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head>
            <title>Lista de Transacciones</title>
        </head>
        <body>
            <h1>Lista de Transacciones</h1>
            <table border="1">
                <tr>
                    <th>Titulo</th>
                    <th>Artista</th>
                    <th>Genero</th>
                    <th>Precio unitario</th>
                    <th>Fecha de la transaccion</th>
                </tr>
                <xsl:for-each select="transacciones/registro">
                    <tr>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="genero"/></td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="precio &lt; 1">
                                        <span style="font-weight: bold;"><xsl:value-of select="precio"/></span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="precio"/>
                                    </xsl:otherwise>
                            </xsl:choose>
                        </td>
                        <td><xsl:value-of select="fechaTransaccion"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>