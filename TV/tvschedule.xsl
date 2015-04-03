<xsl:stylesheet 
   version="1.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml"
   >

   <xsl:output method="xml" indent="yes"/>
   
   <xsl:template match="tvschedule">
      <html>
         <head>
        
      	 </head>
      <body>
		  <h2 align="center">tvschedule : </h2>
		  <xsl:apply-templates select="tvschedule"/>
		  <div >
         <xsl:call-template name="backlink"/>
		  </div> 
      </body>
      </html>

   </xsl:template>
   
   <xsl:template name="tvschedule" match="tvschedule">
         <h4 align="center"><xsl:value-of select="name"/></h4>
			  <div style="width:300px">
			  
			  <div style="margin-left:100px">
			   电视频道:<xsl:value-of select="tvschedule"/><br/>
               频道类别:<xsl:value-of select="channel"/><br/>
               节目名称:<xsl:for-each select="title"><xsl:value-of select="title"/></xsl:for-each><br/>
               节目日期:<xsl:value-of select="date"/><br/>
               节目时间:<xsl:value-of select="time"/><br/>
               节目简介:<xsl:value-of select="description"/><br/>
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
         <a href="introduction.xml">Back to tvschedule introduction</a>
      </div>
   </xsl:template>

</xsl:stylesheet>