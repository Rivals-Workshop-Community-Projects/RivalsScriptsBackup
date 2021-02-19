shader_start();

if !isyellow {
draw_sprite(sprite_get("hud_nohalo"), 0, temp_x + 26, temp_y);

draw_sprite_part(sprite_get("hud_halo"), 0, 0, 0, (ink/300) * 182, 36, temp_x + 26, temp_y);

draw_sprite_part(sprite_get("hud_inkshield"), 0, 0, 0, (inkshield/300) * 182, 36, temp_x + 26, temp_y);
draw_sprite_part(sprite_get("hud_inkshield2"), 0, 0, 0, (inkshield_buildup/300) * 182, 36, temp_x + 26, temp_y);

draw_sprite(sprite_get("hud_summon"), 4, temp_x - 6, temp_y - 32);
draw_sprite(sprite_get("hud_summon"), 3, temp_x + 36, temp_y - 32);
draw_sprite(sprite_get("hud_summon"), 0, temp_x + 86, temp_y - 32);
draw_sprite(sprite_get("hud_summon"), 2, temp_x + 126, temp_y - 32);
draw_sprite(sprite_get("hud_summon"), 1, temp_x + 166, temp_y - 32);

draw_sprite(sprite_get("hud_cost"), floor((akaichoose + 100)/100)-1, temp_x + 6, temp_y - 63);
draw_sprite(sprite_get("hud_cost"), floor((alexchoose + 100)/100)-1, temp_x + 46, temp_y - 63);
draw_sprite(sprite_get("hud_cost"), floor((zettachoose + 100)/100)-1, temp_x + 86, temp_y - 63);
draw_sprite(sprite_get("hud_cost"), floor((mayuchoose + 100)/100)-1, temp_x + 126, temp_y - 63);
draw_sprite(sprite_get("hud_cost"), floor((sajichoose + 100)/100)-1, temp_x + 166, temp_y - 63);
}



shader_end() 

