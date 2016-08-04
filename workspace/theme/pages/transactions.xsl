<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="data">
	<div class="col12">
		<canvas id="report" class="report"></canvas>
	</div>

	<xsl:apply-templates select="transactions/entry"/>
	
	<footer id="pagination" class="pagination col12">
		<xsl:apply-templates select="transactions/pagination"/>
	</footer>
</xsl:template>

<xsl:template match="entry">
	<xsl:variable name="cid" select="flower/item/@id" />
	<div class="transaction col12 row">
		<div class="date col04"><time><xsl:value-of select="date"/></time></div>
		<div class="amount col04">
			<span>$ <xsl:value-of select="//flower-prices/entry[@id = $cid]/price"/></span>
		</div>
		<div class="flower col04"><span><xsl:value-of select="flower/item"/></span></div>
	</div>
</xsl:template>

<!-- required CSS and JS -->
<xsl:template match="*" mode="css">
</xsl:template>

<xsl:template match="*" mode="js-head-position">
	<script src="{$workspace}/theme/resources/js/chart.js"></script>
</xsl:template>

<xsl:template match="*" mode="js-footer-position">
	<script>let root = '<xsl:value-of select="$root"/>';</script>
	<script src="{$workspace}/theme/resources/js/transactions.js"></script>
</xsl:template>

<!-- includes -->
<xsl:include href="../partials/pagination.xsl"/>
</xsl:stylesheet>