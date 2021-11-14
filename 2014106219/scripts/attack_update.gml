//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2){
    can_fast_fall = false;
	if (window == 4 && window_timer > 2 || window == 5) {
		can_attack = true;
		can_strong = true;
		can_special = true;
	}
}

//DSpecial stuff
if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2) {
	can_wall_jump = true;
	can_fast_fall = false;
	can_move = false;
	if window == 2 && window_timer == 2 {
		spawn_base_dust(x, y, "dash_start");
	}
	if window == 2 || window == 3 || window == 4 {
		off_edge = true;
	} else {
		off_edge = false;
	}
}

if (attack == AT_DSPECIAL_AIR || attack == AT_DTHROW) {
	if window == 1 && 10 > window_timer && window_timer > 2 && (spr_dir == 1 && right_down || spr_dir == -1 && left_down) && !down_down {
		set_attack(AT_DSPECIAL);
		window = 1;
		window_timer = 3;
	}
	can_wall_jump = true;
	can_fast_fall = false;
	can_move = false;
	if (window == 3 || window == 4) && !free {
		destroy_hitboxes();
		sound_play(asset_get("sfx_zetter_downb"));
		window = 6;
		window_timer = 0;
		spawn_base_dust(x, y, "land");
	}
	if window == 5 {
		if window_timer == 1 {
			vsp = clamp(vsp, -100, 5);
			hsp = clamp(hsp, -3, 3);
		}
		if !free {
			set_state(PS_LANDING_LAG);
		}
	}
}

if (attack == AT_DSPECIAL_AIR) {
	if window == 6 && window_timer == 3 {
		window = 7;
		window_timer = 0;
	}
}

if (attack == AT_DTHROW) {
	if (window == 3 || window == 4) && (window_timer == 1 || window_timer mod 3 == 0) && !hitpause {
			spawn_hit_fx(x-10*spr_dir, y-13, nspecialAfter);
			spawn_hit_fx(x+20*spr_dir, y-25, nspecialAfter);
			spawn_hit_fx(x+2*spr_dir, y-41, nspecialAfter);
		}	
	if window == 6 && window_timer == 12 {
		window = 7;
		window_timer = 0;
	}
	if window == 6 && (window_timer == 2 || window_timer == 5 || window_timer == 8) && !hitpause {
		sound_play(asset_get("sfx_absa_new_whip1"));
	}
}

if (attack == AT_DSPECIAL_2) {
	if (window == 3 || window == 4) && (window_timer == 1 || window_timer mod 3 == 0) && !hitpause {
			spawn_hit_fx(x-10*spr_dir, y-13, nspecialAfter);
			spawn_hit_fx(x+20*spr_dir, y-25, nspecialAfter);
			spawn_hit_fx(x+2*spr_dir, y-41, nspecialAfter);
		}
}

//NSpecial charge
if (attack == AT_NSPECIAL){
	can_fast_fall = false;
	
    if (window == 2){ //CHARGING
		can_jump = true;
		if (shield_pressed) { //Shield storing
			window = 6;
			window_timer = 6;
		}
		if (special_down) {
			if (window_timer == 20){ //loop
				window_timer = 1;
			}
			if (45 > wblastcharge) { //Adding charge
			wblastcharge += .5;
				if wblastcharge == 5 || wblastcharge == 25 || wblastcharge == 45 {
					sound_play(asset_get("sfx_ori_ustrong_charge"), false, noone, 1, 1+(wblastcharge/40));		
					}		
			}
		}
		else { //Releasing special to use the move		
				if (wblastcharge > 44) { //fully charged
						wblastcharge = 0;
						window = 5;
						window_timer = 0;
				}
				else if (wblastcharge > 24){ //partially charged
						wblastcharge = 0;
						window = 4;
						window_timer = 0;
					}
					else { //uncharged
						wblastcharge = 0;
						window = 3;
						window_timer = 0;
					}
				}
			}
	if (window == 3 || window == 4 || window == 5) {
		can_jump = false;
		if window_timer == 6 {
			wblastcharge = 0;
		}
		if window_timer == 10 { //endlag
			window = 6;
			window_timer = 0;
		}
	}
}
		
//UAir momentum stuff
if (attack == AT_UAIR && !hitpause) {
	if window == 1 && window_timer == 9 {
	vsp = clamp(vsp, -100, -2);
	}
	if window == 3 && 6 > window_timer {
		if attack_down || strong_down || up_strong_down {
			vsp = clamp(vsp, -100, 2);
			can_fast_fall = false;
		} else {
			can_fast_fall = true;
		}
	}
}	

//Ustrong grab stuff
if (attack == AT_USTRONG) {
	if window == 4 || window == 5 || window == 6 && window_timer < 2 {
		if (has_hit_player && !hitpause && hit_player_obj.super_armor == 0){
		hit_player_obj.hsp = lerp(hit_player_obj.hsp,hsp,0.1);
        hit_player_obj.vsp = lerp(hit_player_obj.vsp,vsp,-0.1);
        hit_player_obj.x = lerp(hit_player_obj.x,x,0.1);
        hit_player_obj.y = lerp(hit_player_obj.y,y,0.1);
		}
	}
}

if (attack == AT_USTRONG_2) {
	if window == 4 || window == 5 || window == 6 || window == 7 || window == 8 || window == 9 {
		if (has_hit_player && !hitpause && hit_player_obj.super_armor == 0){
		hit_player_obj.hsp = lerp(hit_player_obj.hsp,hsp,0.1);
        hit_player_obj.vsp = lerp(hit_player_obj.vsp,vsp,-0.1);
        hit_player_obj.x = lerp(hit_player_obj.x,x,0.1);
        hit_player_obj.y = lerp(hit_player_obj.y,y,0.1);
		}
	}
}

//NSpecial cooldown
if (attack == AT_NSPECIAL) and (window == 7) and (window_timer == 3) {
    move_cooldown[AT_NSPECIAL] = 45;
	move_cooldown[AT_FSPECIAL] = 30;
}
//DSpecial cooldown
if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2) and (window == 5) and (window_timer == 14) {
    move_cooldown[AT_DSPECIAL] = 50;
	move_cooldown[AT_DSPECIAL_AIR] = 50;
}

if (attack == AT_DSPECIAL_AIR) and (window == 5 && window_timer == 14 || window == 6 && window_timer == 2) {
    move_cooldown[AT_DSPECIAL] = 50;
	move_cooldown[AT_DSPECIAL_AIR] = 50;
}

//FSpecial cooldown
if (attack == AT_FSPECIAL && window == 1 && window_timer == 1 && (ballOut || ballDown > 0) ) {
	attack = AT_FSPECIAL_AIR;
	window = 1;
	window_timer = 1;
	}

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2) and (window == 4) and (window_timer == 3) {
    move_cooldown[AT_FSPECIAL] = 30;
    move_cooldown[AT_NSPECIAL] = 30;
	}


//Attacks deplete wblastcharge
//2 bars
if wblastcharge >= 25 {
	//UStrong2
	if (attack == AT_USTRONG_2) and (window == 4) and (window_timer == 1) {
		wblastcharge -= 25;
	}
}
//3 bars
if wblastcharge >= 45 {
	//DSpecial2
	if (attack == AT_DSPECIAL_2) and (window == 2) and (window_timer == 3) {
		wblastcharge -= 45;
	}
	//DSpecial Air 2
	if (attack == AT_DTHROW) and (window == 2) and (window_timer == 3) {
		wblastcharge -= 45;
	}
	//DTilt2
	if (attack == AT_EXTRA_3) and (window == 4) and (window_timer == 1) {
		wblastcharge -= 45;
	}
	//FAir2
	if (attack == AT_EXTRA_2) and (window == 5) and (window_timer == 1) {
		wblastcharge -= 45;
	}
	//FSpecial2
	if (attack == AT_FSPECIAL_2) and (window == 3) and (window_timer == 5) {
		wblastcharge -= 45;
	}
}

//USpecial stuff
if (attack == AT_USPECIAL) {
	if (window == 2 && window_timer == 1) {
	vsp = clamp(vsp, -1, 0);
	}
	hsp = clamp(hsp, -3, 3);
	can_wall_jump = true;
	if (window < 7 || window == 7 && 10 > window_timer) {
	can_fast_fall = false;
	}
	else {
	can_fast_fall = true;
	}

	if (window >= 2) and (vsp > -6.5) and (6 > window) {
			vsp -= .65;	
	}
	
	if (window > 5){
		destroy_hitboxes();
		if !free {
		set_state(PS_PRATLAND);
		}
	}
	
	//Use wblastcharge for USpecial to go higher
	if (window > 2) and (wblastcharge > 0) {
		if (special_down) {
			vsp -= .5;
			wblastcharge -= 1;
			
			if wblastcharge mod 15 == 0 {
				sound_play(asset_get("sfx_ori_ustrong_charge"), false, noone, 1, 1+(wblastcharge/30));		
				}
			}
	}
}

//Change magic rod attacks and specials when at high enough meter and pressing an input
	
if (attack == AT_USTRONG && wblastcharge > 24) {
		if window == 2 && strong_charge == 13 {
			sound_play(asset_get("sfx_may_arc_cointoss"));
		}
		if window == 3 && strong_charge >= 13 {
			attack = AT_USTRONG_2;
			window = 3;
			window_timer = 0;
		}
	}
	
if (attack == AT_DSPECIAL && window == 2 && window_timer == 2 && special_down && wblastcharge >= 45) {
	attack = AT_DSPECIAL_2;
	window = 2;
	window_timer = 0;
	sound_play(asset_get("sfx_may_arc_cointoss"));		
	}
	
if (attack == AT_DSPECIAL_AIR && window == 2 && window_timer == 2 && special_down && wblastcharge >= 45) {
	attack = AT_DTHROW;
	window = 2;
	window_timer = 0;
	sound_play(asset_get("sfx_may_arc_cointoss"));		
	}

if (attack == AT_FSPECIAL && window == 2 && window_timer == 7 && special_down && wblastcharge > 44) {
	attack = AT_FSPECIAL_2;
	window = 1;
	window_timer = 6;
	sound_play(asset_get("sfx_may_arc_cointoss"));
	}


if (attack == AT_FAIR && window == 2 && window_timer == 4 && (attack_down || strong_down || left_strong_down || right_strong_down) && wblastcharge > 44) {
	attack = AT_EXTRA_2;
	window = 2;
	window_timer = 2;
	sound_play(asset_get("sfx_may_arc_cointoss"));		
	}
	
if (attack == AT_DTILT && window == 2 && window_timer == 3 && attack_down && wblastcharge > 44) {
	attack = AT_EXTRA_3;
	window = 2;
	window_timer = 1;
	sound_play(asset_get("sfx_may_arc_cointoss"));		
	}

//Taunt(nothing for now)
	
//sfx things because the window indexes kinda suck
if 	(attack == AT_DTILT && window == 3 && window_timer == 2) {
	sound_play(asset_get("sfx_zetter_shine"));
}

if 	(attack == AT_EXTRA_3 && window == 3 && window_timer == 3) {
	sound_play(asset_get("sfx_absa_kickhit"));
}


//FSpecial angling
if (attack == AT_FSPECIAL) and (3 > window) and !(joy_pad_idle) {
	if(joy_dir >= 30 && joy_dir <= 170) {
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, .5);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -11);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, .001);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, .7);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
		}
	else 
	if(joy_dir <= 330 && joy_dir >= 190) {
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 5);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 2);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, .65);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	}
	else {
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR);
	}
}

//FSpecial2 angling
if (attack == AT_FSPECIAL_2) and (3 > window) and !(joy_pad_idle) {
	if(joy_dir >= 30 && joy_dir <= 170) {
		set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_HSPEED, .65);
		set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -10);
		set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, .55);
		set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
		}
	else 
	if(joy_dir <= 330 && joy_dir >= 190) {
		set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 6);
		set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_VSPEED, 2);
		set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, .7);
		set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
		
	}
	else {
		reset_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_HSPEED);
		reset_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_VSPEED);
		reset_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GRAVITY);
		reset_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR);
	}
}

//FTilt RPS
if (attack == AT_FTILT) {
	if (window == 1) and !(joy_pad_idle) {
		if up_down {
			rps = 2;
		}
		else if down_down {
			rps = 1;
		}
		else { rps = 0; }
	}
	
	if (rps == 0) { //Rock
		reset_attack_value(AT_FTILT, AG_SPRITE);
		
		reset_num_hitboxes(AT_FTILT);
		
		reset_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME);
		reset_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_FTILT, 1, HG_HIT_SFX);
		reset_hitbox_value(AT_FTILT, 1, HG_ANGLE);
		reset_hitbox_value(AT_FTILT, 1, HG_THROWS_ROCK);
		reset_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER);
		reset_hitbox_value(AT_FTILT, 1, HG_TECHABLE);
		reset_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE);	
	}
	if (rps == 1) { //Paper
		set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt_p"));
		
		set_num_hitboxes(AT_FTILT,1);
		
		set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
		set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_ell_dtilt2"));
		set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 40);
		set_hitbox_value(AT_FTILT, 1, HG_THROWS_ROCK, 0);
		set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 0);
		set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, 12);
	}
	if (rps == 2) { //Scissors
		set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt_s"));
		
		set_num_hitboxes(AT_FTILT,2);
		
		set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .6);
		set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_ell_drill_stab"));
		set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 60);
		set_hitbox_value(AT_FTILT, 1, HG_THROWS_ROCK, 2);
		set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 1.05);
		set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 0);
		set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, 0);	
	}
}

//VFX Stuff

if (attack == AT_USTRONG) && !hitpause {
	if (window == 3 && window_timer == 4) {
		spawn_hit_fx( x+( (get_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X)) *spr_dir), y+(get_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y)), 109);
	}
	if (window == 4 && window_timer == 4) {
		spawn_hit_fx( x+( (get_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X)) *spr_dir), y+(get_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y)), 109);
	}	
	if (window == 5 && window_timer == 4) {
		spawn_hit_fx( x+( (get_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X)) *spr_dir), y+(get_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y)), 109);
	}
}

if (attack == AT_DTHROW) && !hitpause {
	if (window == 6 && window_timer == 2) {
		spawn_hit_fx( x+( (get_hitbox_value(AT_DTHROW, 6, HG_HITBOX_X)) *spr_dir), y+(get_hitbox_value(AT_DTHROW, 6, HG_HITBOX_Y)), 109);
	}
	if (window == 6 && window_timer == 5) {
		spawn_hit_fx( x+( (get_hitbox_value(AT_DTHROW, 7, HG_HITBOX_X)) *spr_dir), y+(get_hitbox_value(AT_DTHROW, 7, HG_HITBOX_Y)), 109);
	}	
	if (window == 6 && window_timer == 8) {
		spawn_hit_fx( x+( (get_hitbox_value(AT_DTHROW, 8, HG_HITBOX_X)) *spr_dir), y+(get_hitbox_value(AT_DTHROW, 8, HG_HITBOX_Y)), 115);
	}
}


if (attack == AT_DTILT) && !hitpause {
	if (window == 3 && window_timer == 2) {
		spawn_hit_fx( x+(54*spr_dir), y-10, 109);
	}
}

if (attack == AT_EXTRA_3) && !hitpause {
	if (window == 3 && window_timer == 3) {
		spawn_hit_fx( x+(54*spr_dir), y-10, 115);
	}
}

if (attack == AT_FAIR) && !hitpause {
	if (window == 3 && window_timer == 1) {
		spawn_hit_fx( x+(((get_hitbox_value(AT_FAIR, 1, HG_HITBOX_X))+4) *spr_dir), y+(get_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y)), 109);
	}
	if (window == 4 && window_timer == 1) {
		spawn_hit_fx( x+(((get_hitbox_value(AT_FAIR, 2, HG_HITBOX_X))+4) *spr_dir), y+(get_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y)), 109);
	}
	if (window == 5 && window_timer == 1) {
		spawn_hit_fx( x+(((get_hitbox_value(AT_FAIR, 3, HG_HITBOX_X))+4) *spr_dir), y+(get_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y)), 109);
	}
}

if (attack == AT_EXTRA_2) && !hitpause {
	if (window == 3 && window_timer == 1) {
		spawn_hit_fx( x+(((get_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X))+4) *spr_dir), y+(get_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y)), 109);
	}
	if (window == 4 && window_timer == 1) {
		spawn_hit_fx( x+(((get_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_X))+4) *spr_dir), y+(get_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_Y)), 109);
	}
	if (window == 5 && window_timer == 1) {
		spawn_hit_fx( x+(((get_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_X))+4) *spr_dir), y+(get_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_Y)), 109);
	}
}


if (attack == AT_USTRONG_2) && !hitpause {
	if (window == 3 && window_timer == 4) {
		spawn_hit_fx( x+( (get_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X)) *spr_dir), y+(get_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y)), 109);
	}
	if (window == 4 && window_timer == 2) {
		spawn_hit_fx( x+( (get_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_X)) *spr_dir), y+(get_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_Y)), 109);
	}	
	if (window == 5 && window_timer == 2) {
		spawn_hit_fx( x+( (get_hitbox_value(AT_USTRONG_2, 5, HG_HITBOX_X)) *spr_dir), y+(get_hitbox_value(AT_USTRONG_2, 5, HG_HITBOX_Y)), 109);
	}
	if (window == 6 && window_timer == 2) {
		spawn_hit_fx( x+( (get_hitbox_value(AT_USTRONG_2, 6, HG_HITBOX_X)) *spr_dir), y+(get_hitbox_value(AT_USTRONG_2, 6, HG_HITBOX_Y)), 109);
	}
	if (window == 7 && window_timer == 2) {
		spawn_hit_fx( x+( (get_hitbox_value(AT_USTRONG_2, 7, HG_HITBOX_X)) *spr_dir), y+(get_hitbox_value(AT_USTRONG_2, 7, HG_HITBOX_Y)), 109);
	}
	if (window == 8 && window_timer == 2) {
		spawn_hit_fx( x+( (get_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_X)) *spr_dir), y+(get_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_Y)), 109);
	}
}

//Hud thingies
if 	(attack == AT_NSPECIAL && window == 2 && window_timer > 0) {
	showHUD = true;
	}
	else { 
	showHUD = false;
	}
	
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;