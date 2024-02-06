//outline for css junk
init_shader();

shader_end();
draw_sprite(sprite_get("charselectoverlay"), get_player_color(player), x + 8, y + 8)

// IMPORTANT: The 12 (first argument) in this function should be the same number as the user event.
player_tag_palettes(12);
// Ideally, this is above all #defines, but below everything else.

// As usual, #defines all go at the bottom of the script.
#define player_tag_palettes
///(user_event, ?arg)
__ssnk_tagpal_scr = script_get_name(1);
__ssnk_tagpal_arg = argument_count > 1 ? argument[1] : 0;
user_event(argument[0]);
return "__ssnk_tagpal_res" in self ? __ssnk_tagpal_res : 0;