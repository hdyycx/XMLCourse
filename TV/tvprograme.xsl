<xsl:stylesheet 
   version="1.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml"
   >

   <xsl:output method="xml" indent="yes"/>
   
   <xsl:template match="tv">
      <html>
         <head>
        
      	 </head>
      <body>
		  <h2 align="center">TVPrograms: </h2>
		  <xsl:apply-templates select="TVPrograme"/>
      </body>
      </html>

   </xsl:template>
   
   <xsl:template name="TVPrograme" match="TVPrograme">
         <h4 align="center"><xsl:value-of select="name"/></h4>
			  <div style="width:400px">
			  
			  <div style="center">
			     节目名称<xsl:value-of select="name"/><br/>
               team:<xsl:value-of select="teamname"/><br/>
               赛区:<xsl:value-of select="region"/><br/>
               year:<xsl:value-of select="year"/><br/>
               战队介绍:<xsl:value-of select="intrduce"/><br/>
               <xsl:element name="img">
                <xsl:attribute name="src">
                    <xsl:value-of select="picture"/>
                </xsl:attribute>
                </xsl:element>
			   </div>
			  </div>
			   
               <hr/>
   </xsl:template>
   
   <xsl:template name="backlink">
      <div style="position: absolute; width: 54px; right: 20px; top: 1440px;
         text-align: center;">
         <a href="introduction.xml">Back to TVProgramme introduction</a>
      </div>
   </xsl:template>

</xsl:stylesheet>