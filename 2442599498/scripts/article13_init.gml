//ratings
timer = 0;

depth = 6;
sprite_index = asset_get("empty_sprite");

rating_level = 6900;
rating_level_max = 10000;

purple_ymod = array_create(10);
for (var i = 0; i < array_length(purple_ymod); i++) {
    purple_ymod[i] = random_func_2(i, 30, true);
}

alpha = 0.5;

display_text = [undefined, 0]; //popup text for rating boosts and stuff
display_text_timer = 0;
display_text_increment = 0;

can_deal_damage = false;

disable_movement = true;