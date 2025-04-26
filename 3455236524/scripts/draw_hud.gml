//draw_debug_text(temp_x, temp_y-40, `state_timer: ${state_timer}`);
//draw_debug_text(temp_x, temp_y-20, `nspecial_proj_hitbox.hsp: ${nspecial_proj_hitbox.hsp}`);

if (uspecial_charge < 3)
draw_sprite_ext(sprite_get("hud_barrel"), 0, temp_x+205, temp_y-10, 1, 1, 0, c_white, 1);

if (uspecial_charge == 3)
draw_sprite_ext(sprite_get("hud_barrel"), 1, temp_x+205, temp_y-10, 1, 1, 0, c_white, 1);