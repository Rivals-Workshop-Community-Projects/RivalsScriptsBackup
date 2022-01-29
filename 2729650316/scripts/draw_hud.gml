shader_start();
draw_sprite_ext(sprite_get("item_icons"),1,temp_x+6,temp_y+6,1,1,0,(move_cooldown[AT_USPECIAL_2] != 0 ? c_dkgray : c_white), 1);
draw_sprite_ext(sprite_get("item_icons"),0,temp_x+36,temp_y+10,1,1,0,(move_cooldown[AT_NSPECIAL] != 0 ? c_dkgray : c_white), 1);
draw_sprite_ext(sprite_get("item_icons"),2,temp_x+70,temp_y+8,1,1,0,(move_cooldown[AT_DSPECIAL] != 0 ? c_dkgray : c_white), 1);
shader_end();