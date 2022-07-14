//stuff


knockback_adj = shields_up ? meteor_kb_adj : core_kb_adj; // change weight based on shield up or not

if state == PS_PARRY && state_timer == 1 {
    sound_play(sfx_poke_reflect,false,noone,0.65,1);
    if !shields_up && place_meeting(x,y,meteor_id) && meteor_id.rock_type == "sand" { //regain armor
        sound_play(asset_get("sfx_bird_sidespecial"),false,noone,0.4,1.65);
        sound_play(sfx_poke_sandstorm,false,noone,0.85,1.35);
        var h = spawn_hit_fx(x,y, hfx_sand_absorb);
        h.depth = depth -1;
        meteor_id.should_die = true;
        shields_up = true;
    }
}

if !shields_up {
    armorless_timer += 1;
    if armorless_timer > armorless_damage_time {
        if armorless_timer mod 30 == 0 {
            take_damage(player,-1,1);
        }
    }
} else {
    armorless_timer = 0;
}

//puff djump scaling
djump_speed = ease_linear(8,4,djumps,max_djumps);


//visual stuff
//texture_timer += 0.25;
if get_player_color(player) == 5 {
    hue_offset+=hue_speed;
    hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range
    color_rgb=make_color_rgb(64, 248, 255); //input rgb values here, uses rgb to create a gamemaker colour variable
    hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
    color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
    set_color_profile_slot(5, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    init_shader();
}