<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="*" mode="menu">
<nav id="nav" class="nav col08">
	<ul class="menu hmenu mmenu">
		<li><a href="{$root}">Home</a></li>
		<li><a href="{$root}/flowers">Flowers</a></li>
		<li><a href="{$root}/transactions">Transactions</a></li>
		<li><a href="{$root}/contact">Contact</a></li>
	</ul>
</nav>
</xsl:template>

</xsl:stylesheet>