sprite_index = sprite_get("a_rush_coil" + (orig_player_id.alt == 0 || orig_player_id.alt == 31 ? "":"_mapped"));
mask_index = sprite_get("a_rush_coil_mask");

//uses_shader = false;

can_be_grounded = true;
ignores_walls = false;
grav = 0.3;
max_fall = 5;
pillar_ascent_speed = -15;

article_state = "SPAWN";
article_lifetime = has_rune("J")? 500:240;
article_timer = 0;

launch_speed_grounded = has_rune("K")? -18:-15;
launch_speed_airborne = has_rune("K")? -15:-12;
rush_cooldown = [0, 0, 0, 0, 0];

first_frame_free_bug_fix = false;