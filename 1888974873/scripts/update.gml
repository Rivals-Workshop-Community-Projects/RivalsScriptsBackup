user_event(14);

set_color_profile_slot(13, 0, 30, 30, 30);
set_color_profile_slot(13, 1, random_func(1,255,true), random_func(2,255,true), random_func(3,255,true));
set_color_profile_slot(13, 2, random_func(1,255,true), random_func(2,255,true), random_func(3,255,true));

if (!hitpause){
	if (state == PS_ROLL_FORWARD && window == 1 && window_timer == 0){
	    spawn_hit_fx( x, y, 13 );
	}
	
	if (state == PS_ROLL_FORWARD && window == 2 && window_timer == 8){
	    spawn_hit_fx( x, y, 13 );
	}
	
	if (state == PS_ROLL_BACKWARD && window == 1 && window_timer == 0){
	    spawn_hit_fx( x, y, 13 );
	}
	
	if (state == PS_ROLL_BACKWARD && window == 2 && window_timer == 8){
	    spawn_hit_fx( x, y, 13 );
	}
	
	if (state == PS_PARRY && window == 2 && window_timer == 18 && spr_dir = 1){
	    spawn_hit_fx( x + 4, y - 14, 13 );
	}
	
	if (state == PS_PARRY && window == 2 && window_timer == 18 && spr_dir == -1){
	    spawn_hit_fx( x - 4, y - 14, 13 );
	}
}

if (state == PS_HITSTUN || state == PS_WALL_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN){
    move_cooldown[AT_DSPECIAL] = 0;
}

if (state == PS_HITSTUN || state == PS_WALL_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN){
    move_cooldown[AT_FSPECIAL] = 0;
}

if (state == PS_HITSTUN || state == PS_WALL_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN){
    move_cooldown[AT_USPECIAL] = 0;
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
	set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
}

if (state == PS_SPAWN){
	if (state_timer <= 80){
		if (taunt_down && shield_down){
			taunt_works_again = true;
			taunt_works = true;
		}
	}
}


if (state == PS_RESPAWN){
	with (oPlayer){
		if (id != 1888974873 && player != other.player){
			other.oof = true;
		}
	}
}
else{
	oof = false;
}

if (get_gameplay_time() == 140){
    timer2 = get_game_timer();
}

//if (state == PS_CROUCH && state_timer == 4 && (prev_state != PS_LAND || prev_state != PS_LANDING_LAG)){
//	sound_play (sound_get ("dazzles_crouch"));
//}

//RUNES

//update.gml
if runesUpdated {
	if runeA { //trigger the attribute change
		dash_speed = 10;
		initial_dash_speed = 9;
	} else { //reset the attribute change
		dash_speed = 7;
		initial_dash_speed = 8;
	}
}

if runesUpdated {
	if runeB { //trigger the attribute change
		air_dodge_speed = 10;
		roll_forward_max = 14;
        roll_backward_max = 14;
        techroll_speed = 14;
	} else { //reset the attribute change
		air_dodge_speed = 8;
		roll_forward_max = 11;
        roll_backward_max = 11;
        techroll_speed = 10;
	}
}

if (state == PS_ROLL_FORWARD && state_timer == 1){
    sound_play ( sound_get ( "flipperRoll" ) );
}

if (state == PS_ROLL_BACKWARD && state_timer == 1){
    sound_play ( sound_get ( "flipperRoll" ) );
}

if runesUpdated {
	if runeC { //trigger the attribute change
		set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 5);
	} else { //reset the attribute change
		set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 70);
		set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 7);
	}
}

if (runeD && attack == AT_FSPECIAL) { //trigger the attribute change
    if (window == 2 && window_timer > 12){
        super_armor = true;
    }
    else{
        super_armor = false;
    }
}

if (url != 1888974873){
	player = -1;
	spawn_hit_fx(x,y,0);
}

var alt_cur = get_player_color(player);
if (state == PS_SPAWN && can_override){
    if (alt_cur == 12){
        if (!confirmed){
            if (up_stick_down){ //valentines
                seasonal_override = true;
                color_overriden = 1;
                init_shader();
            }
            if (right_stick_down){ //summer
                seasonal_override = true;
                color_overriden = 2;
                init_shader();
            }
            if (down_stick_down){ //halloween
                seasonal_override = true;
                color_overriden = 3;
                init_shader();
            }
            if (left_stick_down){ //christmas
                seasonal_override = true;
                color_overriden = 4;
                init_shader();
            }
            if (special_pressed){
                confirmed = true;
                sound_play(asset_get("mfx_star"));
            }
            
            if (state_timer == 90){
                if (seasonal_override == true){
                    sound_play(sound_get("doink"));
                }
                seasonal_override = false;
                can_override = false;
            }
        }
    }
}

if (runeE && attack == AT_DATTACK) { //trigger the attribute change
    attack = AT_EXTRA_1;
}

if runesUpdated {
	if runeF { //trigger the attribute change
		set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 11);
		set_hitbox_value(AT_BAIR, 2, HG_EFFECT, 11);
		set_hitbox_value(AT_BAIR, 3, HG_EFFECT, 11);
        set_hitbox_value(AT_BAIR, 4, HG_EFFECT, 11);
	} else { //reset the attribute change
	    set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 0);
	    set_hitbox_value(AT_BAIR, 2, HG_EFFECT, 0);
	    set_hitbox_value(AT_BAIR, 3, HG_EFFECT, 0);
        set_hitbox_value(AT_BAIR, 4, HG_EFFECT, 0);
	}
}

if runesUpdated {
	if runeG { //trigger the attribute change
		max_djumps = 2;
	} else { //reset the attribute change
		max_djumps = 1;
	}
}

if runesUpdated {
	if runeH { //trigger the attribute change
		set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, -1);
		set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, -1);
		set_hitbox_value(AT_FAIR, 4, HG_HITSTUN_MULTIPLIER, -1);
		set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 15);
        set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 15);
        set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 15);
	} else { //reset the attribute change
	    set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, 0);
	    set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 0);
	    set_hitbox_value(AT_FAIR, 4, HG_HITSTUN_MULTIPLIER, 0);
	    set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 5);
	}
}

if (runeI && attack == AT_FSTRONG) { //trigger the attribute change
    attack = AT_FSTRONG_2;
}

if runesUpdated {
	if runeJ { //trigger the attribute change
		set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 3);
	} else { //reset the attribute change
		set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 3);
	}
}

if runesUpdated {
	if runeK { //trigger the attribute change
		set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 10);
		set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 10);
	} else { //reset the attribute change
	    set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 5);
	    set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 5);
	}
}

if (runeL && attack == AT_USPECIAL) { //trigger the attribute change
    attack = AT_USPECIAL_2;
}

if runesUpdated {
	if runeM { //trigger the attribute change
		wave_land_adj = 1.75;
	} else { //reset the attribute change
	    wave_land_adj = 1.35;
	}
}

if runesUpdated {
	if runeN { //trigger the attribute change
		set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 15);
		set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 7);
	} else { //reset the attribute change
		set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 4);
		set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 15);
	}
}

if runesUpdated {
	if runeO { //trigger the attribute change
		knockback_adj = 1;
	} else { //reset the attribute change
	    knockback_adj = 1.08;
	}
}


//phojne
max_djumps = phone_cheats[cheat_more_djumps];

knockback_adj = phone_cheats[cheat_kb];

if (phone_cheats[cheat_cooldown]){
	move_cooldown[AT_NSPECIAL] = 0;
}

var bruh = phone_cheats[cheat_hbox];
var bruh_two = phone_cheats[cheat_hpause];

with (asset_get("pHitBox")){
    if (player == other.player){
		if (type == 1 && air_friction < .1){
            image_xscale *= bruh;
            image_yscale *= bruh;
            air_friction = .2;
            extra_hitpause += bruh_two;
        }
    }
}


//runes... 2!
if (has_rune("A")){
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_FSTRONG, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DSTRONG, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_DSTRONG, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	
	set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
}

if (has_rune("C")){
	set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 1.1);
	set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 40);
}

if (has_rune("D")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 2);
}

if (has_rune("E")){
	set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 1);
}

if (has_rune("F")){
	leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
	max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
	air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
	jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
	air_accel = .5;
	max_djumps = 2;
}

if (has_rune("G")){
	set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .9);
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 197);
}

if (has_rune("H")){
	set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .9);
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 197);
}

if (has_rune("I")){
	set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 4);
	
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 2);
	
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 2);
}

if (has_rune("J")){
	set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 6);
	
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 9);
	
	set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .07);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .07);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);
}

if (has_rune("K")){
	set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
	set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 1);
}

if (has_rune("L")){
	
	set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.2);
	set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);

	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
		if (attack == AT_FSPECIAL){
			if (window == 2){
				if (window_timer >= 5 && window_timer <= 35){
					super_armor = true;
				}
				if (window_timer == 38){
					super_armor = false;
				}
			}
			
			if (window < 6){
				vsp = clamp(vsp, -99, 3);
			}
		}
	}

}

if (has_rune("N")){
	parry_cooldown = 0;
	
	if (state == PS_PARRY){
		ground_friction = -.3;
	}
	else{
		ground_friction = .5;
	}
}







//kirby ability
if swallowed {
    swallowed = 0
    var ability_spr = sprite_get("nspecial_kirby")
    var ability_hurt = sprite_get("nspecial_kirby_hurt")
    var ability_sound = sound_get("karateMan")
    var ability_sounds = sound_get("potOut")
    var ability_hitsound = sound_get("karateManBreak")
    var ability_proj = sprite_get("nspecial_proj")
    with enemykirby {
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
        set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 25);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sounds);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 5);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, ability_sound);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 14);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
        
        set_num_hitboxes(AT_EXTRA_3, 2);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 40);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_proj);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ability_hitsound);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 12);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -3.5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, .2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, .15);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, 9);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
        
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 90);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 0);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -30);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 54);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 26);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 6);
        set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 50);
        set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITSTUN_MULTIPLIER, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 4);
        set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .4);
        set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 4);
    }
}

var myicon = sprite_get("poyo")
with enemykirby {
    newicon = myicon
}

//if (state == PS_AIR_DODGE && window_timer > 1 && window == 1 && spr_dir == 1){
//    spawn_hit_fx( x + 8, y - 15, brush_smear )
//}

//if (state == PS_AIR_DODGE && window_timer > 1 && window == 1 && spr_dir == -1){
//    spawn_hit_fx( x - 8, y - 15, brush_smear )
//}

//if (state == PS_AIR_DODGE && window_timer > 1 && window == 1 && spr_dir == -1){
//    spawn_hit_fx( x - 8, y - 15, brush_smear )
//}
