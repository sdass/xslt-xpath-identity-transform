passing a field value pair (checkTable BLC_STATIC_ASSE) to be evaluated  on the xsl transformation file (<xsl:if test="$thisTable=$checkTable">)
c:\temp> xsltproc --stringparam checkTable BLC_ASSET_FOLDER   transform-tablewise-identity3.xsl src.xml 
c:\temp> xsltproc --stringparam checkTable BLC_STATIC_ASSET   transform-tablewise-identity3.xsl src.xml

excellent flexibility.

