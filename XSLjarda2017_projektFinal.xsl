<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
      <html>
         <head>
            <title>Jarda Tesař - Semestrální projekt XML</title>
            <style>body{font-family: Arial; font-size: 10px;} h2, table{padding: 2px; } h2{margin:8px;} h1{padding: 4px; background-color: blue;} td td {padding: 2px 8px;}
        td td:first-child{border-right: 1px solid #ccc; background-color: purple; font-weight: bold;}</style>
         </head>
         <body>
            <table>
               <xsl:for-each select="film-app/zanry/valecna">
                  <tr>
                     <td colspan="1">
                        <xsl:for-each select="film[rok = 2008]"><!-- Ošetření že žádný film nemá rok 0 může se nastavit určitý výběr pro specifičtější podmínky hledání-->
                           <xsl:sort select="rok" order="descending" />
                           <table style="background-color: red; border: 2px solid #ddd;">
                              <tr>
                                 <td>Žánr:</td>
                                 <td>
                                    <xsl:value-of select="zanr" />
                                 </td>
                              </tr>
                              <tr>
                                 <td>Název:</td>
                                 <td>
                                    <xsl:value-of select="nazev" />
                                 </td>
                              </tr>
                              <tr>
                                 <td>Rok:</td>
                                 <td>
                                    <xsl:value-of select="rok" />
                                 </td>
                              </tr>
                              <tr>
                                 <td>Délka:</td>
                                 <td>
                                    <xsl:value-of select="delka" />
                                 </td>
                              </tr>
                              <tr>
                                 <td>Jazyk:</td>
                                 <td>
                                    <xsl:value-of select="jazyk" />
                                 </td>
                              </tr>
                              <tr>
                                 <td>Herec:</td>
                                 <td>
                                    <xsl:value-of select="herec" />
                                 </td>
                              </tr>
                              <tr>
                                 <td>Dostupné na dvd:</td>
                                 <xsl:choose>
                                    <xsl:when test="pujceni = 1">
                                       <td>Dostupné</td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <td>Není</td>
                                    </xsl:otherwise>
                                 </xsl:choose>
                              </tr>
                              <tr>
                                 <td>Kino:</td>
                                 <xsl:choose>
                                    <xsl:when test="kino = 1">
                                       <td>Ano</td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <td>Ne</td>
                                    </xsl:otherwise>
                                 </xsl:choose>
                              </tr>
                              <tr>
                                 <td>Titulky:</td>
                                 <xsl:choose>
                                    <xsl:when test="titulky = 1">
                                       <td>Dostupné</td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <td>Nejsou</td>
                                    </xsl:otherwise>
                                 </xsl:choose>
                              </tr>
                           </table>
                        </xsl:for-each>
                     </td>
                  </tr>
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>