//Init
var url_count = 0;
with oPlayer if "url" in self url_count += string_digits(url);
seed = (url_count % 198) + 1; // random seed based on player characters

_init = 0;
time_max = 1200;
time_diff_max = 400;
time = [time_max-random_func(seed,time_diff_max,true),time_max-random_func(seed+1,time_diff_max,true)];
live_plats = [0,0];
x_width = get_stage_data(SD_WIDTH);
//x_mid = get_stage_data(SD_X_POS) + x_width/2;
x_left = get_stage_data(SD_X_POS);
left_blast = x_left - get_stage_data(SD_SIDE_BLASTZONE)-60;
right_blast = x_left + x_width + get_stage_data(SD_SIDE_BLASTZONE)+60;

player_count = 0; 
right_prev = 0; 
left_prev = 0; 
right = 0; 
left = 0;
right_boss_changed = false; 
left_boss_changed = false;

with (oPlayer) {
    // Fills player lists
    if (is_player_on(player)) {
        other.player_count++;
        other.players[player] = player
        other.player_list[array_length_1d(other.player_list)] = player;
    }
}

supported_chars = ds_list_create();

// Base cast
for (i = 2; i <= 16; i++) {
    ds_list_add(supported_chars, string(i));
}

ds_list_add(supported_chars, "1868240517"); // R-00
ds_list_add(supported_chars, "2157918622"); // Cupcake
ds_list_add(supported_chars, "1867608473"); // Kris
ds_list_add(supported_chars, "2229355277"); // Saffron
ds_list_add(supported_chars, "1869814191"); // sans
ds_list_add(supported_chars, "1916050290"); // Robloxian
ds_list_add(supported_chars, "1894194148"); // Acid
ds_list_add(supported_chars, "1933111975"); // Trummel 1
ds_list_add(supported_chars, "2282173822"); // Trummel 2
ds_list_add(supported_chars, "2136440419"); // Hodan
ds_list_add(supported_chars, "2201608216"); // Blake
ds_list_add(supported_chars, "2089998666"); // Big Yoshi
ds_list_add(supported_chars, "1978869652"); // Bandana
