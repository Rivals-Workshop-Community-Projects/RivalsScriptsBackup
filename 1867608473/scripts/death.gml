// called when the character gets KO'd
sound_play(sound_get("sfx_death"));

if (!keeptp_on_death){
    tp_gauge = 0;
}

// Valentine's Day ONLY
if (get_player_color(player) == 6){
    vdayselect = random_func(1, 3, true);
    
}

//reset stats
knockback_adj = knockback_adj_start;
gravity_speed = gravity_speed_start;
jump_speed = jump_speed_start;
short_hop_speed = short_hop_speed_start;
djump_speed = djump_speed_start;
wave_friction = wave_friction_start;
dash_speed = dash_speed_start;
walk_speed = walk_speed_start;
stats_adjusted = true;
supersaiyan = 0;

UWU = 0;