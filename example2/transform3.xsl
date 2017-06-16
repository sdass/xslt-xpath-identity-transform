<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:strip-space elements="*" />
<xsl:output omit-xml-declaration="yes" indent="yes"/>

<xsl:template match="/databaseChangeLog">
 <xsl:apply-templates select="changeSet[ @id='1.8.4' or @id='1.8.6'  ]"/>
</xsl:template>

<xsl:template match="changeSet">
 <xsl:copy>
  <xsl:copy-of select="node() | @*" />
 
 </xsl:copy>
</xsl:template>

</xsl:stylesheet>
