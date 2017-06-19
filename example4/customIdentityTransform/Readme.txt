source4.xml:
Requirement: 
report tag has 2 attributes name, author. Overwrite name="bbbbb" but keep author attribute value as is
report tags all children (nodes and attributes) will go throgh as is identity transformation.
So, we get certain report tag based on condition on select. Then copy those report nodes (in completeness), overwrite only type attribute of report node and copy asis the child nodes of report. dump to a file

command to run: xsltproc  transform4.xsl source2.xml

xsltproc -o destination2.xml transform4.xsl source2.xml

