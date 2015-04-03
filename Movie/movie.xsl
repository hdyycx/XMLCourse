<xsl:stylesheet 
   version="1.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml"
   >

   <xsl:output method="xml" indent="yes"/>
   
   <xsl:template match="movies">
      <html>
         <head>
        
      	 </head>
      <body>
		  <h2 align="center">Movies : </h2>
		  <xsl:apply-templates select="movie"/>
		  <div >
         <xsl:call-template name="backlink"/>
		  </div> 
      </body>
      </html>

   </xsl:template>
   
   <xsl:template name="moive" match="movie">
         <h4 align="center"><xsl:value-of select="name"/></h4>
			  <div style="width:300px">
			  
			  <div style="margin-left:100px">
			   电影名:<xsl:value-of select="name"/><br/>
               导演:<xsl:value-of select="director"/><br/>
               主演:<xsl:for-each select="actor"><xsl:value-of select="actor"/></xsl:for-each><br/>
               上映年份:<xsl:value-of select="year"/><br/>
               评分:<xsl:value-of select="score"/><br/>
               <xsl:element name="img">
                <xsl:attribute name="src">
                    <xsl:value-of select="./pic"/>
                </xsl:attribute>
                </xsl:element>
			   </div>
			  </div>
			   
               <hr/>
   </xsl:template>
   
   <xsl:template name="backlink">
      <div style="position: absolute; width: 54px; right: 20px; top: 1440px;
         text-align: center;">
         <a href="introduction.xml">Back to movie introduction</a>
      </div>
   </xsl:template>

</xsl:stylesheet>