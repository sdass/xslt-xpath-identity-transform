<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns="http://www.w3.org/TR/xhtml1/strict">

	  <xsl:template match="/">
		<html>
		 <body>
		 empty
		  <xsl:apply-templates select="recipes"/>
		  <xsl:text>&#xa;</xsl:text>
		  <xsl:apply-templates select="recipes/recipe"/>
		  
		 
		 <!-- <p> <xsl:apply-templates select="recipes/recipe/ingredients"/> </p> -->
		 </body>
		</html>
	  
	  </xsl:template>

	  <xsl:template match="ingredients">
	  <h2>The Ingredients:</h2>
	    <xsl:apply-templates select="./ingredient"/>
		
	  

	  </xsl:template>
	  
	  <xsl:template match="ingredient">
	   <xsl:text>&#xa;</xsl:text>
	   ***   <xsl:value-of select="."/> ***
	  </xsl:template>
	  
	  
	  <xsl:template match="recipe">
	  <xsl:text>&#xa;</xsl:text>
	   ...Recipe below...
	   name: <xsl:value-of select="./name"/>
	   	<p> <xsl:apply-templates select="./ingredients"/> </p>
	   		<xsl:apply-templates select="instructions"/>

	  </xsl:template>

	  <xsl:template match="recipes">
	   ====ALL RECIPES===
	  </xsl:template>

	  <xsl:template match="instructions">
	   :---instructions--:
	   ***   <xsl:value-of select="."/> ***
	  </xsl:template>
	  
	  </xsl:stylesheet>