temp_x = x - 106;
temp_y = y + 58;

temp_x2 = x - 170;
temp_y2 = y + 48;

fade_time = 6;

voice_button = 1;
voice_lockout = 0;
voice_icon = sprite_get("_voice_button");
voice_state = 0;
cursor_bounds = false;

emerald_button = 1;
emerald_lockout = 0;
emerald_icon = sprite_get("_emerald_button");
emerald_state = 0;
//cursor_bounds2 = false;

//attack_button = 1; //0 is default command grab attacks, 1 is the alternative
attack_button = !get_synced_var(player);
attack_lockout = 0;
attack_icon = sprite_get("_attack_button");
attack_state = 0;
//cursor_bounds3 = false;

//Setting the sync variable to multiple numbers
//get_synced_var(player);

//0 - Everything is off
//1 - Everything on should be the default
//2 - Emeralds and Attacks are on
//3 - Voice and Emeralds are off
//4 - Voice and Attacks are off
//5 - Voice and Emeralds only on
//6 - Voice and Attacks only on
