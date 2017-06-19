<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:strip-space elements="*" />
<xsl:output omit-xml-declaration="yes" indent="yes"/>

<xsl:template match="/root">

 <xsl:apply-templates select="changeSet[child::insert[ @tableName='BLC_ASSET_FOLDER' or @tableName='BLC_ASSET_FOLDER_ITEM_XREF' or  @tableName='BLC_ASSET_FOLDER_XREF' or  @tableName='BLC_CATEGORY' or  @tableName='BLC_CATEGORY_MEDIA_MAP' or  @tableName='BLC_CATEGORY_XREF' or  @tableName='BLC_PRODUCT' or  @tableName='BLC_PRODUCT_ATTRIBUTE' or  @tableName='BLC_SKU' or  @tableName='BLC_SKU_MEDIA_MAP' or  @tableName='BLC_STATIC_ASSET' or  @tableName='BLC_THEME_FILE'  ]]" 
 
 />
 
</xsl:template>

<xsl:template match="changeSet">
 <xsl:text>&#10;</xsl:text>
 <xsl:variable name="thisTable" select="./insert/@tableName"/>
 
 <!-- <xsl:variable name="checkTable" select="'BLC_ASSET_FOLDER'"/> commented out this. powerful passing on commandline --> 
 <!-- xsltproc two-dashes-nospace stringparam checkTable BLC_ASSET_FOLDER   transform-tablewise-identity3.xsl dest501c.xml  -->
  
 <!-- <xsl:if test="$thisTable='BLC_ASSET_FOLDER_ITEM_XREF'"> works -->
 <!-- <xsl:if test="$thisTable='BLC_ASSET_FOLDER'"> works -->
      <xsl:if test="$thisTable=$checkTable">

	 <xsl:copy>
	   <xsl:attribute name="author"> <xsl:value-of select="./@author" /> </xsl:attribute>
	   <xsl:attribute name="id"> <xsl:value-of select="'MustNeedChange'" /> </xsl:attribute>
	   <xsl:copy-of select="child::*" />

	 </xsl:copy>
 </xsl:if>
</xsl:template>

</xsl:stylesheet>
