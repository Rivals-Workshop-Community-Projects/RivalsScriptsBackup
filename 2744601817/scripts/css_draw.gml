//Draw Init
if "is_css" not in self is_css = true;
var alt = get_player_color(player);

if ("prev_alt" not in self){
draw_init = false
drawtime = 0
drawing = 0
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawtime = 0
}

drawtime += 1 

var sfx_num = random_func(7,2,true);
if sfx_num = 0 {
    var sfx_init = sound_get("red_mode");
} else {
    var sfx_init = sound_get("blue_mode");
}
//Sound Effect
if (get_color_profile_slot_b(2, 2) == 255) {
    sound_play(sfx_init);
    set_color_profile_slot(2, 2, get_color_profile_slot_r(2, 2), get_color_profile_slot_g(2, 2), get_color_profile_slot_b(2, 2) + 1);
}

//Drawing

var cssico = get_char_info(player,INFO_CHARSELECT)

draw_sprite_ext(sprite_get("_charselectbg"),0,x+8,y+8,2,2,0,c_white,1)

//Draw CSS Icon
prev_alt = alt;
//Viel Alt
if (alt == 14){
    draw_sprite_ext(sprite_get("_charselect_veil"),0,x+8,y+8,2,2,0,c_white,1)
} 
//Kawaii Alt
else if (alt == 13){
    if drawtime == 1 {
        sound_play(sound_get("wow"))
    }
    draw_sprite_ext(sprite_get("charselecthearts2"),drawtime / 2,x+8,y+8,2,2,0,-1,1);
    draw_sprite_ext(sprite_get("_charselect_kawaii"),0,x+8,y+8,2,2,0,c_white,1)
    draw_sprite_ext(sprite_get("charselecthearts"),drawtime / 2,x+8,y+8,2,2,0,-1,1);
}

else if (alt == 15){
    draw_sprite_ext(cssico,0,x+8,y+8,2,2,0,c_white,1)
    draw_sprite_ext(sprite_get("_cssico11"),0,x+8,y+8,2,2,0,c_white,1)
} 
//Normal
else {
    draw_sprite_ext(cssico,0,x+8,y+8,2,2,0,c_white,1)
}

muno_event_type = 6;
user_event(14);