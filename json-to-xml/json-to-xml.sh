#####################
### Need sazon-he-12*.jar and lib/xml*
#####################

export JAVA_HOME="/app/jdk-21.0.6"

#java -cp saxon-he-12.7.jar net.sf.saxon.Transform -it -xsl:json-to-xml.xsl json-input-file=<input.json> -o:<output.xml>
java -cp saxon-he-12.7.jar net.sf.saxon.Transform -it -xsl:json-to-xml.xsl json-input-file=input.json -o:output.xml
