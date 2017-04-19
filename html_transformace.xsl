<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformace XML do HTML</title>
            </head>
            <body>
                <h2>Settings</h2>
                <h3>Graphics</h3>
                <h4>Display</h4>
                <table border="1">
                    <tr>
                        <td>Display mode</td>
                        <td><xsl:value-of select="system/graphics/display/display_mode"/></td>
                    </tr>
                    <tr>
                        <td>Resolution</td>
                        <td><xsl:value-of select="system/graphics/display/resolution"/></td>
                    </tr>
                    <tr>
                        <td>Refresh rate</td>
                        <td><xsl:value-of select="system/graphics/display/refresh_rate"/></td>
                    </tr>
                </table>
                <h4>Textures</h4>
                <table border="1">
                    <tr>
                        <td>Texture resolution</td>
                        <td>
                            <xsl:value-of select="system/graphics/textures/texture_resolution"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Texture filtering</td>
                        <td><xsl:value-of select="system/graphics/textures/texture_filtering"/></td>
                    </tr>
                    <tr>
                        <td>Projected textures</td>
                        <td><xsl:value-of select="system/graphics/textures/projected_textures/@enabled"/></td>
                    </tr>
                </table>
                <h4>Enviroment</h4>
                <table border="1">
                    <tr>
                        <td>View distance</td>
                        <td><xsl:value-of select="system/graphics/enviroment/view_distance/@value"/></td>
                    </tr>
                    <tr>
                        <td>Enviroment detail</td>
                        <td><xsl:value-of select="system/graphics/enviroment/enviroment_detail/@value"/></td>
                    </tr>
                    <tr>
                        <td>Ground clutter</td>
                        <td><xsl:value-of select="system/graphics/enviroment/ground_clutter/@value"/></td>
                    </tr>
                </table>
                <h4>Effects</h4>
                <table border="1">
                    <tr>
                        <td>Shadow quality</td>
                        <td><xsl:value-of select="system/graphics/effects/shadow_quality"/></td>
                    </tr>
                    <tr>
                        <td>Liquid detail</td>
                        <td>
                            <xsl:value-of select="system/graphics/effects/liquid_detail"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Sunshafts</td>
                        <td><xsl:value-of select="system/graphics/effects/sunshafts"/></td>
                    </tr>
                    <tr>
                        <td>Particle density</td>
                        <td><xsl:value-of select="system/graphics/effects/particle_density"/></td>
                    </tr>
                    <tr>
                        <td>SSAO</td>
                        <td>
                            <xsl:value-of select="system/graphics/effects/ssao"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Depth effects</td>
                        <td>
                            <xsl:value-of select="system/graphics/effects/depth_effects"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Lighting quality</td>
                        <td>
                            <xsl:value-of select="system/graphics/effects/lighting_quality"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Outline mode</td>
                        <td>
                            <xsl:value-of select="system/graphics/effects/outline_mode"/>
                        </td>
                    </tr>
                </table>
                <h3>Languages</h3>
                <table border="1">
                    <tr>
                        <td>Text</td>
                        <td><xsl:value-of select="system/languages/text/@lang"/></td>
                    </tr>
                    <tr>
                        <td>Audio</td>
                        <td><xsl:value-of select="system/languages/audio/@lang"/></td>
                    </tr>
                </table>
                <h3>Sound</h3>
                <table border="1">
                    <tr>
                        <td>Master volume</td>
                        <td><xsl:value-of select="system/sound/volume/master_volume"/></td>
                    </tr>
                    <tr>
                        <td>Sound</td>
                        <td>
                            <xsl:value-of select="system/sound/volume/sound"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Music</td>
                        <td>
                            <xsl:value-of select="system/sound/volume/music"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Ambience</td>
                        <td>
                            <xsl:value-of select="system/sound/volume/ambience"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Dialog</td>
                        <td>
                            <xsl:value-of select="system/sound/volume/dialog"/>
                        </td>
                    </tr>
                </table>
                <p>Game version: <xsl:value-of select="system/@version"/></p>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
