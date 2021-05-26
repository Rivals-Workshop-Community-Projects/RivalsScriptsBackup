//init-shader

//print(object_index)
//if !("cssTimer" in self) cssTimer = 0;
if !("meter_cur" in self) meter_cur = 50;
if !("meter_max" in self) meter_max = 100;
if !("meter_flipped" in self) meter_flipped = false;

var meter_mod = 10;
if meter_cur/meter_max < 0.5 {
    meter_mod = -10;
}

if meter_flipped {
    set_color_profile_slot( 0, 4, 255, 0, 0 );
} else {
    set_color_profile_slot( 0, 4, 26, 0, 0 );
}


set_color_profile_slot_range( 4, 1, 1, round((meter_cur*91/meter_max)-1));
set_color_profile_slot_range( 3, 1, 1, 255);


var alt_cur = get_player_color(player);

if variable_instance_exists(self, "timer") && !(state == PS_PARRY && window == 1) {
    set_character_color_shading(3, 0);
    set_character_color_shading(4, 0);
}

//victory screen draw

if object_index == asset_get("draw_result_screen") {
    if alt_cur == 0 {
        set_character_color_slot(4, 255, 255, 255, 1);
        set_character_color_slot(3, 181, 30, 30, 1);
    }
}

var alt_cur = get_player_color(player);
if alt_cur == 0 {
    set_character_color_slot(3, 255, 255, 255, 1);
    set_article_color_slot(3, 255, 255, 255, 1);
    set_character_color_slot(4, 181, 30, 30, 1);
    set_article_color_slot(4, 181, 30, 30, 1);
}

//print(object_index)