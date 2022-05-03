// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_USPECIAL_2 || attack == AT_DSPECIAL_2 || attack == AT_NSPECIAL_2){
    trigger_b_reverse();
}

//Jab parry stuff
if(attack == AT_JAB && was_parried){
    was_parried = false;
}

/*
//dtilt stuff
if attack == AT_DTILT {
	if window == 1 && window_timer == 5 && special_down && 5 > tapes && tapecool == 0 {
		window = 8;
		window_timer = 0;
		sound_play(sound_get("sfx-tape-1"));
	}
	if window == 8 {
		if window_timer == get_window_value(AT_DTILT, 8, AG_WINDOW_LENGTH) {
			window = 9;
			window_timer = 0;
		}
	}
	if window == 9 {
		if window_timer == 2 {
			spawn_hit_fx(x+48*spr_dir, y-15, 19);
			create_hitbox(AT_EXTRA_2, 3, x+48*spr_dir, y-15);
			tapes += 1;		
			tapecool = 180;		
			take_damage( player, -1, 2);
		}
		if window_timer == get_window_value(AT_DTILT, 9, AG_WINDOW_LENGTH) {
			window = 10;
			window_timer = 0;
		}
	}
}
*/

//Taunt stuff
if(attack == AT_TAUNT){
    if window == 2 { 
		if window_timer == 20 || window_timer == 40 {
			sound_play(asset_get("sfx_land_med2"));
		}
		if window_timer == 40 {
			if taunt_down {
				window_timer = 0;
			} else {
				spawn_hit_fx(x+30,y+10,144);
				spawn_hit_fx(x+30,y-40,144);
				spawn_hit_fx(x-30,y+10,144);
				spawn_hit_fx(x-30,y-40,144);
				sound_play(sound_get("statue"));
			}
		}
	}
}

//Stance change: Change attacks depending on whether Tape has his dispenser or note
if nodispenser {
	//Jab
	if (attack == AT_JAB){
		set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 9);
		
		set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 38);
		set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
		set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 6);
	}
	
	//UTilt
	if (attack == AT_UTILT){
		set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 4); //the joke that used to be here has been ruined
															//and on top of that i've forgotten what joke was even here
		
		set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 68);
		set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -58);
		
		set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
		set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 14);
		set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 94);
		set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 58);
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -66);
	}
	
	//UStrong
	if (attack == AT_USTRONG){
		set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 7);
		
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -78);
		set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
		set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -52);
		set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, -45);
		set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, .55);
	}
	
	//FAir
	if (attack == AT_FAIR){
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);
		
		set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
		
		set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 9);
		
		set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 50);
		set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 40);
		set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 70);
		set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
		set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .55);		
		
		set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 20);
		set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -68);
		set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 70);
		set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 36);
		set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 3);

	}
	
	//UAir
	if (attack == AT_UAIR){
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);
		
		set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 4);
		
		set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 6);
		
		set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -78);
		set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 80);
		set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 56);
		set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);	
		set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .45);
		set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .35);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
	}
} else { //Reset attacks

		//Jab
		reset_window_value(AT_JAB, 3, AG_WINDOW_LENGTH);
		
		reset_hitbox_value(AT_JAB, 1, HG_HITBOX_X);
		reset_hitbox_value(AT_JAB, 1, HG_DAMAGE);
		reset_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING);
		
		//UTilt
		reset_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH);
		reset_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH);
		
		reset_hitbox_value(AT_UTILT, 1, HG_DAMAGE);
		reset_hitbox_value(AT_UTILT, 1, HG_HEIGHT);
		reset_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y);
		
		reset_hitbox_value(AT_UTILT, 2, HG_DAMAGE);
		reset_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_UTILT, 2, HG_HITBOX_X);
		reset_hitbox_value(AT_UTILT, 2, HG_WIDTH);
		reset_hitbox_value(AT_UTILT, 2, HG_HEIGHT);
		reset_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y);
		
		//UStrong
		reset_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH);
		
		reset_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y);
		reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
		reset_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y);
		reset_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE);
		reset_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE);
		reset_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING);
		
		//FAir
		reset_attack_value(AT_FAIR, AG_LANDING_LAG);
		
		reset_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES);
		
		reset_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH);
		
		reset_hitbox_value(AT_FAIR, 1, HG_HITBOX_X);
		reset_hitbox_value(AT_FAIR, 1, HG_WIDTH);
		reset_hitbox_value(AT_FAIR, 1, HG_HEIGHT);
		reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
		
		reset_hitbox_value(AT_FAIR, 2, HG_HITBOX_X);
		reset_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y);
		reset_hitbox_value(AT_FAIR, 2, HG_WIDTH);
		reset_hitbox_value(AT_FAIR, 2, HG_HEIGHT);
		reset_hitbox_value(AT_FAIR, 2, HG_DAMAGE);
		reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
		
		//UAir
		reset_attack_value(AT_UAIR, AG_LANDING_LAG);
		
		reset_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME);
		
		reset_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH);
		reset_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH);
		
		reset_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y);
		reset_hitbox_value(AT_UAIR, 1, HG_WIDTH);
		reset_hitbox_value(AT_UAIR, 1, HG_HEIGHT);
		reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
		reset_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK);	
		reset_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE);
}

//FSpecial stuff

if attack == AT_FSPECIAL {
	can_fast_fall = false;
	if nodispenser {
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 5);
	} else {
	reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH);
	}
	
	if (window == 1 && window_timer == 1) { 
		if nodispenser {
			rolltime = 25;
		}	else {
			rolltime = 75;		
		}
	}
	
	if (window == 1 && window_timer == 8 && !nodispenser) { 
		y -= 6;
		vsp = -4;
		hsp = -6*spr_dir;
		nodispenser = 1;
		spawn_hit_fx(x,y,dispenserDisappear);
		user_event(1);
	}
	
	if window == 2 {
		hsp = -2*spr_dir;
	}
	
	if (window == 3) { //charge window
		if window_timer = 1 {
			spawn_base_dust(x, y, "dash_start");
		}
		if (special_down) {
			if window_timer >= 8 {
				window_timer = 0;
			}
			
			if window_timer == 2 {
				sound_play(asset_get("sfx_dash_start"), false, noone, 1, 1+(rolltime/100));	
			}
			
			if (100 > rolltime) { //Adding time to roll out
				rolltime += 1;
			}
		}	else { 
			window = 4;
			window_timer = 0;
			hsp = 13*spr_dir;
			sound_play( sound_get( "vroom"), true, noone, 1, 1);
		}	
	}
	if (window == 4) {
		vsp = clamp(vsp, -100, 1);
		if window_timer == 1 {
		sound_play(asset_get("sfx_blink_dash"), false, noone, 1, .7);	
		}
		has_hit = false;
		}

	if (window == 5) { //dash window
		if window_timer == 1 && !free {
		spawn_base_dust(x, y, "dash");
		}
		can_wall_jump = true;
		if rolltime > 0 {
			rolltime -= 1;
		}
		if window_timer == 5 && !hitpause {
			if rolltime > 0 {
				window_timer = 0;
			} else {
				window = 7;
				window_timer = 0;
			}
		}	
		if (2 >= rolltime) and (attack_pressed || jump_pressed || shield_pressed || special_pressed) {
				window = 7;	
				window_timer = 0;
		}
		if left_down && spr_dir == 1 {
			window = 6;
			window_timer = 0;
			spr_dir = -1;
		} else
		if right_down && spr_dir == -1 {
			window = 6;
			window_timer = 0;
			spr_dir = 1;
		}
		if has_hit && !hitpause && !was_parried {
			can_jump = true;
			can_special = true;
		}
	}
	
	if window == 6 { //turning window 
		sound_stop(sound_get("vroom"));
		rolltime -= .5;
		if window_timer == 1 {
			destroy_hitboxes();
			spawn_base_dust(x-34*spr_dir, y, "dash_start");
		}
		if window_timer == 6 {
			if hsp != 0 {
			window_timer = 5;
			} else {
			hsp = 13*spr_dir;
			sound_play( sound_get( "vroom"), true, noone, 1, 1);
			window = 5;
			window_timer = 0;
			}
		}
		if rolltime <= 0 {
			window = 7;
			window_timer = 0;
		}
	}
	if window == 7 {
		sound_stop(sound_get("vroom"));
		hsp = clamp(hsp, -6, 6);
		if has_hit && !was_parried {
			can_jump = true;
			if window_timer > 7 {
				can_attack = true;
				can_special = true;
			}
		}
	}
	move_cooldown[AT_FSPECIAL] = 50;	
}


//NSpecial stuff
if (attack == AT_NSPECIAL){
	can_fast_fall = false;
    if window == 1 && window_timer == (get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)) {
		nodispenser = 1;
		move_cooldown[AT_NSPECIAL_2] = 70;
		spawn_hit_fx(x,y,dispenserDisappear);
		user_event(1);
		if free {
			vsp = clamp(vsp, -100, -1);
		}
	}
    if window == 2 && window_timer == 3 {	
		can_jump = true;
		can_wall_jump = true;
		can_shield = true;
		can_special = true;
		can_strong = true;
	}
    if window == 2 && window_timer == (get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)) {
		if !free {
		sound_play(asset_get("sfx_land_med2"));
		spawn_base_dust(x, y, "land");
		}
	}
}
if (attack == AT_NSPECIAL_2){
	can_fast_fall = false;
    if window == 1 && window_timer == (get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH)) {
		nodispenser = 0;
		move_cooldown[AT_NSPECIAL] = 70;
		user_event(1);
		if free {
			vsp = clamp(vsp, -100, -1);
		} 
	}
	if window == 2 && window_timer == 3 {
		can_jump = true;
		can_wall_jump = true;
		can_shield = true;
		can_special = true;
		can_strong = true;
	}
	
    if window == 2 && window_timer == 10 {
		if !free {
		sound_play(asset_get("sfx_land_heavy"));
		}
	}
}

//DSpecial stuff
if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
	can_wall_jump = true;
	can_fast_fall = false;
//	if window > 2 {
//		can_move = false;
//	}

    if window == 3 || window == 4 {
		hsp = clamp(hsp, -4, 4);
	}
    if window == 2 && window_timer == 3 {
		if !nodispenser {
			move_cooldown[AT_NSPECIAL_2] = 80;
			nodispenser = 1;
			spawn_hit_fx(x,y,dispenserDisappear);
		}
		spawn_base_dust(x, y, "jump");
		user_event(1);
	}
	  if window == 3 || window == 4 {
		if (has_hit_player && !hitpause && hit_player_obj.super_armor == 0){
			hit_player_obj.hsp = lerp(hit_player_obj.hsp,hsp,0.1);
			hit_player_obj.vsp = lerp(hit_player_obj.vsp,vsp,0.01);
			hit_player_obj.x = lerp(hit_player_obj.x,x,0.1);
			hit_player_obj.y = lerp(hit_player_obj.y,y,0.1);
		}
	  }
    if window == 5 && !hitpause {
		if window_timer == 12 && free {
			window_timer = 0;
		}
		if !free {
			window = 6;
			window_timer = 0;
			spawn_base_dust(x, y, "land");
			move_cooldown[AT_DSPECIAL] = 60;
			move_cooldown[AT_DSPECIAL_2] = 60;
		}
	}
}

//FStrong stuff
if(attack == AT_FSTRONG){
   if window == 3 && window_timer == 4 {
   sound_play(asset_get("sfx_zetter_downb"), false, noone, 1, .8);
   }
}

//DStrong stuff
if(attack == AT_DSTRONG){
   if window == 3 && window_timer == 3 {
   sound_play(asset_get("sfx_zetter_downb"), false, noone, 1, .6);
   }
}

//DAttack2 dacus
if(attack == AT_EXTRA_3){
	if window == 1 && 4 > window_timer {
		can_ustrong = true;
	} else {
		can_ustrong = false;
	}
}

//UStrong stuff
if(attack == AT_USTRONG){
	can_fast_fall = false;
	can_move = false;
    if window == 2 { 
		set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, -9-(strong_charge/7));
	}
	if window == 5 && window_timer > 2 {
		set_attack_value(AT_USTRONG, AG_CATEGORY, 1);
		vsp = clamp(vsp, -2, 0);
		reset_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED);
	}
}

if(attack == AT_USTRONG_2){
	can_fast_fall = false;
	can_move = false;
    if 3 > window { 
		vsp = clamp(vsp, -9, 0);
	}
}

//grab code
if (attack == AT_USTRONG) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
}

if (attack == AT_USTRONG_2 && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= 2) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = -10 * spr_dir;
			var pull_to_y = -80;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}


//USpecial stuff
if (attack == AT_USPECIAL){
	can_wall_jump = true;
	can_fast_fall = false;
	move_cooldown[AT_USPECIAL] = 999;
	if window == 1 && window_timer == 8 {
		move_cooldown[AT_NSPECIAL_2] = 150;
		nodispenser = 1;
		spawn_hit_fx(x,y,dispenserDisappear);
		user_event(1);
	}
}

if (attack == AT_USPECIAL_2){
	if window == 1 && window_timer > 5 {
		hsp = clamp(hsp, -3, 3);
		vsp = clamp(vsp, -100, 1);
	}
	can_wall_jump = true;
	can_fast_fall = false;
}

if !(url == 2489599400) {
	set_state(PS_DEAD);
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