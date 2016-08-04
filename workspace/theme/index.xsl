<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" omit-xml-declaration="yes" encoding="UTF-8" indent="no" />


<xsl:template match="/">
<html>
	<head>
		<meta charset="utf-8" />
		<title>Home - Flower Shop</title>
		
		<link rel="stylesheet" href="{$workspace}/theme/resources/css/index.css"/>
		<xsl:apply-templates select="*" mode="css"/>

		<script src="{$workspace}/theme/resources/js/jquery.js"></script>
		<xsl:apply-templates select="*" mode="js-head-position"/>
	</head>
	<body>
		<header id="header" class="header row">
			<div id="branding" class="branding col04">
				<img src="{$workspace}/theme/resources/img/logo.png" alt="Flower Shop" class="logo"/>
				<h1 class="siteName">Flower Shop</h1>
				<p class="siteSlogan">our flowers are the best!</p>
			</div>
			<xsl:apply-templates select="*" mode="menu"/>
		</header>
		
		<hr class="gridSep"/>

		<xsl:choose>
			<xsl:when test="//page-types/item = 'index'">
				<xsl:apply-templates />
			</xsl:when>
			<xsl:otherwise>
				<main id="main" class="main row">
					<xsl:apply-templates />
				</main>
			</xsl:otherwise>
		</xsl:choose>

		<hr class="gridSep"/>

		<footer id="footer" class="footer row">
			Copyright (c) <xsl:value-of select="$this-year"/>, All rights reserved!
		</footer>

		<xsl:apply-templates select="*" mode="js-footer-position"/>
	</body>
</html>
</xsl:template>

<xsl:template match="*" mode="css"></xsl:template>
<xsl:template match="*" mode="js-head-position"></xsl:template>
<xsl:template match="*" mode="js-footer-position"></xsl:template>

<xsl:include href="../theme/partials/menu.xsl"/>

</xsl:stylesheet>