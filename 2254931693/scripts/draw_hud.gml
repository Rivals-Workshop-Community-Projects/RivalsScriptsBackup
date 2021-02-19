shader_start();
draw_sprite( sprite_get( "spikeballicon" ), -1, temp_x + 186, temp_y - 22);
shader_end();
draw_sprite_ext( sprite_get( "spikeballicon" ), -1, temp_x + 186, temp_y - 22, 1, 1, 0, c_black, move_cooldown[AT_NSPECIAL]);

user_event(11);


