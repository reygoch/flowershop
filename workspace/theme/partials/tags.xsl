<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="tags">
	<ul class="tags menu hmenu">
		<xsl:for-each select="item">
			<li><a href="{$root}/flowers/?tags={@handle}"><xsl:value-of select="."/></a></li>
		</xsl:for-each>
	</ul>
</xsl:template>

</xsl:stylesheet>