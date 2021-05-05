
if (!custom_clone){

col_final1 = make_color_rgb(col_R1, col_G1, col_B1);
col_final2 = make_color_rgb(col_R2, col_G2, col_B2);

if (get_player_color(player) != 18){
       shader_start();
}

if (hat_on == true && !custom_clone){
        draw_sprite_ext(sprite_get("hud_hat"), 0, temp_x+28, temp_y+8, 2, 2, 0, c_white, 1);
}

if (get_player_color(player) != 18){
       shader_end();
}


shader_start();

draw_sprite_ext(sprite_get("hud"), 0, temp_x-12, temp_y-43, 2, 2, 0, c_white, 1);

if (get_player_color(player) == 7){
    for(i = 0; i < 8; i++){
       draw_sprite_ext(sprite_get("hud_ammo2"), shotgun_ammo, temp_x+5, temp_y-34, 2, 2, 0, c_white, 1);
    }
}
else {
draw_sprite_ext(sprite_get("hud_ammo"), shotgun_ammo, temp_x+5, temp_y-34, 2, 2, 0, c_white, 1);
}

draw_set_halign(fa_center);
draw_set_font(asset_get("roundFont"));
draw_text_colour(temp_x+148, temp_y-20, string(attack_nome), c_black, c_black, c_black, c_black, 1);
draw_text_colour(temp_x+148, temp_y-36, string(attack_holo_nome), c_black, c_black, c_black, c_black, 1);

draw_set_halign(fa_center);
draw_set_font(asset_get("roundFont"));
draw_text_colour(temp_x+150, temp_y-20, string(attack_nome), col_final1, col_final1, col_final1, col_final1, 1);
draw_text_colour(temp_x+150, temp_y-36, string(attack_holo_nome), col_final2, col_final2, col_final2, col_final2, 1);




shader_end();

draw_sprite_ext(sprite_get("actions"), attack_icon, temp_x+65, temp_y-17, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("actions"), attack_holo_icon, temp_x+65, temp_y-32, 2, 2, 0, c_white, 1);


shader_start();
draw_sprite_ext(sprite_get("action_bord"), 0, temp_x+65, temp_y-17, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("action_bord"), 0, temp_x+65, temp_y-32, 2, 2, 0, c_white, 1);

draw_sprite_ext(sprite_get("hud_effect1"), get_gameplay_time()*.3, temp_x-12, temp_y-43, 2, 2, 0, c_white, .3);
draw_sprite_ext(sprite_get("hud_effect2"), get_gameplay_time()*.4, temp_x-12, temp_y-43, 2, 2, 0, c_white, .3);

shader_end();

//in death.gml

//if custom_clone set_player_stocks(player, get_player_stocks(player)+1);

if (state == PS_SPAWN) {
	if (hold_on == true) {
		draw_debug_text(temp_x+4, temp_y-92, "Press TAUNT to use Parry");
		draw_debug_text(temp_x+4, temp_y-74, "instead of Special Tap/Hold");
	} else {
		draw_debug_text(temp_x+4, temp_y-74, "Using Parry for Hold!");		
	}
}

user_event(11);
}