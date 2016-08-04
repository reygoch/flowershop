<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="data">
	<xsl:if test="//contact-form[@result = 'success']">
		success
	</xsl:if>

	<form method="post" action="{$current-url}/" enctype="multipart/form-data" id="contact" class="col06 push03 row">

		<input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
		
		<div class="col12">
			<input name="fields[name]" type="text" placeholder="Name*"/>
		</div>

		<div class="col12">
			<input name="fields[surname]" type="text" placeholder="Surname*"/>
		</div>

		<div class="col12">
			<input name="fields[email]" type="text" placeholder="Email*"/>
		</div>

		<div class="col12">
			<input name="fields[phone]" type="text" placeholder="Phone"/>
		</div>

		<div class="col12">
			<textarea name="fields[message]" rows="15" cols="50" placeholder="your message*"></textarea>
		</div>
		
		<div class="col12">
			<input name="fields[attachment]" type="file" placeholder="Your flower picture"/>
		</div>
		
		<div class="col12">
			<input name="action[contact-form]" type="submit" value="Submit" />
		</div>

		<input name="send-email[subject]" value="message from contact form" type="hidden" />
		<input name="send-email[body]" value="fields[phone]" type="hidden" />
		<input name="send-email[recipient]" value="reygoch, raw@email.com, fields[email]" type="hidden" />
	</form>
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