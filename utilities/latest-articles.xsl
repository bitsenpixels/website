<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="latest-articles">
<div id="latest-articles">
      <xsl:for-each select="entry">
        <div>
          <h1><xsl:value-of select="title"/></h1>
          <h3><xsl:value-of select="author"/></h3>
          <div><xsl:value-of select="body"/></div>
        </div>
      </xsl:for-each>
</div>
</xsl:template>

</xsl:stylesheet>