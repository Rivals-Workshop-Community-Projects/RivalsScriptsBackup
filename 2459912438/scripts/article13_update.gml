//
timer++;

player_id.rating_level = rating_level;
player_id.rating_level_max = rating_level_max;

if timer mod 30 == 0 {
    for (var i = array_length(purple_ymod) - 1; i >= 0; i--) {
        if i == 0 {
            purple_ymod[i] = random_func_2(0, 30, true);
        } else {
            purple_ymod[i] = purple_ymod[i - 1];
        }
    }
}

if display_text[0] != undefined && display_text_timer == 0 {
    display_text_timer = 120;
    display_text_increment = 0;
}

display_text_increment++;

if display_text_timer > 0 {
    display_text_timer--;
}

if display_text_timer == 0 {
    display_text = [undefined, 0];
}