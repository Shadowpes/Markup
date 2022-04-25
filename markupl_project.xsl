<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="1.0"
                encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        {
        "WEAPONS": [
        <xsl:for-each select="WEAPON">
            {
            <xsl:sort select="NAME" order="ascending"/>
            "NAME": "<xsl:value-of select="NAME"/>",
            "ORIGIN": "<xsl:value-of select="ORIGIN"/>",
            "SERVICE": "<xsl:value-of select="SERVICE"/>",
            "PRICE": "<xsl:value-of select="PRICE"/>",
            "DESIGNER": "<xsl:value-of select="DESIGNER"/>",
            "DESIGNED": "<xsl:value-of select="DESIGNED"/>",
            "MANUFACTURER": "<xsl:value-of select="MANUFACTURER"/>",
            "PRODUCED": "<xsl:value-of select="PRODUCED"/>",
            "PIECES": "<xsl:value-of select="PIECES"/>",
            "WEIGHT": "<xsl:value-of select="WEIGHT"/>",
            "LENGTH": "<xsl:value-of select="LENGTH"/>",
            "WIDTH": "<xsl:value-of select="WIDTH"/>",
            "HEIGHT": "<xsl:value-of select="HEIGHT"/>",
            "CREW": "<xsl:value-of select="CREW"/>",
            "SPEED": "<xsl:value-of select="SPEED"/>",
            "ARMOR": "<xsl:value-of select="ARMOR"/>",
            "RANGE": "<xsl:value-of select="RANGE"/>"
            }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
    }
    </xsl:template>
</xsl:stylesheet>