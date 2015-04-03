<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml"
   >
	<xsl:output method="xml"/>
	
	<xsl:template match="catalog">
		<html>
			<head>
				<title>动漫摘要</title>
				<style>
					<link href="Cartoon2.0.css" rel="stylesheet"></link>
				</style>
			</head>
			<body>
				<div><xsl:apply-templates  select="project"/></div>
				<div><xsl:apply-templates  select="team"/></div>	
				<div><xsl:apply-templates  select="cartoon"/></div>		
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="project">
		<div class="hm">
		
		</div>
	</xsl:template>
	
	<xsl:template match="cartoon">
	<div class="blank">
	<h1></h1>
	</div>
	</xsl:template>
	
	<xsl:template match="cartoon">
		<div class="team-info">
			<h1><a href="#project-info"><xsl:value-of select="name"/></a></h1>
			<div class="right">
					<img src="{picture/@src}" />
			</div>
			<div class="left">
				<h3>作者：<xsl:value-of select="author/aname"/></h3>
				<xsl:for-each select="intrduce">
				<p class="roe3">简介：<xsl:value-of select="."/></p>
				</xsl:for-each>			
			</div>
		</div>
	</xsl:template>
	
	
	
</xsl:stylesheet>
