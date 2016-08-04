<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="pagination">
	<xsl:variable name="base-url">
		<xsl:value-of select="$root"/>/<xsl:value-of select="$root-page"/>
	</xsl:variable>

	<xsl:variable name="qstring">
		<xsl:if test="//current-query-string">
		?<xsl:value-of select="//current-query-string" disable-output-escaping="yes"/>
		</xsl:if>
	</xsl:variable>

	<ul class="menu hmenu">
		<!-- previous page -->
		<xsl:choose>
			<xsl:when test="@current-page - 1 >= 1">
				<li><a href="{$base-url}/{@current-page - 1}{$qstring}">Previous</a></li>
			</xsl:when>
			<xsl:otherwise>
				<li><span>Previous</span></li>
			</xsl:otherwise>
		</xsl:choose>
		
		<!-- -2 pages -->
		<xsl:if test="@current-page - 2 >= 2 and @current-page = @total-pages">
			<li>
				<a href="{$base-url}/{@current-page - 2}{$qstring}">
					<xsl:value-of select="@current-page - 2"/>
				</a>
			</li>
		</xsl:if>

		<!-- -1 pages -->
		<xsl:if test="@current-page - 1 >= 1">
			<li>
				<a href="{$base-url}/{@current-page - 1}{$qstring}">
					<xsl:value-of select="@current-page - 1"/>
				</a>
			</li>
		</xsl:if>

		<!-- current page -->
		<li><span><xsl:value-of select="@current-page"/></span></li>

		<!-- +1 pages -->
		<xsl:if test="not(@current-page + 1 > @total-pages)">
			<li>
				<a href="{$base-url}/{@current-page + 1}{$qstring}">
					<xsl:value-of select="@current-page + 1"/>
				</a>
			</li>
		</xsl:if>

		<!-- +2 pages -->
		<xsl:if test="not(@current-page + 2 > @total-pages - 2) and (@current-page = 1)">
			<li>
				<a href="{$base-url}/{@current-page + 2}{$qstring}">
					<xsl:value-of select="@current-page + 2"/>
				</a>
			</li>
		</xsl:if>

		<!-- next page -->
		<xsl:choose>
			<xsl:when test="not(@current-page + 1 > @total-pages)">
				<li><a href="{$base-url}/{@current-page + 1}{$qstring}">Next</a></li>
			</xsl:when>
			<xsl:otherwise>
				<li><span>Next</span></li>
			</xsl:otherwise>
		</xsl:choose>
	</ul>
</xsl:template>

</xsl:stylesheet>