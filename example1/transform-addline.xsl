<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:strip-space elements="*" />
<!-- <xsl:preserve-space elements="report" /> -->
<xsl:output omit-xml-declaration="yes" indent="yes"/>
<xsl:template match="/root">
 <xsl:apply-templates select="report[ @name='Type3' or  @name='Type2' ]"/>
</xsl:template>

<!-- <xsl:template match="report[@name='Type3' or @name='Type2' ]"/> -->

<xsl:template match="report">
<xsl:text>&#10;</xsl:text>
 <xsl:copy>
  <xsl:copy-of select="node() | @*" />
 
 </xsl:copy>
</xsl:template>

</xsl:stylesheet>
