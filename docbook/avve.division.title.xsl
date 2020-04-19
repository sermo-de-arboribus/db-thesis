<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:axf="http://www.antennahouse.com/names/XSL/Extensions"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template name="avve.division.title">
        <xsl:param name="node" select="."/>
        <xsl:message>avve.division.title: Rendering ...</xsl:message>
        <xsl:variable name="id">
            <xsl:call-template name="object.id">
                <xsl:with-param name="object" select="$node"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="title">
            <xsl:apply-templates select="$node" mode="object.title.markup">
                <xsl:with-param name="allow-anchors" select="1"/>
            </xsl:apply-templates>
        </xsl:variable>
        <fo:block start-indent="7cm">
            <fo:external-graphic src="../img/Logo_Hochschule_Trier.svg" content-width="10cm" text-align="right"/>
        </fo:block>
        <fo:block keep-with-next.within-column="always" hyphenate="false" space-before="1.5cm">
            <xsl:if test="$axf.extensions != 0 and 
                $xsl1.1.bookmarks = 0 and 
                $show.bookmarks != 0">
                <xsl:attribute name="axf:outline-level">
                    <xsl:choose>
                        <xsl:when test="count($node/ancestor::*) > 0">
                            <xsl:value-of select="count($node/ancestor::*)"/>
                        </xsl:when>
                        <xsl:otherwise>1</xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="axf:outline-expand">false</xsl:attribute>
                <xsl:attribute name="axf:outline-title">
                    <xsl:value-of select="normalize-space($title)"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:copy-of select="$title"/>
        </fo:block>
    </xsl:template>
    
</xsl:stylesheet>