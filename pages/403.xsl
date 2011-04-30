<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl"/>

<xsl:template match="data">
<div id="content">
<p><xsl:value-of select="$page-title"/></p>
</div>
<div id="sidebar">
<p>sidebar</p>
</div>
</xsl:template>

</xsl:stylesheet>