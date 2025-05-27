<xsl:stylesheet version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:err="http://www.w3.org/2005/xqt-errors">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:param name="json-input-file" as="xs:string" select="'input.json'"/>
    
    <xsl:template name="xsl:initial-template">
        <xsl:try>
            <xsl:variable name="json-text" select="unparsed-text($json-input-file)"/>
            <xsl:variable name="json-xml" select="json-to-xml($json-text)"/>
            <xsl:copy-of select="$json-xml"/>
            
            <xsl:catch errors="*">
                <error>
                    <code><xsl:value-of select="$err:code"/></code>
                    <description><xsl:value-of select="$err:description"/></description>
                    <file><xsl:value-of select="$json-input-file"/></file>
                </error>
            </xsl:catch>
        </xsl:try>
    </xsl:template>
</xsl:stylesheet>
