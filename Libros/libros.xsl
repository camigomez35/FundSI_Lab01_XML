<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : libros.xsl
    Created on : 12 de agosto de 2016, 02:53 PM
    Author     : aux10
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" encoding="UTF-8" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Mis libros</title>
                <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
            </head>
            <body>
                <div class="container">
                    <h1>Mis libros</h1>
                    <table class="table table-condensed table-hover">
                        <tr bgcolor="lightblue">
                            <td>Título</td>
                            <td>Autor</td>
                            <td>ISBN</td>
                            <td>Año de Publicación</td>
                        </tr>
                        <xsl:for-each select="libros/libro">
                            <tr>
                                <td>
                                    <xsl:value-of select="titulo"/>
                                </td>
                                <td>
                                    <xsl:value-of select="autor"/>
                                </td>
                                <td>
                                    <xsl:value-of select="ISBN"/>
                                </td>
                                <td>
                                    <xsl:value-of select="año"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
