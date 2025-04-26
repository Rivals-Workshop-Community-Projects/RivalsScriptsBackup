// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//Flutter Kick
if (attack == AT_EXTRA_1) {
	can_wall_jump = true;
	can_attack = true;
	can_special = true;
	can_shield = true;
	can_jump = true;
	//hsp = clamp(hsp, -(air_max_speed-1), air_max_speed-1);
	
	if 3 > vsp {
	flutterTimer--;
	}
	
	if vsp > -5 {
		if vsp > 3 {
			if cookieAid {
			vsp -= .95;	
			} else {
			vsp -= .8;
			}
		} 
		else {
			if cookieAid {
			vsp -= .35;	
			} else {
			vsp -= .3;
			}
		}
	}
	
	if window_timer == 7 && flutterTimer > 0 && (jump_down || up_down) {
	window_timer = 0;
	}
	
	if !flutterAttack {
		if attack_pressed {
			vsp = clamp(vsp, -100, -5);
			flutterAttack = 1;
			spawn_base_dust(x, y, "doublejump");
			sound_play(sound_get( "yoshi_jump" ), false, noone, 1, 1.05);
			
			if right_down {
				hsp = 6;
			}
			else if left_down {
				hsp = -6;
			}
		}

		if left_strong_pressed || up_strong_pressed || right_strong_pressed {
			vsp = clamp(vsp, -100, -4);
			flutterAttack = 1;
			spawn_base_dust(x, y, "doublejump");
			sound_play(sound_get( "yoshi_jump" ), false, noone, 1, 1.05);
			
			if left_strong_pressed {
				hsp = -6;
			}		
			if right_strong_pressed {
				hsp = 6;
			}	
			if up_strong_pressed {
				vsp = -8;
			}				
		}
	}
	if has_rune("O") {
	soft_armor = 12;
	}
}

//Ground Pound (DAir)
if (attack == AT_DAIR) {
	can_fast_fall = false;
	
	if window == 4 {
		if window_timer == 39 {
		window_timer = 21;
		}
		if window_timer > 20 {
		can_jump = true;
		can_shield = true;
			if (up_down) {
			vsp -= 10;
			destroy_hitboxes();
			flutterTimer = 30;
				attack = AT_EXTRA_1;
				window = 1;
				window_timer = 0;
			}
		}
	}
	if window == 5 && window_timer == 0 {
		destroy_hitboxes();
		if !hitpause {
			sound_play(sound_get("yoshi_groundpound2"));
			spawn_hit_fx( x+40*spr_dir, y-2, beegsmokeR);
			spawn_hit_fx( x-40*spr_dir, y-2, beegsmokeL);
			shake_camera(6,7);
		}
	}
	
	if window == 6 {
		if (has_hit && window_timer == 14 || window_timer == 19) && !was_parried {
			set_state(PS_CROUCH);
			state_timer = 8;
		}
	}
}

//BAir momentum stuff
if (attack == AT_BAIR) {
	if window == 2 && window_timer == 3 {
		vsp = clamp(vsp, -100, 2);
	}
	if window == 3 && window_timer == 1 {
		vsp = clamp(vsp, -100, -2.5);
	}
}

//Jab stuff
if (attack == AT_JAB) {
	if window == 7 {
		can_attack = true;
	}
}

//DAttack stuff
if (attack == AT_DATTACK) {
	if (window > 4) && !hitpause && has_hit && down_down && attack_pressed {
		set_attack(AT_DTILT);
	}
}

//DTilt stuff
if (attack == AT_DTILT) {
	if window == 4 {
		if (has_hit && window_timer == 4 || window_timer == 6) && !was_parried {
			set_state(PS_CROUCH);
			state_timer = 8;
		}
	}
}

//DTilt rune stuff
if (attack == AT_EXTRA_3) {
	can_move = true;
	if window == 1 {
		spincharge = 30;
		reset_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK);
	}
	if window == 2 {
		if down_down {
			if attack_pressed && spincool = 0 {
				spincool = 10;
				if 50 > spincharge {
					spincharge +=5;
					set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7+(spincharge/10));
				}
				spawn_base_dust(x-10*spr_dir, y, "dash_start");
				sound_play(sound_get("soniccharge"),false,noone,1,1+(spincharge/90));
			}
			
			if window_timer == 1 {
				spawn_base_dust(x-20*spr_dir, y, "dash");
			}
			
			if window_timer == 8 {
				window_timer = 0;
			}
		} 	else {
			window = 3;
			window_timer = 0;
			hsp = (dash_speed*(spincharge/15))*spr_dir;
			sound_play(sound_get("sonicdash"));
			spawn_base_dust(x, y, "dash_start");
		}
	}
	if window == 3 {
		if spincharge > 0 {
			spincharge--;
		}
		if window_timer == 1 {
			spawn_base_dust(x, y, "dash");
		}
		if window_timer == 6 && spincharge > 0 {
			window_timer = 0;
		}
		if has_hit {
			can_jump = true;
			can_shield = true;
		}
		if spincharge == 0 || hsp == 0 && !hitpause {
		window = 4;
		window_timer = 0;
		}
	}
}

//Dust stuff
if attack == AT_DATTACK {
	if window == 1 && window_timer == 3 {
		spawn_base_dust(x+10*spr_dir, y, "jump");
	}
	if window == 3 && window_timer == 1 {
		if !hitpause {
			spawn_base_dust(x+80*spr_dir, y, "dash", -spr_dir);
			spawn_base_dust(x+60*spr_dir, y, "land");
			shake_camera(6,6);
		}
	}
}

if attack == AT_USTRONG {
	if window == 3 && window_timer == 6 {
		spawn_base_dust(x+10, y, "dash_start", -spr_dir);
		spawn_base_dust(x-10, y, "dash_start");
	}
}

if attack == AT_DSTRONG {
	if window == 3 && window_timer == 1 {
		spawn_base_dust(x, y, "jump");
	}
	if window == 5 && window_timer == 6 && !hitpause {
		spawn_hit_fx( x+50*spr_dir, y-2, beegsmokeR);
		spawn_hit_fx( x-50*spr_dir, y-2, beegsmokeL);
		shake_camera(10,6);
	}
}

if attack == AT_USPECIAL {
	if window == 2 && window_timer == 5 {
		spawn_base_dust(x, y, "jump");
	}
}

if attack == AT_DTILT {
	if window == 1 && window_timer == 6 {
		spawn_base_dust(x-14*spr_dir, y, "dash");
	}
}

if attack == AT_FTILT {
	if window == 2 && window_timer == 3 {
		spawn_base_dust(x+40*spr_dir, y, "dash", -spr_dir);
	}
}

if attack == AT_FSTRONG {
	if window == 3 && window_timer == 1 {
		spawn_base_dust(x+10*spr_dir, y, "dash_start");
	}
	if window == 5 && (window_timer == 5 && has_hit || window_timer == 8 && !has_hit) {
		spawn_base_dust(x+10*spr_dir, y, "land");
	}
}

//USpecial stuff
if (attack == AT_USPECIAL) {
	can_fast_fall = false;
	if window < 3 {
		vsp = clamp(vsp, -100, 2);
	}
	if window < 4 {
		hsp = clamp(hsp, -2, 2);
	}
	
	if window == 2 {
		if special_down && 10 > eggcharge {
			eggcharge++;
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -15-(eggcharge*.25));
			set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 7+(eggcharge*.5));
			set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6+(eggcharge*.4));
			
			if window_timer == 4 {
				window_timer = 0;
			}
		} else {
			window_timer = 5;
			sound_play( sound_get("smw2_boing"));
		}
	}	
	if window == 3 {
		soft_armor = 12;
		if window_timer == 1 {
			eggcharge = 0;
			reset_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED);
			reset_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE);
			reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
		}
	}
	if window == 4 {
		can_wall_jump = true;
		if !free {
			spawn_base_dust(x, y, "land");
			window = 5;
			window_timer = 0;
			vsp = -5;
		}
		if vsp > -1 {
			soft_armor = 0;
		}
		if window_timer == 4 {
			window_timer = 0;
		}
		if 13 > vsp {
			vsp += .2;
		}
	}

	if window == 5	{
		can_move = true;
		if window_timer == 0 && !hitpause {
		soft_armor = 0;
		destroy_hitboxes();
		spawn_hit_fx(x, y, eggBreak);
		sound_play(sound_get("ssbm_eggbreak"));
		move_cooldown[AT_USPECIAL] = 30;
		}
		if window_timer == 1 {
			set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
		}
	} else {
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
	}
}

//Ensure the egg charge variables don't linger outside the attacks they're used (like when you're hit off them)
if !(attack == AT_USPECIAL) {
	eggcharge = 0;
	}

//Taunt stuff
if (attack == AT_TAUNT) and (window == 1) and (window_timer == 1) {
	if (right_down || left_down) {
		set_attack(AT_TAUNT_2);	
	}
	sax = random_func(0, 2, false);
}
if (attack == AT_TAUNT_2) {
	if window == 3 && window_timer == 3 {
		sound_play(sound_get("sakktaunt"), false, noone, 1, .9+sax/8);
	}
	if window == 5 && window_timer == 3 {
		if taunt_down {
			window = 7;
			window_timer = 0;
		}
	}
	if window == 7 {
		if window_timer == 0 {
			sound_play( sound_get( "marioundergroundsax"), true, noone, 1.2, .95);
		}
		if taunt_down {
			suppress_stage_music( 0.3, 0.005 );
			if window_timer == 24 {
				window = 7;
				window_timer = 1;
			}
		}	else {
				window = 6;
				window_timer = 0;
				sound_stop( sound_get( "marioundergroundsax"));
		}
	}
} else {
	sound_stop( sound_get( "marioundergroundsax"));
}

if (attack == AT_EXTRA_2) {
	if window == 5 && window_timer == 8 && !was_parried { //as if you could get this move parried lmao
		set_state(PS_CROUCH);
		state_timer = 8;
	}
}

//NSpecial stuff
if (attack == AT_NSPECIAL) {
	if (has_hit_player && !hitpause && hit_player_obj.super_armor == 0){
		hit_player_obj.hsp = lerp(hit_player_obj.hsp,hsp,0.5);
        hit_player_obj.vsp = lerp(hit_player_obj.vsp,vsp,0.1);
        hit_player_obj.x = lerp(hit_player_obj.x,x,0.1);
        hit_player_obj.y = lerp(hit_player_obj.y,y,0.1);
		attack_end();
		destroy_hitboxes();
		vsp = 0;
		hsp = 0;
		
		if window == 4 && window_timer == 12 {
		set_attack(AT_NSPECIAL_2);
		move_cooldown[AT_NSPECIAL] = 50;
		}
    }
}
	
if (attack == AT_NSPECIAL_2) {
	can_fast_fall = false;
	if (2 > window && has_hit_player && !hitpause && hit_player_obj.super_armor == 0){
		hit_player_obj.hsp = lerp(hit_player_obj.hsp,hsp,0.5);
        hit_player_obj.vsp = lerp(hit_player_obj.vsp,vsp,0.1);
        hit_player_obj.x = lerp(hit_player_obj.x,x,0.1);
        hit_player_obj.y = lerp(hit_player_obj.y,y,0.1);
		vsp = 0;
		hsp = 0;
	}
}


//FSpecial stuff
if (attack == AT_FSPECIAL) {
	if window == 1 && window_timer == 1 && cookieTimer > 0 {
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -60);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -1);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
	} else if cookieTimer == 0 {
		reset_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y);
	}
	if window == 2 {
		if special_down {
			//loop
			if window_timer == 5 {
				window_timer = 2;
				sound_play(sound_get("smw2_co"));
			}
			
			if eggrising == 1 {
				eggcharge2 += .9;
				if down_down {
					eggcharge2 -= .9;
				}
			} 
			if eggrising == 0 {
				eggcharge2 -= .9;
				if down_down {
					eggcharge2 += .9;
				}
			}
			
			//Check if the egg arrow is going up or down
			if eggcharge2 == 20.7 {
				eggrising = 0;
			} else
			if eggcharge2 == -.9 {
				eggrising = 1;
			}
			
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -1-(eggcharge2*.65));
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 8-(eggcharge2*.35));
			
			set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_VSPEED, -1-(eggcharge2*.65));
            set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_HSPEED, 8-(eggcharge2*.35));	
		} 
	}
	
	
	if free && window == 3 && window_timer == 1 {
	vsp = clamp(vsp, -100, -5);
	}
	
	if window == 3 && window_timer == 7 {
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED);
	}
	
	if window == 5 {	
		move_cooldown[AT_FSPECIAL] = 60;	
	}
} else {
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED);
}


//DSpecial stuff
if (attack == AT_DSPECIAL) {
	can_fast_fall = false;	
	if (window == 1) {
		can_shield = true;
		
		if down_pressed {
			window = 5;
			window_timer = 0;
		}
	}
	
	if free && vsp > 0 {
	vsp -= .5;
	hsp = clamp(hsp, -1.5, 1.5);
	}
	
	if window == 4 {
		if window_timer == 10 {
			cookieTimer = 480;
			cookieMeter -= 1;
			move_cooldown[AT_DSPECIAL] = 960;
		}
		if window_timer > 11 {
			can_attack = true;
			can_jump = true;
			can_move = true;
			can_shield = true;
		}
	}
}

if has_rune("A") {
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 10);
	set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 10);	
	set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
}
	
if has_rune("C") {
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, -.05);
	set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 14);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 8);
	set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 150);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 150);
}

if has_rune("D") {
	set_num_hitboxes(AT_DSTRONG,3);
	set_num_hitboxes(AT_FTILT,3);
}

if has_rune("G") && move_cooldown[AT_DSPECIAL] > 0 && cookieTimer == 0 {
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 18);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 12);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 21);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 13);
	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 21);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 13);
	set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 16);
	set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 12);
}

if (has_rune("J")){
	if (attack == AT_DSPECIAL) {
	if window == 1 {
		if window_timer == 1 {
		cookieTimer = 480;
		cookieMeter -= 1;
		move_cooldown[AT_DSPECIAL] = 960;
		}
	}
}
}
if (has_rune("F")){
	cookieMeter = 3;
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