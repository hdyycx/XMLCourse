<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-ie6.css"/>
			<head>
				<title>music小组网站作业</title>
			</head>
			<body>
				
				
				<div>
					<table class="tablesorter table table-bordered table-striped">
						<thead>
							<tr>
								<th>歌曲列表</th>
							</tr>
							<tr>
								<th>歌名</th>
								<th>歌手</th>
								<th>分类</th>
								<th>歌曲</th>
							</tr>
						</thead>
						<tbody>
							<xsl:for-each select="music/songlist/song">
								<tr>
								<td><xsl:value-of select="songname"/></td>
								<td><xsl:value-of select="songsinger"/></td>
								<td><xsl:value-of select="songsort"/></td>
								<td><xsl:value-of select="songurl"/></td>
								</tr>
							</xsl:for-each>
						</tbody>
					</table>
				</div>
				<div>
					<table class="tablesorter table table-bordered table-striped">
						<thead>
							<tr>
								<th>歌手列表</th>
							</tr>
							<tr>
								<th>歌手头像</th>
								<th>歌手名</th>
								<th>歌手信息</th>
								<th>歌手分类</th>
								
							</tr>
						</thead>
						<tbody>
							<xsl:for-each select="music/singerlist/singer">
								<tr>
								<td><xsl:value-of select="singerpic"/></td>
								<td><xsl:value-of select="singername"/></td>
								<td><xsl:value-of select="singerinfo"/></td>
								<td><xsl:value-of select="singersort"/></td>
								</tr>
							</xsl:for-each>
						</tbody>
					</table>
				</div>
				<div>
					<table class="tablesorter table table-bordered table-striped">
						<thead>
							<tr>
								<th>专辑列表</th>
							</tr>
							<tr>
								<th>专辑封面</th>
								<th>专辑名</th>
								<th>专辑信息</th>
								
								
							</tr>
						</thead>
						<tbody>
							<xsl:for-each select="music/albumlist/album">
								<tr>
								<td><xsl:value-of select="albumpic"/></td>
								<td><xsl:value-of select="albumname"/></td>
								<td><xsl:value-of select="albuminfo"/></td>
								</tr>
							</xsl:for-each>
						</tbody>
					</table>
				</div>
				</body>
		</html>
	</xsl:template>	
</xsl:stylesheet>
