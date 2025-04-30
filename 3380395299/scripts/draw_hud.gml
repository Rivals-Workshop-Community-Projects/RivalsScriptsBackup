//HUD stuff to show NSpecial's changing


if "hud_enable" not in self exit

shader_start();
if nspecialProj = 3 {
draw_sprite(sprite_get("nspecial_proj4"), 0, temp_x+171, temp_y+2);
}

if nspecialProj = 2 {
draw_sprite(sprite_get("nspecial_proj3"), 0, temp_x+171, temp_y+2);
}

if nspecialProj = 1 {
draw_sprite(sprite_get("nspecial_proj2"), 0, temp_x+171, temp_y+2);
}

if nspecialProj = 0 || nspecialProj > 3 {
draw_sprite(sprite_get("nspecial_proj1"), 0, temp_x+171, temp_y+2);
}
shader_end();