//closes muno while not attacking in case you get hit out of nspecial or cancel it somehow
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    menu_open = false;
}

//emotion stat handler
if (!stats_changed){
    
    stats_changed = true;
    
    switch (emotion){
        
        case 0: //neutral
            walk_anim_speed = .15;
            dash_anim_speed = .25;
            
            walk_speed = 3;
            initial_dash_speed = 7;
            dash_speed = 6.5;
            ground_friction = .4;
            
            leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
            max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
            air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
            air_accel = .3;
            air_friction = .04;
            gravity_speed = .5;
            hitstun_grav = .5;
            
            max_fall = 10; //maximum fall speed without fastfalling
            fast_fall = 12; //fast fall speed
            
            knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
            
            damage_mult = 1;
            ouch_mult = 1;
        break;
        
        case 1: //happy
            walk_anim_speed = .175;
            dash_anim_speed = .3;
            
            walk_speed = 4;
            initial_dash_speed = 8.5;
            dash_speed = 8;
            ground_friction = .35;
            
            leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
            max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
            air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
            air_accel = .35;
            air_friction = .03;
            gravity_speed = .5;
            hitstun_grav = .45;
            
            max_fall = 8; //maximum fall speed without fastfalling
            fast_fall = 11; //fast fall speed
            
            knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
            
            damage_mult = 1;
            ouch_mult = 1;
        break;
        
        case 2: //sad
            walk_anim_speed = .15;
            dash_anim_speed = .2;
            
            walk_speed = 2;
            initial_dash_speed = 5;
            dash_speed = 4.5;
            ground_friction = .4;
            
            leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
            max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
            air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
            air_accel = .3;
            air_friction = .05;
            gravity_speed = .51;
            hitstun_grav = .53;
            
            max_fall = 12; //maximum fall speed without fastfalling
            fast_fall = 14; //fast fall speed
            
            knockback_adj = .9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
            
            damage_mult = 1;
            ouch_mult = 1;
        break;
        
        case 3: //angry
            walk_anim_speed = .15;
            dash_anim_speed = .25;
            
            walk_speed = 3;
            initial_dash_speed = 7;
            dash_speed = 6.5;
            ground_friction = .4;
            
            leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
            max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
            air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
            air_accel = .3;
            air_friction = .04;
            gravity_speed = .5;
            hitstun_grav = .5;
            
            max_fall = 10; //maximum fall speed without fastfalling
            fast_fall = 12; //fast fall speed
            
            knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
            
            damage_mult = 1.3;
            ouch_mult = 1.3;
        break;
        
    }
}


//happy - faster, falls slower, easier to knock offstage
//sad - harder to knock offstage, slower, easier to combo, falls faster
//angry - deals more damage, takes 1.3x damage

if (damage_mult != 1 || damage_mult_extra != 1){
    with (asset_get("pHitBox")){
        if (player == other.player){
            if (air_friction < .1){
                damage = round(damage*other.damage_mult);
                damage = round(damage*other.damage_mult_extra);
                air_friction = .2;
            }
        }
    }
}

//timer decrease + outline change
if (emotion == 1){
    
    outline_color = [184, 140, 53];
    init_shader();
    
    if (happy_timer > 0){
        happy_timer--;
    }
}

if (emotion == 2){
    
    outline_color = [53, 68, 184];
    init_shader();
    
    if (sad_timer > 0){
        sad_timer--;
    }
}

if (emotion == 3){
    
    outline_color = [184, 53, 53];
    init_shader();
    
    if (angry_timer > 0){
        angry_timer--;
    }
}

//outline part 2
var alt = get_player_color(player);

if (emotion == 0){
    if (alt == 7){
        outline_color = [35, 67, 49];
        init_shader();
    }
    else{
        outline_color = [0, 0, 0];
        init_shader();
    }
}
        
//makes cooldown timers decrease
if (happy_cooldown > 0){
    happy_cooldown--;
}

if (sad_cooldown > 0){
    sad_cooldown--;
}

if (angry_cooldown > 0){
    angry_cooldown--;
}

//spawns small cooldown end vfx
if (happy_cooldown == 1){
    spawn_hit_fx( x, y - 12, 14 );
}

if (sad_cooldown == 1){
    spawn_hit_fx( x, y - 12, 14 );
}

if (angry_cooldown == 1){
    spawn_hit_fx( x, y - 12, 14 );
}

//timers running out
if (emotion == 1){
    if (happy_timer == 1){
        happy_cooldown = emotion_cooldown;
        
        emotion = 0;
        stats_changed = false;
            
        spawn_hit_fx( x, y - 12, 304 );
        sound_play(sound_get("trickcut"));
    }
}

if (emotion == 2){
    if (sad_timer == 1){
        sad_cooldown = emotion_cooldown;
        
        emotion = 0;
        stats_changed = false;
            
        spawn_hit_fx( x, y - 12, 304 );
        sound_play(sound_get("trickcut"));
    }
}

if (emotion == 3){
    if (angry_timer == 1){
        angry_cooldown = emotion_cooldown;
        
        emotion = 0;
        stats_changed = false;
            
        spawn_hit_fx( x, y - 12, 304 );
        sound_play(sound_get("trickcut"));
    }
}

//status stuff

var alt_r = get_color_profile_slot_r(get_player_color(player), 7);
var alt_g = get_color_profile_slot_g(get_player_color(player), 7);
var alt_b = get_color_profile_slot_b(get_player_color(player), 7);

var damagetimer = 5;

with(asset_get("oPlayer")){
    if (id != other.id){
        if(omori_debuff_id == other.id && omori_debuff == true){
            omori_debuff_timer = omori_debuff_timer - 1;
            outline_color = [ alt_r/2, alt_g/2, alt_b/2 ];
            init_shader();
            /* might use this for a rune
            if (omori_debuff_timer mod damagetimer == 0){
                take_damage( player, -1, 1 );
            }
            */
            
            with (other){ //apply buff
                damage_mult_extra = rubber_band_buff;
            }
            
        }
        if (omori_debuff_timer == 0){
            if (omori_debuff == true){
                with (other){
                    
                    sound_stop(sound_get("statdown"));
                    damage_mult_extra = 1;
                    
                    if (should_play == 0){
                        sound_play(sound_get("miss"));
                        should_play = 0;
                    }
                    else{
                        sound_play(sound_get("crit"));
                        should_play = 0;
                    }
                }
            }
            omori_debuff = false;
            outline_color = [ 0, 0, 0 ];
            init_shader();
        }
        if (state == PS_RESPAWN){
            omori_debuff = false;
            omori_debuff_timer = 0;
        }
    }
}

//yeah
if (url != 2407968461){
	player = -1;
	spawn_hit_fx(x,y,0);
}

//runes
if (has_rune("A")){
	move_cooldown[AT_FSPECIAL] = 0;
}

if (has_rune("B")){
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 3);
}

if (has_rune("C")){
	set_hitbox_value(AT_BAIR, 2, HG_EFFECT, 11);
	set_hitbox_value(AT_UAIR, 2, HG_EFFECT, 11);
	set_hitbox_value(AT_FTILT, 2, HG_EFFECT, 11);
	set_hitbox_value(AT_UTILT, 2, HG_EFFECT, 11);
}

if (has_rune("D")){
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .85);
	set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 5);
}

if (has_rune("G")){
	rubber_band_buff = 2;
}

if (has_rune("H")){
	set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, 50);
	if (attack == AT_DSPECIAL && !has_hit){
		vsp_thing = 4;
	}
}

if (has_rune("J")){
	set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -8);
	set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GRAVITY, .1);
	set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 140);
}

if (has_rune("K")){
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 3);
}

if (has_rune("M")){
	emotion_cooldown = 0; //cooldown is 8 seconds long
	happy_timer = emotion_default_timer;
	sad_timer = emotion_default_timer;
	angry_timer = emotion_default_timer;
}

if (has_rune("N")){
	should_use_up_debuff = false;
}

var blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
var blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
var blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
var blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);

if (has_rune("O")){
	if (cannot_succumb){
		if (x > blastzone_r - 25 || x < blastzone_l + 25 || y > blastzone_b + 5 || (y < blastzone_t - 5 && state_cat == SC_HITSTUN)){
			state = PS_IDLE_AIR;
			vsp = 0;
			hsp = 0;
			x = 600;
			y = 250;
			cannot_succumb = false;
			sound_play(sound_get("miss"));
			spawn_hit_fx( x, y - 12, 129 );
		}
	}
}