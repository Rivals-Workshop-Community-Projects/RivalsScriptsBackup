temp_x = x - 100;
temp_y = y + 84;

temp_x2 = x - 170;
temp_y2 = y + 48;

fade_time = 6;
voice_button = !get_synced_var(player);
voice_lockout = 0;
voice_icon = sprite_get("_voice_button");
voice_state = 0;
cursor_bounds = false;

emerald_button = 1;
emerald_lockout = 0;
emerald_icon = sprite_get("_emerald_button");
emerald_state = 0;
cursor_bounds2 = false;