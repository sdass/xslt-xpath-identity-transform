
1] C:\Temp>xsltproc transform3.xsl source.xml //identity transform [copy]

2] C:\Temp>xsltproc transform-addline.xsl source.xml // does 1 + this add a line after report element

3] xsltproc transform4.xsl source.xml // totally different. return the attribute value of an element

xsltproc -- gives help for -v verbose --debug


xsltproc c program(library). Excellent

For identity transformation <xsl:copy-of> is very important not just <xsl:copy>
sites helpful: http://web.uvic.ca/~mholmes/dhoxss2013/handouts/mdh_xsl-copy-identity-transforms.pdf (to understand indentity transform using <xsl:copy-of>

https://stackoverflow.com/questions/39359268/xsl-how-to-select-data-from-one-xml-node-set-with-apply-templates?rq=1 (example modify and develop incrementally)


XPath specification section 2.5 and others (e.g child:: how to use in later examples)

https://vimeo.com/15234803 (overall fundamentals)