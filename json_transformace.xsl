<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/">
    {
        <xsl:for-each select="system">
            "system": {
                "~version~": "<xsl:value-of select="@version"/>",
                <xsl:for-each select="graphics">
                "graphics": {
                    "~overall quality~": "<xsl:value-of select="@quality"/>",
                    "display": {
                        "display mode": "<xsl:value-of select="display/display_mode"/>",
                        "resolution": "<xsl:value-of select="display/resolution"/>",
                        "refresh rate": "<xsl:value-of select="display/refresh_rate"/>",
                        "monitor": "<xsl:value-of select="display/monitor"/>",
                        "anti-aliasing": "<xsl:value-of select="display/anti-aliasing"/>",
                        "enable vertical sync": "<xsl:value-of select="display/vertical_sync/@enabled"/>"
                    },
                    "textures": {
                        "textures resolution": "<xsl:value-of select="textures/texture_resolution"/>",
                        "texture filtering": "<xsl:value-of select="textures/texture_filtering"/>",
                        "enable projected textures": "<xsl:value-of select="textures/projected_textures/@enabled"/>"
                    },
                    "enviroment": {
                        "view distance value": "<xsl:value-of select="enviroment/view_distance/@value"/>",
                        "enviroment deatil value": "<xsl:value-of select="enviroment/enviroment_detail/@value"/>",
                        "ground clutter value": "<xsl:value-of select="enviroment/ground_clutter/@value"/>"
                    },
                    "effects": {
                        "shadow quality": "<xsl:value-of select="effects/shadow_quality"/>",
                        "liquid detail": "<xsl:value-of select="effects/liquid_detail"/>",
                        "sunshafts": "<xsl:value-of  select="effects/sunshafts"/>",
                        "particle density": "<xsl:value-of select="effects/particle_density"/>",
                        "ssao": "<xsl:value-of select="effects/ssao"/>",
                        "depth effects": "<xsl:value-of select="effects/depth_effects"/>",
                        "lighting quality": "<xsl:value-of select="effects/lighting_quality"/>",
                        "outline mode": "<xsl:value-of select="effects/outline_mode"/>"
                    }
                }</xsl:for-each>,
                <xsl:for-each select="advanced">
                    "advanced": {
                        "triple buffering": "<xsl:value-of select="triple_buffering"/>",
                        "reduce input lag": "<xsl:value-of select="reduce_input_lag"/>",
                        "hardware cursor": "<xsl:value-of select="hardware_cursor"/>",
                        "msaa": "<xsl:value-of select="msaa"/>",
                        "multisample alpha-test": "<xsl:value-of select="multisample_aplha-test"/>",
                        "resample quality": "<xsl:value-of select="resample_quality"/>",
                        "graphics api": "<xsl:value-of select="graphics_api"/>",
                        "physics interactions": "<xsl:value-of select="physics_interactions"/>",
                        "enable ui scale": "<xsl:value-of select="ui_scale/@enabled"/>",
                        "ui scale value": "<xsl:value-of select="ui_scale/@scale"/>",
                        "enable max foreground fps": "<xsl:value-of select="max_foreground_fps/@enabled"/>",
                        "max foreground fps value": "<xsl:value-of select="max_foreground_fps/@fps"/>",
                        "enable max background fps": "<xsl:value-of select="max_background_fps/@enabled"/>",
                        "max background fps value": "<xsl:value-of select="max_background_fps/@fps"/>",
                        "render scale value": "<xsl:value-of select="render_scale/@render"/>"
                }</xsl:for-each>,
                <xsl:for-each select="network">
                    "network": {
                        "enable optimize network for speed": "<xsl:value-of select="optimize_network_for_speed/@enabled"/>",
                        "enable ipv6 when available": "<xsl:value-of select="enable_ipv6_when_available/@enabled"/>",
                        "enable advanced combat logging": "<xsl:value-of select="advanced_combat_logging/@enabled"/>"
                }</xsl:for-each>,
                <xsl:for-each select="languages">
                    "languages": {
                        "text language": "<xsl:value-of select="text/@lang"/>",
                        "audio language": "<xsl:value-of select="audio/@lang"/>"
                }</xsl:for-each>,
                <xsl:for-each select="sound">
                    "sound": {
                        "~enabled~": "<xsl:value-of select="@enabled"/>",
                        "playback": {
                            "sound effects": {
                                "~enabled~": "<xsl:value-of select="playback/sound_effects/@enabled"/>",
                                "enable pet sounds": "<xsl:value-of select="playback/sound_effects/enable_pet_sounds/@enabled"/>",
                                "enable emote sounds": "<xsl:value-of select="playback/sound_effects/emote_sounds/@enabled"/>"
                            },
                            "music": {
                                "~enabled~": "<xsl:value-of select="playback/music/@enabled"/>",
                                "enable loop music": "<xsl:value-of select="playback/music/loop_music/@enabled"/>",
                                "enable pet battle music": "<xsl:value-of select="playback/music/pet_battle_music/@enabled"/>"
                            },
                            "enable ambient sounds": "<xsl:value-of select="playback/ambient_sounds/@enabled"/>",
                            "dialog": {
                                "~enabled~": "<xsl:value-of select="playback/dialog/@enabled"/>",
                                "enable error speech": "<xsl:value-of select="playback/dialog/error_speech/@enabled"/>"
                            },
                            "enable sound in background": "<xsl:value-of select="playback/sound_in_background/@enabled"/>",
                            "enable reverb": "<xsl:value-of select="playback/enable_reverb/@enabled"/>",
                            "enable distance filtering": "<xsl:value-of select="playback/distance_filtering/@enabled"/>",
                            "enable death knight voices": "<xsl:value-of select="playback/death_knight_voices/@enabled"/>"
                        },
                        "hardware": {
                            "game sound output": "<xsl:value-of select="hardware/game_sound_output"/>",
                            "sound channels": "<xsl:value-of select="hardware/sound_channels"/>",
                            "sound cache": "<xsl:value-of select="hardware/sound_cache"/>"
                        },
                        "volume": {
                            "master volume": "<xsl:value-of select="volume/master_volume"/>",
                            "sound": "<xsl:value-of select="volume/sound"/>",
                            "music": "<xsl:value-of select="volume/music"/>",
                            "ambience": "<xsl:value-of select="volume/ambience"/>",
                            "dialog": "<xsl:value-of select="volume/dialog"/>"
                        }
                    }</xsl:for-each>,
                    <xsl:for-each select="camera">
                        "camera": {
                            "~camera follow speed~": "<xsl:value-of select="@follow"/>",
                            "enable water collision": "<xsl:value-of select="water_collision/@enabled"/>",
                            "camera following style": "<xsl:value-of select="camera_following_style"/>"
                    }</xsl:for-each>,
                    <xsl:for-each select="mouse">
                        "mouse": {
                            "enable mouse invert": "<xsl:value-of select="invert_mouse/@enabled"/>",
                            "mouse look speed": "<xsl:value-of select="mouse_look_speed/@speed"/>",
                            "enable mouse sensitivity": "<xsl:value-of select="enable_mouse_sensitivity/@enabled"/>",
                            "mouse sensitivity": "<xsl:value-of select="enable_mouse_sensitivity/@sensitivity"/>"
                    }</xsl:for-each>
            }</xsl:for-each>
        }
    </xsl:template>

</xsl:stylesheet>
