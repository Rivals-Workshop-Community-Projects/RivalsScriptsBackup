if clone_pl = self exit;
shader_start();
draw_sprite_ext(sprite_get("venus_icon"), 0, temp_x + 176, temp_y - 10, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("clone_icon"), instance_exists(clone_pl), temp_x + 150 - 18, temp_y - 14, 2, 2, 0, c_white, 1);
shader_end();
if move_cooldown[AT_DSPECIAL] draw_sprite_ext(sprite_get("venus_icon"), 0, temp_x + 176, temp_y - 10, 2, 2, 0, 0, .5);
if !array_length(clone_inputs) || (attack = AT_NSPECIAL && (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR)) || move_cooldown[AT_FSPECIAL] draw_sprite_ext(sprite_get("clone_icon"), instance_exists(clone_pl), temp_x + 150 - 18, temp_y - 14, 2, 2, 0, 0, .5);