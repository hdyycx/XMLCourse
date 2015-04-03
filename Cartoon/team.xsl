<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml"
   >

   <xsl:output method="xml" />
   
   <xsl:template match="info">
	<html>
		<head>
			<title>小组网站</title>
			<style>
			<link href="website.css" rel="stylesheet"></link>
			</style>
		</head>
		<body>
		<div><xsl:apply-templates  select="project"/></div>	
		<div><xsl:apply-templates  select="team"/></div>
		<div><xsl:apply-templates  select="members"/></div>		
		</body>
	</html>
 
	</xsl:template>
<xsl:template match="project">
	<div class="hm">
	<h1 id="kind-name"><xsl:value-of select="kind"/></h1>
	<div class="project-intro">
       <img src="{img}" alt="小组标志"/>
	   <h3><xsl:value-of select="introduce"/></h3>
	   <div id="project-name">
	   <h3><a href="#project-info"><xsl:value-of select="name"/></a></h3>
	   </div>
	</div>
	</div>
</xsl:template>
<xsl:template match="team">
	<div class="team-info">
		<h1><xsl:value-of select="introduce/key"/></h1>
		<div class="right">
				<img src="{teamimg/@src}" />
		</div>
		<div class="left">
			<xsl:for-each select="introduce/value/p">
			<p><xsl:value-of select="."/></p>
			</xsl:for-each>			
		</div>
	</div>
</xsl:template>

<xsl:template match="members">
	<h1 id="head"><xsl:value-of select="subject"/></h1>
    <div class="member-info">
	<xsl:for-each select="memberinfo">
	<tr>
		<td class="img"><img src="{img/@src}"/></td>
		<td class="text"><xsl:value-of select="name"/><br/>
		<xsl:value-of select="studentid"/><br/>
		</td>
		<td>
		<xsl:value-of select="introduce"/><br/>
		</td>
	</tr>
	</xsl:for-each>
	</div>
</xsl:template>
	
</xsl:stylesheet>
