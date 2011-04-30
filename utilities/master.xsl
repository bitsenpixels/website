<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />


<xsl:include href="../utilities/common.xsl"/>
<xsl:include href="../utilities/navigation.xsl"/>

<xsl:template match="/">

<html lang="nl">

<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 <title><xsl:call-template name="page-title"/></title>
 <link rel="stylesheet" media="screen" href="{$workspace}/assets/css/bitsenpixels.css"/>

<!--[if !IE 7]>
 <style type="text/css">
  #layout {display:table;height:100%}
 </style>
<![endif]-->

<xsl:call-template name="google-analytics">
    <xsl:with-param name="tracker" select="'UA-22694284-5'"/>
</xsl:call-template>

</head>

<body>

 <div id="layout">

  <div id="fatheader">
   <div id="header">
    <div id="logo">
     <a href="/">logo</a>
    </div>
    <div id="nav">
     <xsl:apply-templates select="data/navigation"/>
    </div>
    <div id="subnav">
     <xsl:apply-templates select="data/subnavigation"/>
    </div>
    <div id="search">
     <form action="/search/" method="get">
      <label>Search <input type="text" name="keywords" minlength="3"/></label>
      <input type="hidden" name="sort" value="score-recency" />
      <input type="hidden" name="per-page" value="10" />
      <input type="hidden" name="sections" value="articles" />
     </form>
    </div>
   </div>
  </div>

  <div id="main">
   <xsl:apply-templates />
  </div>

 </div>

 <div id="fatfooter">
  <div id="footer">
   <div id="left">
    <p>left</p>
   </div>
   <div id="middle">
    <p><a href="/symphony">Manage CMS</a></p>
   </div>
   <div id="right">
    <p>right</p>
   </div>
  </div>
  <div id="legal">
   <p>copyright 2011 - all rights reserved</p>
  </div>
 </div>
</body>

</html>

</xsl:template>

</xsl:stylesheet>