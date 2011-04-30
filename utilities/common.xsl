<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="google-analytics">
 <xsl:param name="tracker"/>
  <script type="text/javascript">
   <xsl:text disable-output-escaping="yes">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', '</xsl:text><xsl:value-of select="$tracker"/><xsl:text disable-output-escaping="yes">']);
    _gaq.push(['_trackPageview']);
    (function() {
     var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
     ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
     (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);
    })();
  </xsl:text>
 </script>
</xsl:template>

<xsl:template name="page-title">
  <xsl:value-of select="$website-name"/>  
  <xsl:if test="$current-path != '/'">
    <xsl:text> | </xsl:text>
    <xsl:value-of select="$root-page"/>
    <xsl:if test="$root-page != $current-page">
      <xsl:text> | </xsl:text>
      <xsl:value-of select="$current-page"/>
    </xsl:if>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>