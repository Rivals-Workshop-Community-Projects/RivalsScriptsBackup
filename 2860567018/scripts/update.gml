
//diminishing_multi_jumps();
//accelerator_run();


if(get_player_color(player) == 17){
	init_shader();
	var cur_time = get_gameplay_time();
	rainbow_color = make_colour_hsv((cur_time/12)%255, 185, 125); //default rainbow
	rainbow_color2 = make_colour_hsv(((cur_time/12))%255, 185, 205); //default shifed halfway through cycle
	rainbow_color3 = make_colour_hsv(((cur_time/12))%255, 185, 50); //default shifed halfway through cycle
	dodge_trail_color = rainbow_color;
}

if(get_player_color(player) == 14){
    set_character_color_shading(2, 0);
    set_character_color_shading(4, 0);
    set_character_color_shading(5, 0);
    set_character_color_shading(6, 0);
    set_character_color_shading(7, 0);
}

if(free and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP) and taunt_pressed){
   set_attack(AT_TAUNT);
}

if(state == PS_PARRY and image_index == 3 and image_index != update_prev_image_index){
    spawn_hit_fx(x, y-32, hfx_egg);
    sound_play(asset_get("sfx_ice_shatter"));
}
if(state == PS_PARRY and state_timer == 0){
    spawn_hit_fx(x, y-52, hfx_special);

    sound_play(asset_get("sfx_ice_shieldup"));
}

//spawn_dust_fx(x,y,3242, 12);
//print_debug(state_timer)

update_prev_image_index = image_index;

if(state == PS_PRATLAND and prev_state == PS_PRATFALL and state_timer == 1){
     var hb = create_hitbox(AT_USPECIAL, 9, x, y);
     hb.depth = 15;
     hb.hsp = -spr_dir;
}

if(state == PS_WAVELAND and state_timer == 1){
    sound_play(asset_get("sfx_waveland_cla"), false, noone, .4, 1.1)
}

#define diminishing_multi_jumps()
//reduce height gain based on jumps used
switch(djumps){
case 0:
    djump_speed = 1;
    break;
case 1:
    djump_speed = 0;
    break;
case 2:
    djump_speed = -1;
    break;
case 3:
    djump_speed = -2;
    break;
}

#define accelerator_run()
if(state == PS_DASH){
    dash_speed = clamp(dash_speed*1.01, 0, 10);
    dash_turn_time = clamp(dash_turn_time*1.01, 0, 30);
    dash_stop_percent = clamp(dash_stop_percent*1.01, 0, .9);
} else {
    if(state!= PS_DASH_STOP and state != PS_DASH_TURN){
        dash_speed = 5;
        dash_turn_time = 10;
        dash_stop_percent = .35;
    }
}

