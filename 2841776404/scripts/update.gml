




window_time = get_window_value( attack, window, AG_WINDOW_LENGTH );
next_window_time = get_window_value( attack, window, AG_WINDOW_LENGTH ) + 1;

/*if (artificial_hitstop_time > 0 && state == PS_ATTACK_GROUND or artificial_hitstop > 0 && state == PS_ATTACK_AIR){
	pre_hitstop_hsp = hsp;
	pre_hitstop_vsp = vsp;
	hsp = 0;
	vsp = 0;
	state_timer --;
	window_timer --;
	artificial_hitstop = true;
	artificial_hitstop_time --;
}
if (artificial_hitstop_time == 0 && artificial_hitstop = true){
	hsp = pre_hitstop_hsp;
	vsp = pre_hitstop_vsp;
	artificial_hitstop = false;
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	artificial_hitstop_time = 0;
	artificial_hitstop = false;
}*/
with (oPlayer){
	//if (variable_instance_exists(id, "window_time") && variable_instance_exists(id, "next_window_time")){
	//window_time = get_window_value( attack, window, AG_WINDOW_LENGTH );
	//next_window_time = get_window_value( attack, window, AG_WINDOW_LENGTH ) + 1;
	//}
	
	/*if (artificial_hitstop_time > 0 && state == PS_ATTACK_GROUND or artificial_hitstop > 0 && state == PS_ATTACK_AIR){
	pre_hitstop_hsp = hsp;
	pre_hitstop_vsp = vsp;
	hsp = 0;
	vsp = 0;
	state_timer --;
	window_timer --;
	artificial_hitstop = true;
	artificial_hitstop_time --;
	}
	if (artificial_hitstop_time == 0 && artificial_hitstop = true){
		hsp = pre_hitstop_hsp;
		vsp = pre_hitstop_vsp;
		artificial_hitstop = false;
	}
	if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
		artificial_hitstop_time = 0;
		artificial_hitstop = false;
	}*/
}
if (state == PS_RESPAWN && window_timer > 2){
    in_suit = false;
}

var BlockDetection = collision_line(x, y-16, x + 32*spr_dir, y-16, asset_get("par_block"), false, false);
var BlockDetection_Other = collision_line(x, y-16, x + 32*-spr_dir, y-16, asset_get("par_block"), false, false);
if (BlockDetection != noone && has_rock && free == true or BlockDetection_Other != noone && has_rock && free == true){
	if (jump_pressed && state_cat == SC_AIR_NEUTRAL or jump_pressed && state == PS_ATTACK_AIR && can_wall_jump){
		if (has_walljump == true){
			if (BlockDetection_Other == noone){
			spr_dir *= -1;
			}
			set_state(PS_WALL_JUMP);
			has_walljump = false;
		}
	}
}

voice_chance = random_func(0, 9, true);
if (voice_chance < 5){
    sfx_susie_yell = sfx_susie_yell1;
} else sfx_susie_yell = sfx_susie_yell2;

if (state == PS_DOUBLE_JUMP && !has_rock){
    hovering = true;
}

if (state != PS_DOUBLE_JUMP && hovering == true && !has_rock){
    spawn_hit_fx(x, y, disappear);
    hovering = false;
}

if (has_rock == true && !free && state_cat == SC_GROUND_NEUTRAL){
    if (taunt_pressed){
        set_state(PS_ATTACK_GROUND);
        set_attack(AT_TAUNT_2);
    }
}
if (has_rock == true){
    in_suit = true;
} else if (state != PS_RESPAWN){
    in_suit = false;
}
if (suit_cooldown && suit_power >= 160){
    suit_cooldown = false;
}

if (dodge_cooloff > 0){
    dodge_cooloff --;
    has_airdodge = false;
}

if (dodge_cooloff == 0 && !has_airdodged){
    has_airdodge = true;
}

if (state == PS_AIR_DODGE){
    has_airdodged = true;
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state_cat == SC_HITSTUN){
    
        sound_stop(spin);
}
if (!has_rock){
    if (down_down && shield_pressed && get_match_setting( SET_PRACTICE )){
        suit_power = 160;
    }
    djump_speed = 2;
    if (state == PS_DOUBLE_JUMP && state_timer < double_jump_time - 4){
        if (vsp > -6){
            vsp --;
        }
    }
}
if (free == false){
    has_airdodged = false;
    dodge_cooloff = 0;
}
if (instance_exists(standby_suit)){
    suit_power = standby_suit.suit_power;
    if (place_meeting(x, y, cockpit_detector) && standby_suit.state == 0 && standby_suit.exist_timer > 12 && standby_suit.free == false && state_cat != SC_GROUND_COMMITTED && state_cat != SC_AIR_COMMITTED && state != PS_CRYSTALIZED){
    	suit_out = false;
        spawn_hit_fx(x, y - 16, 144);
        sound_play(sound_get("sfx_suit_up"));
        x = standby_suit.x;
        y = standby_suit.y;
        standby_suit.should_die = true;
        if (free == false){
        set_state(PS_ATTACK_GROUND);
        }
        else set_state(PS_ATTACK_AIR);
        set_attack(AT_DSPECIAL);
        window = 2;
        window_timer = 12;
    }
} else suit_out = false;

if (suit_power <= 0 && !suit_cooldown){
    suit_cooldown = true;
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR)){
        sound_stop(sfx_charge_loop);
        sound_stop(spin);
    }
}
if (suit_cooldown == true){
    move_cooldown[AT_DSPECIAL] = 2;
}

if (suit_cooldown == true){
    power_index += .2;
} else power_index = 0;

if (attack_charge > max_charge){
    attack_charge = max_charge;
}

if (attack_charge >= max_charge){
    attack_charged = true;
}

if ((state == PS_ATTACK_GROUND ||  state == PS_ATTACK_AIR) && attack_charge == max_charge - 1 && charge_effect = false){
    charge_effect_frame = 0;
    sound_play(sfx_charge);
    charge_effect = true;
}

if (charge_effect_frame >= 4 && charge_effect = true){
    charge_effect = false;
}
if (charge_effect == true){
    charge_effect_frame += .2;
}




if (has_rock == true && state == PS_HITSTUN && suit_power <= 0 && state_timer >= 10){
    hitpause = 1;
    hitstop = 10;
    has_rock = false;
    spawn_hit_fx(x, y - 50, 143);
    sound_play(asset_get("sfx_abyss_explosion_big"));
    sound_play(sound_get("sfx_explode"));
    create_hitbox(AT_DSPECIAL_2, 1, x, y).player = last_player;
    suit_power = 0;
    hurtbox_spr = sprite_get("hurtbox");
}
if(has_rock == true && state != PS_HITSTUN && suit_power <= 0 && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
    if (!free){set_state(PS_ATTACK_GROUND);} else set_state(PS_ATTACK_AIR);
    set_attack(AT_DSPECIAL_2);
    parried = false;
}


if (state_cat != SC_HITSTUN && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    if (back_bar > suit_power){
        back_bar --;
    }
    if (back_bar > 160){
        back_bar = 160;
    }
    if (back_bar < suit_power){
        back_bar = suit_power;
    }
}
if (!free && move_cooldown[AT_FSPECIAL] > 0){
    move_cooldown[AT_FSPECIAL] = 0;
}

if (jet_hit == true && free == false && state != PS_ATTACK_GROUND){
    set_attack_value(AT_FAIR, AG_CATEGORY, 1);
    jet_hit = false;
}

if (has_rock){
    if (shield_pressed && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        if (!free){
        set_state(PS_ATTACK_GROUND);
        } else set_state(PS_ATTACK_AIR);
            attack = AT_DSPECIAL_2;
            window = 1;
            window_timer = 0;
            parried = true;
    }
    if (char_height < suit_height){
        char_height ++;
        if (char_height < 96){
            char_height += 1;
        }
    }
    hurtbox_spr         = sprite_get("suit_hurt");
    land_sound          = sound_get("sfx_suit_land");
    jump_sound          = sound_get("sfx_suit_jump");
    djump_sound         = asset_get("sfx_metal_hit_weak");
    //effective weight
    knockback_adj       = .85;
    damage_scaling = .75;
    gravity_speed       = 0.6;
    hitstun_grav        = 0.53;
    air_friction        = 0.04;
    air_accel           = 0.3;
    max_fall            = 12;
    fast_fall           = 16;
    //movement
    ground_friction     = 0.6;
    walk_speed          = 4;
    walk_accel          = 0.25;
    //aerial
    air_max_speed       = 3.75;
    jump_speed          = 13;
    djump_accel = 0;
    djump_accel_end_time= 0;
    short_hop_speed     = 7.5;
    max_jump_hsp        = 6;
    land_time = 9;
    //misc
    if (state == PS_IDLE_AIR && jump_pressed or state == PS_FIRST_JUMP && state_timer > 16 && jump_pressed){
        if (suit_djumps == 0){
        set_state(PS_DOUBLE_JUMP);
            //sound_play(asset_get("sfx_metal_hit_weak"));
        vsp = 0;
        vsp -= 10;
            hsp = 0;
        if (left_down){
            hsp -= 5;
        }
        if (right_down){
            hsp += 5;
        }
        suit_djumps += 1;
        }
    }
    if (free == false or state_cat == SC_HITSTUN){
        suit_djumps = 0;
    }
    if (state == PS_WALK){
        /*if (state_timer == 14){
            sound_play(asset_get("sfx_metal_hit_weak"));
        }
        if (state_timer == 42){
            sound_play(asset_get("sfx_metal_hit_strong"));
            sound_play(asset_get("sfx_kragg_rock_shatter"));
            shake_camera( 3, 16 )
        }*/
    }
    if (state == PS_JUMPSQUAT){
        if (state_timer == 1){
            if (voice_chance < 5){
			sound_play(sound_get("sfx_susie_grunt2"));
            }
            //sound_play(asset_get("sfx_metal_hit_weak"));
        }
    }
    if (state == PS_LAND && state_timer == 1 && !hitpause){
        
            create_hitbox(AT_EXTRA_1, 1, x, y);
            //sound_play(asset_get("sfx_metal_hit_strong"));
            sound_play(asset_get("sfx_kragg_rock_shatter"));
            shake_camera( 3, 8 );
    }
} else{
    
    if (char_height > norm_height){
        char_height --;
        if (char_height > 58){
            char_height -= 1;
        }
    }
    
    land_sound          = asset_get("sfx_land_light");
    jump_sound          = sound_get("sfx_jump");
    djump_sound         = sound_get("sfx_djump");
    hurtbox_spr = sprite_get("hurtbox");
    //effective weight
    knockback_adj       = 1;
    damage_scaling = 1;
    gravity_speed       = 0.5;
    hitstun_grav        = 0.5;
    air_friction        = 0.03;
    air_accel           = 0.35;
    max_fall            = 10;
    fast_fall           = 13;
    //movement
    ground_friction     = 0.4;
    walk_speed          = 4.25;
    walk_accel          = 0.25;
    //aerial
    air_max_speed       = 4; 
    jump_speed          = 11;
    short_hop_speed     = 6;
    max_jump_hsp        = 6;
    land_time = 4;
    //misc
    
    if (suit_power < 160){
        suit_power += .2;
    } else suit_power = 160;
}


if (suit_power < 0){
    suit_power = 0;
}
#define spawn_base_dust // written by supersonic
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "jet djump": dlen = 21; dfx = 2; dfg = 2624;  dfa = dir != 0 ? -jet_fx_angle*dir : -jet_fx_angle*spr_dir; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

