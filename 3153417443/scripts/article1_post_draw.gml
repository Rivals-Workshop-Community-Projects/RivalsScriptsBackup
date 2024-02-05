var col_w = c_white;
var col_b = c_black;

draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x-7, y - 80, 1, 1, 0, get_player_hud_color(player), 1);

//draw_debug_text(x-7, y + -100,string(lifetime_timer));
//draw_debug_text(x-7, y + -120,string(trap_lifetime));

if get_match_setting(SET_HITBOX_VIS) {
    if(mask_index != asset_get("empty_sprite")){
    draw_sprite_ext(mask_index,image_index,floor(x),floor(y),1*spr_dir,1,0,c_white,0.5);
    //draw_debug_text(x-3, y+40,string("0"));
    }
}
