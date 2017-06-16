filtering accomplished
from the root select all changeset node in completeness who has a child named insert and which has an attribute name tableName which contain either of the values ('DIGITAL_SKU' or 'BLC_CATEGORY'). For this subset make identity transformation (<xsl:copy-of>) and save to a file

xsltproc -o dest3.xml  transform3.xsl db.changelog-1.8.xml
