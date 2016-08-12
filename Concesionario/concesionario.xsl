<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : concesionario.xsl
    Created on : 12 de agosto de 2016, 03:54 PM
    Author     : aux10
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Concesionario</title>
                <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
            </head>
            <body>
                <div class="container">
                    <h1>Mi super lista de deseos</h1>
                    <table class="table table-condensed table-hover table-bordered">
                        <tr bgcolor="lightblue">
                            <td>Modelo</td>
                            <td>Marca</td>
                            <td>Motor</td>
                            <td>Potencia</td>
                            <td>Valor</td>
                            <td>Imagen</td>
                        </tr>
                        <xsl:for-each select="concesionario/carro">
                            <tr>
                                <td>
                                    <xsl:value-of select="modelo"/>
                                </td>
                                <td>
                                    <xsl:value-of select="marca"/>
                                </td>
                                <td>
                                    <xsl:value-of select="datosTecnicos/motor"/>
                                </td>
                                <td>
                                    <xsl:value-of select="datosTecnicos/PotenciaMaxima"/>
                                </td>
                                <td>
                                    <xsl:value-of select="valor"/>
                                </td>
                                <td>
                                    <img width="150" height="100">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="imagen"/>
                                        </xsl:attribute>
                                    </img>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
