
draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 6, y - 80, 1, 1, 0, get_player_hud_color(frog_id.player), 1);
var damage_num = string(get_player_damage( frog_id.player ))
var full_num = string("" + damage_num + "%");

if(string_char_at(full_num, 2) == "%"){
    off_center = 0;
}
if(string_char_at(full_num, 3) == "%"){
    off_center = 3;
}
if(string_char_at(full_num, 4) == "%"){
    off_center = 6;
}


draw_debug_text(x-6-off_center, y + -94,full_num);

if get_match_setting(SET_HITBOX_VIS) {
    if(mask_index != asset_get("empty_sprite")){
    draw_sprite_ext(mask_index,image_index,floor(x),floor(y),1*spr_dir,1,0,c_white,0.5);
    }
}

if(state == 0){
    depth = 10;
}else{
    depth = -10;  
}

//with (player_id) shader_start();
//draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),1*spr_dir,1,0,c_white,1);

//draw_debug_text(x-7, y + -140,string(frog_id.joy_dir));
//draw_debug_text(x-7, y + -160,string(180+frogtimer_add));

if(state == 10 || state == 11 || state == 12){
draw_sprite_ext(sprite_index, image_index, x, y, 1*spr_dir, 1, 0, c_black, 0.5);        
}