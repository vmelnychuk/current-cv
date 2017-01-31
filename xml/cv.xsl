<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <!-- Variables set-up
    <xsl:variable name="show_explanation_default" select="0" />
    -->
    
    <xsl:template match="cv">
        <html lang="en">
            <head>
                <meta charset="utf-8" />
                <title><xsl:value-of select="@title"/></title>
                <meta name="description" content="cv" />
                <link rel="stylesheet" type="text/css" href="cv.css" />
                <link rel="icon" type="image/png" href="cv.png" />
            </head>
            <body>
                <h1><xsl:value-of select="@title"/></h1>
                <xsl:apply-templates/>
                <script language="javascript" type="text/javascript" src="cv.js"></script>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="personal-info">
        <div class="personal-info">
            <p><xsl:apply-templates/></p>
        </div>
    </xsl:template>

</xsl:stylesheet>
