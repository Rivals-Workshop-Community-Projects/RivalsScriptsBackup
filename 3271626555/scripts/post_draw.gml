//
if (indicator == true){
    var stamina_indicator;
    stamina_indicator = 30-stamina;
    if (stamina_indicator < 0) stamina_indicator = 0;
    draw_sprite(sprite_get("meter"), 0, x-32, y-30-char_height);
    if (stamina_indicator > 0 && stamina_cooldown <= 30)
    draw_sprite(sprite_get("meter_bar2"), 30-stamina_cooldown, x-32, y-30-char_height);
    draw_sprite(sprite_get("meter_bar"), stamina_indicator, x-32, y-30-char_height);
}