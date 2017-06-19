
C:\Temp\Practice\xslt\apacheProcessor>java org.apache.xalan.xslt.Process -IN data.xml -XSL transform2.xsl

1] Set the class path to the xalan library 
CLASSPATH=C:\Temp\extraJars\*;C:\Temp\extraJars\xalan-jars\xalan-j_2_7_2\*;.
)(has  serializer.jar, xalan.jar, xercesImpl.jar, xml-apis.jar, xsltc.jar

2] Transforming from the Command Line with Xalan 
To run a transform from the command line, you initiate a Xalan Process class using the following command: 

java org.apache.xalan.xslt.Process -IN article3.xml   -XSL article3.xsl 
(http://docs.oracle.com/cd/E17802_01/j2ee/j2ee/1.4/docs/tutorial-update2/doc/JAXPXSLT7.html)
https://www.ibm.com/developerworks/xml/tutorials/x-introxslt/x-introxslt.html

