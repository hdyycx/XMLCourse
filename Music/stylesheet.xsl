<xsl:stylesheet
   version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml"
   >
   <xsl:output method="xml" />
   
   <xsl:template match="/">
	   <html>
					<head>
						<title><xsl:value-of select="//title" /></title>
					</head>
					<body style="margin:0;padding:0;">
						<xsl:apply-templates/>
						<xsl:call-template name="foot"/>
					</body>
		</html>
   </xsl:template>
   <xsl:template match="teamMessage">
	   <div style="position:relative;display:block;background:#bdc3c7;text-align:center;">
		   <span style="font-size:40px;"><xsl:value-of select="title"/></span>
	   </div>
	   <div style="position:relative;display:block;background:#bdc3c7;text-align:center;border-top:5px inset #bdc3c7;">
		   <span style="font-size:20px;"><xsl:value-of select="producer"/></span>
	   </div>
		   
	   <div style="position:relative;display:block;background:#2980b9;text-align:center;border-top:5px inset #3498db;">
		   <span style="font-size:30px;"><xsl:value-of select="introduction"/></span>
	   </div>
	   <img src="images/background.png" style="width:100%;position:relative;display:block;" />
   </xsl:template>
   
   <xsl:template match="teamers">
	   <div style="position:relative;display:block;background:#C8C1C1;height:200px;border-top:5px inset #bdc3c7;">
		   <span style="float:left;margin-left:10%;margin-top:50px;">
			   our logo:<img src="images/logo.png" style="width:50px;height:50px;"/>
		   </span>
		   <table style="width:50%;margin-top:50px;margin-left:25%;text-align:center;font-size:20px;">
				<tr>
					<th>姓名</th>
					<th>性别</th>
					<th>学号</th>
				</tr>
			   <xsl:for-each select="teamer">
				   <tr>
					   <td><xsl:value-of select="name"/></td>
					   <td><xsl:value-of select="sex"/></td>
					   <td><xsl:value-of select="number"/></td>
					</tr>
			   </xsl:for-each>
		   </table>
		</div>
   </xsl:template>
   <xsl:template name="foot">
	   <div style="display:block;position:relative;background:gray;text-align:center;height:10%;padding:25px;">
		   <span style="font-size:20px;">请期待。。。</span>
	   </div>
   </xsl:template>
   
</xsl:stylesheet>