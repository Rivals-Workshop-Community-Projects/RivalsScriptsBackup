
shader_start();

if (move_cooldown[AT_NSPECIAL] == 0 && move_cooldown[AT_NSPECIAL_AIR] == 0 )
draw_sprite_ext( sprite_get("cooldowns_ui"), 0, temp_x + 180, temp_y-6, 2, 2, 0, c_white, 1 );
else
draw_sprite_ext( sprite_get("cooldowns_ui"), 0, temp_x + 180, temp_y-6, 2, 2, 0, c_dkgray, 1 );

var cd_string = string_format(move_cooldown[AT_NSPECIAL]/60, 1, 2);

if (move_cooldown[AT_NSPECIAL] > 0)
draw_debug_text( temp_x + 180, temp_y-6, cd_string);

if (move_cooldown[AT_DSPECIAL] == 0)
draw_sprite_ext( sprite_get("cooldowns_ui"), 1, temp_x + 130, temp_y-6, 2, 2, 0, c_white, 1 );
else
draw_sprite_ext( sprite_get("cooldowns_ui"), 1, temp_x + 130, temp_y-6, 2, 2, 0, c_dkgray, 1 );

cd_string = string_format(move_cooldown[AT_DSPECIAL]/60, 1, 2);

if (move_cooldown[AT_DSPECIAL] > 0)
draw_debug_text( temp_x + 130, temp_y-6, cd_string );

shader_end();