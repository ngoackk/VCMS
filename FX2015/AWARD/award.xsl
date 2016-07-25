<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" />
  <xsl:template match="/">
    <link rel="stylesheet" type="text/css" href="award.css"/>
    <html>
      <body>

        <center>
          <table border="0" cellspacing="1" cellpadding="0"  class="tabClass">
            <tr class="headder">
              <td align="center">Năm</td>
              <td align="center">Giải thưởng</td>
              <td align="center">Cơ quan trao tặng</td>
            </tr>

            <xsl:for-each select="AwardList/year">
            <tr class="yyClass">
              <td align="center" >


                <xsl:value-of select="@yy" />

              </td>
              
              <td align="left" valign="middle" >
                
                
                <xsl:for-each select="award">
                

                  <table cellspacing="1" cellpadding="1" width="100%">
                    <tr>
                      <td valign="top" align="center">
                        <div class="divImg">
                          <img width="13px">
                            <xsl:attribute name="src">
                              <xsl:value-of select="@img"/>
                            </xsl:attribute>
                          </img>
                        </div>
                      </td>
                      <td valign="top" align="left">
                        <div class="divAwardName">
                        <xsl:value-of select="@awname"/>
                        </div>
                      </td>
                    </tr>
                  </table>
                
              </xsl:for-each>

          </td>
              <td align="center" valign="top" class="tabbackGround">
                <xsl:for-each select="award">
                  <table cellspacing="1" cellpadding="1" width="100%">
                    <tr>
                      <td valign="middle" >
                        <div class="divCorp">

                          <xsl:value-of select="@corp"/>
                          
                        </div>

                      </td>
                    </tr>
                  </table>
                </xsl:for-each>

              </td>
            </tr>
            </xsl:for-each>
          </table>

        </center>
      </body>
    </html>
  </xsl:template>

  
</xsl:stylesheet>