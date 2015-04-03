<xsl:stylesheet
   version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml"
   >
   <xsl:output method="xml" />
   
   <xsl:template match="/">
	   <html>
					<head>
						<title><xsl:value-of select="//teamname" /></title>
						<link rel= "stylesheet" type= "text/css" href= "css/bootstrap.css" /> 
						<link rel= "stylesheet" type= "text/css" href= "css/common.css" /> 
					</head>
					<body style="margin:10;padding:10;">
					    <div class="container">
							<xsl:apply-templates/>
					    </div>
					    <xsl:call-template name="foot"/>
					</body>
		</html>
   </xsl:template>
   <xsl:template match="teaminfo">
	   <div class="row">
		   <div style="text-align:center; margin-left:auto; margin-right:auto;">
			   <img src="img/logo.png"/>
		   </div>
	   </div>
	   <div class="row title">
		   <div class="col-md-offset-2 col-md-1">
			   <span><xsl:value-of select="teamname"/></span>
		   </div>   
		   <div>
			   <span><xsl:value-of select="teamintro"/></span>
		   </div>
	   </div>
   </xsl:template>
   
   <xsl:template match="member">
	   <div class="row introBlock text">
		   <div class="col-md-4">
			    <xsl:element name="img">
					<xsl:attribute name="src">
						<xsl:value-of select="pic"/>
					</xsl:attribute>
					<xsl:attribute name="class">
						img-rounded
					</xsl:attribute>
                </xsl:element>
		   </div>
		   <div class="col-md-7">
			   <div class="row introBlock">
				    姓名：<xsl:value-of select="name"/>
			   </div>
			   <div class="row introBlock">
					学号：<xsl:value-of select="name/@Student_ID"/>
			   </div>
			   <div class="row introBlock"> 
					性别：<xsl:value-of select="name/@sex"/>
			   </div>
			   <div class="row introBlock">
					个人介绍：<xsl:value-of select="intro"/>
			   </div>
		   </div>
		   
		</div>
   </xsl:template>
   <xsl:template name="foot">
	   <div class="bg-primary footStyle">
		   <span>to be continue ......</span>
	   </div>
   </xsl:template>
   
</xsl:stylesheet>