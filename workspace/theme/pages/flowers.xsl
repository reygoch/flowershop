<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="data">
	<form action="" class="col12 row" id="filter">
		<div class="col04">
			<select name="tags[]" multiple="true" id="tags">
				<xsl:for-each select="tags/entry/name">
					<option value="{@handle}">
						<xsl:if test="contains($current-query-string, @handle)">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:value-of select="."/>
					</option>
				</xsl:for-each>
			</select>
		</div>
		<div class="col08">
			<input type="submit"/>
		</div>
	</form>

	<div class="col12 row">
		<xsl:apply-templates select="flowers/entry"/>
	</div>
	<footer id="pagination" class="pagination col12">
		<xsl:apply-templates select="flowers/pagination"/>
	</footer>
</xsl:template>

<!-- required CSS and JS -->
<xsl:template match="*" mode="css">
	<link rel="stylesheet" href="{$workspace}/theme/resources/css/selectize.css"/>
</xsl:template>

<xsl:template match="*" mode="js-head-position">
	<script src="{$workspace}/theme/resources/js/selectize.js"></script>
</xsl:template>

<xsl:template match="*" mode="js-footer-position">
	<script src="{$workspace}/theme/resources/js/flowers.js"></script>
</xsl:template>

<!-- includes -->
<xsl:include href="../partials/pagination.xsl"/>
<xsl:include href="../partials/flower-preview.xsl"/>

</xsl:stylesheet>