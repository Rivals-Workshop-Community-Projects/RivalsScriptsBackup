if (state == PS_SPAWN || state == PS_RESPAWN || state == PS_DEAD){ }// has_bomb = true; }

if !(state == PS_DEAD || state == PS_RESPAWN || tornado_id == noone && instance_exists(tornado_id)){
draw_sprite_ext(sprite_get("sand_hud"), 0, temp_x+185, temp_y-18, 2, 2, 0, c_white, 1);
}
if (tornado_id != noone && instance_exists(tornado_id)){
draw_sprite_ext(sprite_get("sand_hud"), 0, temp_x+185, temp_y-18, 2, 2, 0, c_gray, 0.8);
}

/*
if (has_bomb == true && move_cooldown[AT_FTILT] < 1){ draw_sprite_ext(sprite_get("bomb"), 0, temp_x+1, temp_y-16, 1, 1, 0, c_white, 1); }
//if (has_bomb == false && move_cooldown[AT_FTILT] > 1){ draw_sprite_ext(sprite_get("bomb_explode"), 0, temp_x+1, temp_y-16, 1, 1, 0, temp_color, 1); }

if (move_cooldown[AT_FTHROW] > 1){ draw_sprite_ext(sprite_get("bomb_explode"), image_index * 4, temp_x+1, temp_y-16, 1, 1, 0, c_white, 1); }
if (move_cooldown[AT_FTILT] > 1){ draw_sprite_ext(sprite_get("bomb_explode"), 0, temp_x+1, temp_y-16, 1, 1, 0, c_white, 1); }