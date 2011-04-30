<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="search">
 <xsl:choose>
  <xsl:when test="count(entry) &gt; 0">
   <p>Found <xsl:value-of select="count(entry)"/> result(s)...</p>
    <ul>
     <xsl:apply-templates select="/data/search/entry" /> 
    </ul>
  </xsl:when>
  <xsl:otherwise>
   <p>Nothing Found</p>
  </xsl:otherwise>
 </xsl:choose>
</xsl:template>

<xsl:template match="search/entry">
    <li class="{@section}" id="entry-{@id}">
        <xsl:choose>
            <xsl:when test="@section='articles'">
                <xsl:apply-templates select="/data/search-articles/entry[@id=current()/@id]" />
            </xsl:when>
            <xsl:otherwise>
                <p>error processing results</p>
            </xsl:otherwise>
        </xsl:choose>
    </li>
</xsl:template>

<xsl:template match="search-articles/entry">
    <p><xsl:value-of select="current()/title"/> | <xsl:value-of select="current()/author"/> | <xsl:value-of select="current()/created"/></p>
</xsl:template>

</xsl:stylesheet>
