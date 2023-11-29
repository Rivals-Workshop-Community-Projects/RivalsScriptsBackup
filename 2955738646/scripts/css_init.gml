num_alts = 32;
temp_x = x - 158;
temp_y = y + 26;

fade_time = 6;
voice_button = !get_synced_var(player);
voice_lockout = 0;
voice_icon = sprite_get("_voice_button");
voice_state = 0;
cursor_bounds = false;