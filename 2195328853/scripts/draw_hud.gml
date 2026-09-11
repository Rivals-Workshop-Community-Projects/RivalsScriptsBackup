if ("steam_cooldown" not in self) exit;

draw_set_alpha(1)
shader_start();

if(steam_cooldown <= 0){
    draw_sprite(sprite_get("hud_cloud"), 0, temp_x + 180, temp_y - 18);
}else{
    draw_sprite(sprite_get("hud_cloud2"), 0, temp_x + 180, temp_y - 18);
}

shader_end();

draw_sprite_ext(jump_hud, 1, temp_x + 164, temp_y + 22, 2, 2, 0, get_player_hud_color(player), 1);
var stocks = get_player_stocks(player);
if(hud_death_timer > 0){if(stocks >= 1)hud_death_timer--;draw_sprite_ext(jump_hud, 1, temp_x + 164, temp_y + 22, 2, 2, 0, c_black, 0.5);}
if(djumps < max_djumps || stocks <= 0)draw_sprite_ext(jump_hud, 0, temp_x + 164, temp_y + 22, 2, 2, 0, stocks >= 1 ? c_white : c_black, 1);

muno_event_type = 5;
	user_event(14);