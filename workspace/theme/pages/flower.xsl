<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="data">
	<xsl:apply-templates select="flower/entry"/>
</xsl:template>

<xsl:template match="flower/entry">
	<article id="flower" class="flower col12 row">
		<div class="content col08 push04">
			<h1 class="flowerName"><xsl:value-of select="name"/></h1>
			<div class="price">price : $ <xsl:value-of select="price"/></div>
			
			<xsl:copy-of select="description/node()"/>
			
			<xsl:apply-templates select="tags" />
		</div>

		<xsl:if test="gallery">
		<div class="gallery col04 pull08 row">
			<div class="main-image col12">
				<xsl:apply-templates select="gallery/file[1]" mode="main-image"/>
			</div>
			<xsl:apply-templates select="gallery/file[position() > 1]" mode="gallery-image"/>
		</div>
		</xsl:if>
	</article>
</xsl:template>

<xsl:template match="gallery/file" mode="main-image">
	<a href="{$root}/image/gallery-image{@path}/{filename}" data-lightbox="gallery">
		<img src="{$root}/image/main-image{@path}/{filename}" alt="{filename}"/>
	</a>
</xsl:template>

<xsl:template match="gallery/file" mode="gallery-image">
	<div class="gallery-image col04">
	<a href="{$root}/image/gallery-image{@path}/{filename}" data-lightbox="gallery">
		<img src="{$root}/image/gallery-thumb{@path}/{filename}" alt="{filename}"/>
	</a>
	</div>
</xsl:template>

<!-- required CSS and JS -->
<xsl:template match="*" mode="css">
	<link rel="stylesheet" href="{$workspace}/theme/resources/css/lightbox.css"/>
</xsl:template>

<xsl:template match="*" mode="js-head-position">
</xsl:template>

<xsl:template match="*" mode="js-footer-position">
	<script src="{$workspace}/theme/resources/js/lightbox.js"></script>
</xsl:template>

<!-- includes -->
<xsl:include href="../partials/tags.xsl"/>
</xsl:stylesheet>