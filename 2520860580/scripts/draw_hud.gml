shader_start();

draw_sprite(sprite_get("hud_healthb"), 0, temp_x + 26, temp_y + 6);
draw_sprite(sprite_get("hud_mohp"), 2, temp_x - 16, temp_y - 42);

draw_sprite_part(sprite_get("hud_mohp"), 1, 0, 0, ((max_hitpoints - adamage)/max_hitpoints) * 236, 36, temp_x - 16, temp_y - 42);
draw_sprite_part(sprite_get("hud_mohp"), 0, 0, 0, ((max_hitpoints - get_player_damage(player))/max_hitpoints) * 236, 36, temp_x - 16, temp_y - 42);

draw_sprite_part(sprite_get("hud_healthf"), 1, 0, 0, ((max_hitpoints - adamage)/max_hitpoints) * 182, 36, temp_x + 26, temp_y + 6);
draw_sprite_part(sprite_get("hud_healthf"), 0, 0, 0, ((max_hitpoints - get_player_damage(player))/max_hitpoints) * 182, 36, temp_x + 26, temp_y + 6);

draw_sprite(sprite_get("hud_mo"), 2, temp_x + 26, temp_y - 6);

draw_sprite_part(sprite_get("hud_mo"), 0, 0, 0, (motivation2/300) * 182, 36, temp_x + 26, temp_y - 6);

if downed == 0 {
    draw_sprite_part(sprite_get("hud_mo"), 0, 0, 0, (motivation/300)  * 182, 36, temp_x + 26, temp_y - 6);
    gpu_set_blendmode(bm_add);
    draw_sprite_part(sprite_get("hud_mo"), 1, 0, 0, (motivation/300) * 182, 36, temp_x + 26, temp_y - 6 - random_func(1,3,true));
    draw_sprite_part(sprite_get("hud_mohp"), 0, 0, 0, ((max_hitpoints - get_player_damage(player))/max_hitpoints) * 236, 36, temp_x - 16, temp_y - 42 - random_func(1,3,true));
    gpu_set_blendmode(bm_normal);
}



if hitpause {
    draw_sprite_part(sprite_get("hud_healthf"), 2, 0, 0, ((max_hitpoints - get_player_damage(player))/max_hitpoints) * 182, 36, temp_x + 26, temp_y + 6);
}


shader_end();
