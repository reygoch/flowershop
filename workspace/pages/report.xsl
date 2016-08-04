<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exsl="http://exslt.org/common"
	extension-element-prefixes="exsl">

<xsl:output method="text" encoding="UTF-8" media-type="text/plain"/>

<xsl:template match="/data">
	<xsl:apply-templates select="report/year" />
</xsl:template>

<xsl:template match="year">
	<xsl:variable name="temp">
		<xsl:apply-templates select="month"/>
	</xsl:variable>

	{ "reportMonths" : [
		<xsl:for-each select="exsl:node-set($temp)/month">
			{
				"month" : "<xsl:value-of select="@value"/>",
				"total" : <xsl:value-of select="sum(transaction)"/>
			}
			<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
	]}
</xsl:template>

<xsl:template match="month">
	<month value="{@value}">
		<xsl:for-each select="entry">
			<xsl:variable name="cid" select="flower/item/@id" />
			<transaction>
				<xsl:value-of select="//flower-prices/entry[@id = $cid]/price"/>
			</transaction>
		</xsl:for-each>
	</month>
</xsl:template>

</xsl:stylesheet>
