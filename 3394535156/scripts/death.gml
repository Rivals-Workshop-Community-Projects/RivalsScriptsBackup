// death.gml

// play stuff on death here
display_intro = false;
display_timer= -1
charged_nspecial_timer = 0;
charging_nspecial_buffer = false
move_cooldown[AT_NSPECIAL] = 0;
move_cooldown[AT_FSPECIAL] = 0;
sound_play(asset_get("sfx_shovel_knight_die"));