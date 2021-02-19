//update

//fastfall prat fall piano hurtbox
if (state == PS_PRATFALL && fast_falling){
    create_hitbox(AT_EXTRA_1, 4, x, y);
    prat_land_time = 20;
}

if (state == PS_PRATFALL && !fast_falling){
    prat_land_time = 3;
}

if get_player_color(player) = 15 {
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; 

color_rgb=make_color_rgb(167, 186, 74); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 15, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

color_rgb=make_color_rgb(83, 122, 62); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 15, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

color_rgb=make_color_rgb(78, 86, 48); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 15, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

color_rgb=make_color_rgb(187, 168, 224); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 15, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

color_rgb=make_color_rgb(148, 121, 183); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 15, 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
}

//changing fspecial pianoman
if (special_pressed && shield_pressed && state_timer == 1){
if (lilman == 4) {
    lilman = 1
    sound_play(sound_get ("pianoman1select"));
} else if (lilman == 1) {
lilman = 2
sound_play(sound_get ("pianoman2select"));
} else if (lilman == 2) {
lilman = 3
sound_play(sound_get ("pianoman3select"));
} else if (lilman == 3) {
lilman = 4
sound_play(sound_get ("pianoman4select"));
}
}

//changing moon
if (attack_pressed && shield_pressed && state_timer == 1){
if (moontype == 3) {
    moontype = 2
    sound_play(sound_get ("moonswitch"));
} else if (moontype == 2) {
    moontype = 1
    sound_play(sound_get ("moonswitch"));
} else if (moontype == 1) {
    moontype = 3
    sound_play(sound_get ("moonswitch"));
}
                    }

// update.gml

with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        sleepytimeszzz = false;
        sleepytimesr = 0;
            jump_speed = init_jump_speed
            short_hop_speed = init_sh_speed
            djump_speed = init_djump_speed
    
        
    }
}

with(asset_get("oPlayer")){
    if (id != other.id){
        if(sleepytimeszzzid == other.id && sleepytimeszzz == true){
            sleepytimesr = sleepytimesr - 1;
            outline_color = [ 0, 175, 174 ];
            init_shader();
            
            //making guys slower
            if(sleepytimesr == 198){
            jump_speed = (init_sh_speed/2)
            short_hop_speed = (init_sh_speed/2)
            djump_speed = (init_djump_speed/2)
            knockback_adj = (init_knockback_adj*1.25)
            }
        if (sleepytimesr == 1){
            jump_speed = init_jump_speed
            short_hop_speed = init_sh_speed
            djump_speed = init_djump_speed
              }
        }
        if (sleepytimesr == 0){
            sleepytimeszzz = false;
            outline_color = [ 0, 0, 0 ];
            init_shader();
}
}
}

