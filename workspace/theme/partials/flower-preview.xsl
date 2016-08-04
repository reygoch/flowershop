<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="entry">
	<div class="flower-preview col04 row">
		<div class="image col04">
			<xsl:choose>
				<xsl:when test="gallery">
					<xsl:apply-templates select="gallery/file[1]"/>
				</xsl:when>
				<xsl:otherwise>
					<img src="{$workspace}/theme/resources/img/default-image-preview.png" alt="{name}"/>
				</xsl:otherwise>
			</xsl:choose>
		</div>
		<div class="content col08">
			<h3 class="flowerName">
				<a href="{$root}/flower/{name/@handle}"><xsl:value-of select="name"/></a>
			</h3>
			<div class="price">price : $ <xsl:value-of select="price"/></div>
			<xsl:apply-templates select="tags" />
		</div>
	</div>
</xsl:template>

<xsl:template match="gallery/file">
	<img src="{$root}/image/preview{@path}/{filename}" alt="{../../name}"/>
</xsl:template>

<xsl:include href="../partials/tags.xsl"/>

</xsl:stylesheet>