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

var alt_cur = get_player_color(player);

var ml = alt_cur == 0 ? [181,30,30] : [get_color_profile_slot_r(alt_cur,4),get_color_profile_slot_g(alt_cur,4),get_color_profile_slot_b(alt_cur,4)]
var md = alt_cur == 0 ? [104,17,17] : [get_color_profile_slot_r(alt_cur,7),get_color_profile_slot_g(alt_cur,7),get_color_profile_slot_b(alt_cur,7)]
var col_l = make_color_rgb(ml[0],ml[1],ml[2])
var col_d = make_color_rgb(md[0],md[1],md[2])
var art_l = ml
var art_d = md
if ("break_active" in self) && break_active {
    col_l = break_col
    col_d = break_col2
    
    ml = [color_get_red(col_l),color_get_green(col_l),color_get_blue(col_l)]
    md = [color_get_red(col_d),color_get_green(col_d),color_get_blue(col_d)]
}

if meter_flipped {
    set_color_profile_slot( 0, 4, 255, 0, 0 );
    set_color_profile_slot( 0, 7, 0, 255, 0 );
} else {
    set_color_profile_slot( 0, 4, 26, 0, 0 );
    set_color_profile_slot( 0, 7, 0, 26, 0 );
}


set_color_profile_slot_range( 4, 1, 1, ceil((meter_cur*91/meter_max)-1));
set_color_profile_slot_range( 3, 1, 1, 255);

set_color_profile_slot_range( 7, 1, 1, ceil((meter_cur*91/meter_max)-1));
set_color_profile_slot_range( 6, 1, 1, 255);



if variable_instance_exists(self, "timer") && !(state == PS_PARRY && window == 1) {
    set_character_color_shading(3, 0);
    set_character_color_shading(4, 0);
    
    set_character_color_shading(6, 0);
    set_character_color_shading(7, 0);
}

//victory screen draw

if object_index == asset_get("draw_result_screen") {

    if alt_cur == 0 set_character_color_slot(4, 255, 255, 255, 1);
    //set_character_color_slot(3, ml[0], ml[1], ml[2], 1);
        
    if alt_cur == 0 set_character_color_slot(6, 169, 172, 188, 1);
    //set_character_color_slot(7, md[0], md[1], md[2], 1);

}

//print(a)
//print(object_index)

//'cs_playerbg_obj'

//light shades
if alt_cur == 0 {
    set_character_color_slot(3, 255, 255, 255, 1);
    set_article_color_slot(3, 255, 255, 255, 1);
}
set_character_color_slot(4, ml[0], ml[1], ml[2], 1);
set_article_color_slot(4, art_l[0], art_l[1], art_l[2], 1);
    
//dark shades
if alt_cur == 0 {
    set_character_color_slot(6, 169, 172, 188, 1);
    set_article_color_slot(6, 169, 172, 188, 1);
}
set_character_color_slot(7, md[0], md[1], md[2], 1);
set_article_color_slot(7, art_d[0], art_d[1], art_d[2], 1);


//print(object_index)