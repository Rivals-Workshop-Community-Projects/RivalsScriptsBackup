// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FTILT || attack == AT_USTRONG || attack == AT_DAIR) && window > 1 {
    can_move = false;
}

//Cooldowns
if (attack == AT_NSPECIAL) {
    move_cooldown[AT_NSPECIAL] = 999;
}
if (attack == AT_FSPECIAL) {
	if window == 8 {
		move_cooldown[AT_FSPECIAL] = 50;
	}
	if window == 10 {
		move_cooldown[AT_FSPECIAL] = 30;
	}
}
if (attack == AT_DSPECIAL) and (window == 6) {
    move_cooldown[AT_DSPECIAL] = 30;
}
if (attack == AT_USPECIAL || attack == AT_USPECIAL_2) and (window > 3) {
    move_cooldown[AT_USPECIAL] = 30;
}

//FTILT stuff
if attack == AT_FTILT {
	if window == 2 {
		vsp = clamp(vsp, -100, 0);
	}
}

//DSpecial Stuff
if (attack == AT_DSPECIAL){
	can_fast_fall = false;

	if (window == 1) {
		reset_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE);
		reset_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE);
		shelltimer = 9;
	}
	
	if 5 > window {
		can_move = false;
	}
	if (window == 2) { //Charging
		hsp = clamp(hsp, -2, 2);
		vsp = clamp(vsp, -2, 4);
		
		if (window_timer == 2) {
			spawn_base_dust(x, y, "land", spr_dir);		
		}
		
		if (special_down && 80 > shelltimer) {
			if window_timer >= 12 {
				window_timer = 0;
			}
			
			if window_timer == 2 {
				sound_play(sound_get("sfx-shellcharge1"), false, noone, 1, 1+(shelltimer/250));	
			}
			
			if (80 > shelltimer) { //Adding time to shell dash
				shelltimer += 1;
			}
		}
		
		else { 
			window = 3;
			window_timer = 0;
			if shelltimer == 80 {
				shelltimer = 100;
			}
			if !hitpause {
				spawn_base_dust(x-12*spr_dir, y, "dash_start", spr_dir);
				sound_play(sound_get("sfx-dspecialdash"), false, noone, 1, 1.5-(shelltimer/150));	
			}
		}

	}
	
	if (window == 3) {
	    trigger_b_reverse();
		vsp = clamp(vsp, -100, 3);
		}
	
	if (window == 4) { //Da dash
	
		if (spr_dir == 1 && (place_meeting(x + 12, y, asset_get("par_block"))) || spr_dir == -1 && (place_meeting(x - 12, y, asset_get("par_block")))) && !hitpause {
			spr_dir *= -1;
			hsp *= -1;	
			spawn_hit_fx(x+26*spr_dir, y-6, 301);
			sound_play(asset_get("sfx_blow_weak1"));
		}
		
		if !hitpause {
			shelltimer -= 3;
		}
		
		if (window_timer == 1 || window_timer == 5) && !hitpause {
			if !free {
				spawn_base_dust(x, y, "dash", spr_dir);
			} else {
				spawn_base_dust(x, y, "walk", spr_dir);		
			}
		}
		
		if shelltimer > 0 {
			if window_timer == 9 {
				window_timer = 0;
			}
		} else {
			window = 5;
			window_timer = 0;
		}
		
		if free && max_fall > vsp && !hitpause {
			vsp += .4;
		}
		
		if (jump_pressed) && !free && !hitpause {
				vsp = -8;
		}		
		if (54 > shelltimer && has_hit_player) && !hitpause && !was_parried {
				can_attack = true;
				can_strong = true;
				can_ustrong = true;
				if attack_pressed {
					free = false;
					vsp = clamp(vsp, -5, 5);
					hsp = clamp(hsp, -5, 5);
				}
				if left_strong_pressed || right_strong_pressed || up_strong_pressed {
					free = false;
					vsp = clamp(vsp, -5, 5);
					hsp = clamp(hsp, -5, 5);
				}
		}
	}
	
	if (window == 5) {
	if (window_timer == 1) {		
		spawn_base_dust(x, y, "dash", spr_dir);
		}
	}
	
	if (window == 6) && !was_parried {
		can_shield = true;
		can_jump = true;
		can_attack = true;
		shelltimer = 9;
	}
	
	with (pHitBox) {
		if (player_id == other && attack == AT_USPECIAL && place_meeting(x,y,other)) && !other.has_hit && !was_parried {
			old_hsp = 7*spr_dir;
			old_vsp = -3;	
			with other {
				destroy_hitboxes();
				old_hsp = -7*spr_dir;
				old_vsp = -6;
				has_hit = true;
				sound_play(sound_get("sfx-mariohit"));
				hitpause = 1;
				hitstop = 3;
				hitstop_full = 3;			
			}		
			hitstop = 3;
			in_hitpause = 1;
			hitbox_timer = length-30;
			bounce = 1;
			grav = .25;
			other.air_friction = 0;	
			spawn_hit_fx(x, y, 304);
			}
		}
}

//FSpecial stuff 
if (attack == AT_FSPECIAL){
	can_fast_fall = false;
	if window != 9 {
		can_move = false;
	}
	if window == 3 {
		if window_timer == 6 && !hitpause {
			spawn_base_dust(x+20*spr_dir, y, "dash_start", spr_dir);
		}
	}
	
	if window == 4 || window == 5 {
		if window_timer mod 1 == 0 {
			spawn_hit_fx(x-20*spr_dir, y-56, fspecialTrail);
			spawn_hit_fx(x-20*spr_dir, y-46, fspecialTrail);
		}
		if window_timer mod 2 == 0 {
			spawn_hit_fx(x-30*spr_dir, y-52, fspecialTrail);
		}
		
		if free && ( spr_dir == 1 && (place_meeting(x + 12, y, asset_get("par_block"))) || spr_dir == -1 && (place_meeting(x - 12, y, asset_get("par_block"))) ) {
			destroy_hitboxes();
			attack_end();
			window = 9;
			window_timer = 0;
			if nyarglebargle > 0 {
			nyarglebargle--;			
			}
			can_move = true;
			move_cooldown[AT_FSPECIAL] = 45;
			spawn_hit_fx(x+26*spr_dir, y-6, 301);
			sound_play(asset_get("sfx_blow_weak1"));
		}
		vsp = clamp(vsp, -4, 4);
		if up_down {
			vsp -= .3;
			hsp -= .05*spr_dir;
		}
		if down_down & free {
			vsp += .3;
			hsp -= .05*spr_dir;
		}
		
		with (pHitBox) {
			if (player_id == other && attack == AT_USPECIAL && place_meeting(x,y,other) && !was_parried) {
				old_hsp = other.hsp;
				old_vsp = other.vsp;	
				
				with other {
					destroy_hitboxes();
					window = 9;
					window_timer = 0;
					has_hit = true;
					sound_play(sound_get("sfx-mariohit"));
				}
				y -= 2;
				hitstop = 3;
				in_hitpause = 1;
				hitbox_timer = length-30;
				grav = 0;
				other.air_friction = 0;	
				bounce = 1;
				spawn_hit_fx(x, y, 304);
			}
		}
	}
	if window == 9 {
		if window_timer == (get_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH)) {
			window = 10;
			window_timer = 0;
			if !has_hit_player {
				vsp = -5;
				hsp = -3*spr_dir;
			}
		}
	}
	
	if window == 8 {
		if window_timer == (get_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH)) && !has_hit && free {
		attack_end();
		set_state(PS_PRATFALL);
		}
	}
	
	if window == 10 {
		if window_timer == (get_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH)) && !has_hit {
		attack_end();
		if !nyarglebargle {
				set_state(PS_PRATFALL);
			}
		}
	}
	
	if window > 8 && has_hit {
		can_attack = true;
	}
}


//Taunt
if (attack == AT_TAUNT) and (window == 3) {
		if window_timer == 14 && taunt_down {
		window_timer = 13;
	}
}

if (attack == AT_TAUNT_2) {
	if window == 3 {
		if window_timer == (get_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH)) {
			window = 9;
			window_timer = 999;
			attack_end();
		}
		if taunt_pressed {
			window = 4;
			window_timer = 0;
		}
	}
	if window == 7 {
		if taunt_pressed {
			window = 1;
			window_timer = 0;
		}
	}
}

//DAttack stuff
if (attack == AT_DATTACK) {
	if !(window == 2 && has_hit) {
		can_ustrong = false;
	} else {
		can_ustrong = true;
	}
}

//NSpecial stuff
if (attack == AT_NSPECIAL) {
	can_fast_fall = false;
	if window != 5 {
		can_move = false;
	}
	if window == 1 {
		nspecialcharge = 0;	
		if window_timer == 2 {
			sound_play(sound_get("sfx-shellcharge1"), false, noone, 1, .75);	
		}
	}
	
	if window == 2 {
		if targetfound > 0 {
			if 0 == targetfoundTimer {
				targetfoundTimer = 1.5;
				sound_play(sound_get("sfx-nspecialselect"), false, noone, 1, 1.25);	
			}
			if targetfoundTimer > 1 {
				targetfoundTimer -= .125;		
			}
		}
		if window_timer == 2 || window_timer == 8 || window_timer == 14 {
			spawn_base_dust(x-20, y-10, "walk", 1);
			spawn_base_dust(x+20, y-10, "walk", -1);
		}
		if 50 >= nspecialcharge {
			nspecialcharge++;
		}
		
		if (spr_dir == 1 && hsp > -get_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED) || 
			spr_dir == -1 && get_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED) > hsp) {
			idkwhattonamethis = false;
		} else if (spr_dir == 1 && get_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED) > hsp || 
				spr_dir == -1 && hsp > -get_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED)) {
			idkwhattonamethis = true;
		}
		if idkwhattonamethis {
			hsp += spr_dir;
		} else {
			hsp -= spr_dir;		
		}
		
		if window_timer == 17 {
			window_timer = 1;
		}
		if nspecialcharge >= 20 && !special_down || nspecialcharge >= 50 {
			destroy_hitboxes();
			window = 3;
			window_timer = 0;
			if targetfound {
				var angle = point_direction(x, y, victim_x, victim_y);
				hsp = lengthdir_x(16, angle);
				vsp = lengthdir_y(16, angle);
			} else {
				hsp = 10*spr_dir;
				vsp = 15;
			}
		}
	}
	if window == 3 {
		var exploded = false;
		if targetfound && victim == 1 {
			var angle = point_direction(x, y, victim_x, victim_y);
			hsp = lengthdir_x(24, angle);
			vsp = lengthdir_y(24, angle);
		}
		if window_timer mod 1 == 0 {
			spawn_hit_fx(x-20*spr_dir, y-32, nspecialTrail);
		}

		if !hitpause && !exploded && (!free || 
		window_timer == get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH) ||
		(spr_dir == 1 && (place_meeting(x + 12, y, asset_get("par_block"))) || 
		spr_dir == -1 && (place_meeting(x - 12, y, asset_get("par_block")))) || 
		(x > victim_x-4 && victim_x+4 > x && y > victim_y-4 && victim_y+4 > y)) {
			exploded = true;
			destroy_hitboxes();
			window = 5;
			window_timer = 0;
			spawn_hit_fx(x, y-14, 112);
			sound_stop(sound_get("sfx-nspecialdash"));
			sound_play(sound_get("sfx-nspecialboom"));
			shake_camera(6,6);
			create_hitbox(AT_NSPECIAL, 3, x, y-14);
			if (spr_dir == 1 && (place_meeting(x + 12, y, asset_get("par_block"))) || spr_dir == -1 && (place_meeting(x - 12, y, asset_get("par_block")))) {
				vsp = -5;
				hsp = -3*spr_dir;
			} else {	
				spawn_base_dust(x-20, y, "dash_start", 1);
				spawn_base_dust(x+20, y, "dash_start", -1);
				vsp = -5;
				hsp = 0;
			}
		}
		
		with (pHitBox) {
			if (player_id == other && attack == AT_USPECIAL) {
				if  place_meeting(x,y,other) && other != has_hit && !was_parried {
					with other {
						has_hit = true;
						destroy_hitboxes();
						hsp = 0;
						vsp = 0;
						window = 4;
						window_timer = 2;
					}
					hitbox_timer = length;
					spawn_hit_fx(x, y, 301);
				}
			}
		}
		soft_armor = 6;
	}
	if window == 4 {
		soft_armor = 0;
		if 	window_timer == 2 && !exploded {
			spawn_hit_fx(x, y-14, 112);
			shake_camera(6,6);
			sound_stop(sound_get("sfx-nspecialdash"));
			sound_play(sound_get("sfx-nspecialboom"));
			create_hitbox(AT_NSPECIAL, 3, x, y-14);
			vsp = -5;
			hsp = 0;	
		}
		if window_timer == get_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH)-1 {
			window = 5;
			window_timer = 2;
		}
	}
	if window == 5 {
		soft_armor = 0;
	}
}

//Dust effects
if !hitpause {
	if attack == AT_FSTRONG	{
		if window == 3 && window_timer == 3 {
		spawn_base_dust(x+4*spr_dir, y, "dash_start", spr_dir);
		}
		if window == 4 && window_timer == 2 {
		spawn_base_dust(x+8*spr_dir, y, "dash", spr_dir);
		}
	}
	if attack == AT_DSTRONG && window == 3 && window_timer == 1 {
		spawn_base_dust(x-20, y, "dash_start", 1);
		spawn_base_dust(x+14, y, "dash_start", -1);
	}
	if attack == AT_USTRONG && (window == 3) && window_timer == 1 {
		spawn_base_dust(x-12, y, "dash", 1);
		spawn_base_dust(x+12, y, "dash", -1);
	}
	if attack == AT_USTRONG_2 && (window == 3) && window_timer == 1 {
		spawn_base_dust(x-12, y, "dash", 1);
		spawn_base_dust(x+12, y, "dash", -1);
	}
}

move_cooldown[AT_USPECIAL_2] = move_cooldown[AT_USPECIAL];

//USpecial stuff
if (attack == AT_USPECIAL || attack == AT_USPECIAL_2) {
	can_fast_fall = false;

	if window == 1 {
		if window_timer == 5 {
			if free && 0 > uspecialjump {
			vsp = uspecialjump;
			uspecialjump += 2;
			spawn_base_dust(x, y, "djump", 1);
			}
			sound_play(sound_get("jump"));
		}
	}
	
	if window == 2 {
		if window_timer == 5 {
			sound_play(sound_get("sfx-hammerthrow"));
		}
	}	
	if (3 > window) and !(joy_pad_idle) {
		if (spr_dir == -1 && right_down || spr_dir == 1 && left_down) {
			set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 1);
			set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, -10.5);
			}
		else 
		if (spr_dir == -1 && left_down || spr_dir == 1 && right_down) && !up_down {
			set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
			set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
		}
		else 
		if down_down {
			set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
			set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
		}
		else {
			reset_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED);
			reset_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED);
		}
	}
	
	if window == 3 && window_timer > 1 {
		if !up_down {
			can_special = true;
		}
	}
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