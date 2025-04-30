//draw hud
if "kamek_hud_inited" not in self exit;

shader_start();
draw_sprite_ext(sprite_get("hud_toadie"),0,temp_x+180,temp_y-20,2,2,0,move_cooldown[AT_DSPECIAL] == 0 ? c_white : c_gray, 1)
shader_end();