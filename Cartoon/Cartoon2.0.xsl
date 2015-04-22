<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" />
	<xsl:template match="catalog">
	<html>
		<head>
			<title>WE TEAM 动漫组</title>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<link href="ssimg/icon.ico" type='image/x-icon' rel="shortcut icon" />
			<link rel="stylesheet" type="text/css" href="Cartoon2.0.css" />
		</head>
		<body>
			<header id="header">
				<h1 id="project-name">CARTOON</h1>
				<div id="project-intro">
					<img src="img/group-icon.jpg"/>
					<h3>XML课程——动漫组</h3>
				</div>
			</header>
			<div id="header-footer">
				<h3><a href="#project-info">@孙森泓 @王秀</a></h3>
			</div>
			<article id="container">
				<xsl:apply-templates  select="cartoon"/>
			</article>
			<div id="copyright">
				<p>Copyright 2015 © WE TEAM 动漫组</p>
			</div>
		</body>
		</html>
	</xsl:template>
	

	
	<xsl:template match="cartoon">
	<section class="cartoon-info">
		<div class="left">
				<img class="img" src="{picture/@src}"/>
			</div>
			<div class="right">
				<h1><xsl:value-of select="name"/></h1>
				<p class="row3"><span><strong>作者：</strong></span><xsl:value-of select="author/aname"/></p>
				<p class="row3">
					<span><strong>类型：</strong></span>
					<xsl:for-each select="type/@typeInfo">
						<xsl:value-of select="."/>、
					</xsl:for-each>
				</p>
				<p class="row3"><span><strong>地区：</strong></span><xsl:value-of select="region/@regionInfo"/></p>
				<p class="intro">
					<span><strong>简介：</strong></span>
					<xsl:for-each select="intrduce">
						<xsl:value-of select="."/>
					</xsl:for-each>	
				</p>
			</div>	
	</section>
	</xsl:template>
		
	
	
	
</xsl:stylesheet>
