//post-draw

var player_col = get_player_color(player)
var col = make_color_rgb(get_color_profile_slot_r(player_col, 0), get_color_profile_slot_g(player_col, 0), get_color_profile_slot_b(player_col, 0))
if position_meeting(x, y - 16, asset_get("par_block")){
    gpu_set_fog(1, col, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x, y, spr_dir*2, 2, 0, c_white, 0.5)
}

gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);

if !(wall_phase) && (has_rune("F") && get_player_damage(player) >= 96) 
&& !((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_USPECIAL){
	draw_sprite_ext(sprite_index, image_index, x, y, spr_dir*2, 2, 0, c_black, (sin(get_gameplay_time()/6)+1)/4);
}