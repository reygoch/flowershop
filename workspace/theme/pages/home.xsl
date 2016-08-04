<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="data">
	<section id="slider" class="slider row">
		<div class="col12">
			<div id="slides">
				<ul>
					<xsl:for-each select="home-slider/entry/slide">
						<li>
							<img src="{$root}/image/slider{@path}/{filename}" alt="{filename}"/>
						</li>	
					</xsl:for-each>
				</ul>
			</div>
		</div>
	</section>
	
	<hr class="gridSep"/>

	<section id="featured" class="featured row">
		<xsl:apply-templates select="featured-flowers/entry" />
	</section>
</xsl:template>

<!-- required CSS and JS -->
<xsl:template match="*" mode="css">
	<link rel="stylesheet" href="{$workspace}/theme/resources/css/unslider.css"/>
</xsl:template>

<xsl:template match="*" mode="js-head-position">
	<script src="{$workspace}/theme/resources/js/unslider.js"></script>
</xsl:template>

<xsl:template match="*" mode="js-footer-position">
	<script src="{$workspace}/theme/resources/js/home.js"></script>
</xsl:template>

<!-- includes -->
<xsl:include href="../partials/flower-preview.xsl"/>

</xsl:stylesheet>