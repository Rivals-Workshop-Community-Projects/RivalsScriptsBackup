//outline for css junk
init_shader();
if (get_player_color( player ) == 10){
draw_sprite_ext(sprite_get("charselect_ea"),1,x+8,y+8,2,2,0,-1,1);
draw_sprite_ext(sprite_get("charselect_ea2"),1,x+8,y+8,2,2,0,-1,1);

}
if (get_player_color( player ) == 13){
draw_sprite_ext(sprite_get("charselect_abyss"),1,x+8,y+8,2,2,0,-1,1);
}
if (get_player_color( player ) == 18){
draw_sprite_ext(sprite_get("charselect_rgold"),1,x+8,y+8,2,2,0,-1,1);
}
if (get_player_color( player ) == 11){
draw_sprite_ext(sprite_get("charselect_tag"),1,x+8,y+8,2,2,0,-1,1);
}
if (get_player_color( player ) == 12){
draw_sprite_ext(sprite_get("charselect_ftl"),1,x+8,y+8,2,2,0,-1,1);
}

if (get_player_color( player ) == 14){
draw_sprite_ext(sprite_get("charselect_tych"),1,x+8,y+8,2,2,0,-1,1);

}


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