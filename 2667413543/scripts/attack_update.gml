//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}



// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		if window == 12 && window_timer >= 6 && (attack_pressed || attack_down){
		    window = 1;
		    window_timer = 0;
		}
		if (window == 1 || window == 4 || window == 7 || window == 10) && window_timer == 4 && !hitpause{
		    create_hitbox(AT_JAB, 1, x, y-32);
		}
		break;
	case AT_FTILT:
	case AT_DTILT:
		break;
	case AT_UTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
		}
		break;
	case AT_FSTRONG:
        if taunt_down{
		    set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("boom"));
		    } else {
		    reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX);
		    }
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		break;
	
	case AT_USTRONG:
	    if taunt_down{
		    set_window_value(AT_USTRONG, 2,  AG_WINDOW_SFX, sound_get("reverb"));
			} else {
			reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX);
			}
	    if window == 2 && window_timer == 1{
	        y += -66;
		    array_push(phone_dust_query, [x-4*spr_dir, y+66, "jump", spr_dir]);
	    }
		break;
	
	case AT_NSPECIAL:
		if (!hitpause){
		
			//print(wow_chrg);
			// 36 max add
			var charge_state = (wow_chrg >= wow_chrg_max ? 2 : wow_chrg >= floor(wow_chrg_max/2) ? 1 : 0);
			var hbox_funnytime = 30 + (charge_state == 2 ? 36*3 : charge_state == 1 ? 36 : 0);
			
			switch(window){
				case 1:
					set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, hbox_funnytime);
				break;
				case 2: // charging
					if (!special_down){
						window += 1;
						window_timer = 0;
					}
					else{
						if (shield_pressed){ // cancel
							window = 5;
							window_timer = 0;
							clear_button_buffer( PC_SHIELD_PRESSED );		
							//print("nspecial canceled");
						}
						else{
							if (wow_chrg < wow_chrg_max){
								//print("chrg = " + string(wow_chrg) + ", state = " + string(charge_state) + ", lifetime = " + string(hbox_funnytime));
								wow_chrg++;
								charge_state = (wow_chrg >= wow_chrg_max ? 2 : wow_chrg >= floor(wow_chrg_max/2) ? 1 : 0);
								hbox_funnytime = 30 + (charge_state == 2 ? 36*3 : charge_state == 1 ? 36 : 0);
								set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, hbox_funnytime);
								if wow_chrg == floor(wow_chrg_max/2){
									sound_play(sound_get("wwisp_charge1"));
								    spawn_hit_fx(x+36*spr_dir, y-36, wwisp_charge);
								}
								else if wow_chrg == wow_chrg_max{
									sound_play(sound_get("wwisp_charge2"));
									spawn_hit_fx(x+36*spr_dir, y-36, wwisp_charge);
								}
							}
						}
					}
				break;
				case 3:
					if (window_timer == 1){
						switch(charge_state){
							case 0:
								create_hitbox(AT_NSPECIAL, 1, x+36*spr_dir, y-36);
								set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, -1);
							break;
							case 1:
								create_hitbox(AT_NSPECIAL, 1, x+20*spr_dir, y-52);
								create_hitbox(AT_NSPECIAL, 1, x+36*spr_dir, y-20);
								set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, -3);
							break;
							case 2:
								create_hitbox(AT_NSPECIAL, 1, x+20*spr_dir, y-68);
								create_hitbox(AT_NSPECIAL, 1, x+36*spr_dir, y-36);
								create_hitbox(AT_NSPECIAL, 1, x+20*spr_dir, y-4);
								set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, -8);
							break;
						}
						wow_chrg = 0;
					}
				break;
			}
		
	    	if (window == 1){
			    if (window_timer == 5){
					sound_play(sound_get("wwisp_charge" + string(charge_state)));
				}
				if (window_timer == 10 && charge_state == 2){
					window += 2;
					window_timer = 0;
				}
		    }
		}
	break;
	
	case AT_FSPECIAL:
		can_move = false;
		can_fast_fall = false;
		off_edge = false;
		
		if (!hitpause){
			switch(window){
				case 1: // startup
					if window_timer == 1{
						fspecial_grab_time = 0;
						fspecial_grab_time_max = 90;
					}
					off_edge = true;
				break;
				case 2: // grab attempt
					if window_timer == phone_window_end{
						window = (fspecial_grab_id != noone) ? 3 : 9;
						window_timer = 0;
					}
				break;
				case 3: // grab success, vspeed applied
					can_move = true;
					if window_timer == 1
						vsp = -4;
				break;
				case 4: //  loop until hitting the ground
					can_move = true;
					if (shield_pressed){ // cancel
						clear_button_buffer(PC_SHIELD_PRESSED);
						window = 7;
						window_timer = 0;
						destroy_hitboxes();
						vsp *= .5;
					}
					else if (fspecial_grab_time > fspecial_grab_time_max || fspecial_grab_id == noone || !instance_exists(fspecial_grab_id)){ // no grab instance or whatev
						window = 4;
						window_timer = 0;
						destroy_hitboxes();
					}
					else{
						hsp *= .8;
						vsp += .5;
						if vsp < 0
							vsp = 0;
						
						if (fspecial_grab_time <= fspecial_grab_time_max)
							fspecial_grab_time++;
					}
				break;
				case 5: // slam into ground
					if (window_timer == 1){
						// shake
						shake_camera(12, 24);
						// vfx
						var fx_1 = spawn_base_dust(fspecial_grab_id.x, y, "land");
						fx_1.depth = depth-1;
					}
				break;
				case 6: // moving across the ground loop
					if (fspecial_grab_time > fspecial_grab_time_max || fspecial_grab_id == noone || !instance_exists(fspecial_grab_id)){ // no grab instance or whatev
						window = 7;
						window_timer = 0;
						destroy_hitboxes();
					}
					else{
						// speed
						var drag_accel = .5;
						var min_spd = 4;
						var max_spd = 12;
						// acceleration
						hsp += drag_accel * spr_dir;
						if (abs(hsp) < min_spd || sign(hsp) != sign(spr_dir)) // going opposite direction or too slow? force hsp to min speed
							hsp = min_spd * spr_dir;
								
						hsp = clamp(hsp, -max_spd, max_spd)
								
						if window_timer == phone_window_end // hitbox reset
							attack_end();
						
						if (window_timer % 3 == 0 && abs(hsp) > 3){ // fx
							var dragfx_1 = hit_fx_create(sprite_get("fspecial_fx"), 12);
							var fx1 = spawn_hit_fx(x, y, dragfx_1);
							//spawn_base_dust(x, y, "dash");
						}
							
						if (attack_pressed || special_pressed){ // yeet
							window = 8;
							window_timer = 0;
							destroy_hitboxes();
						}
						else if (shield_pressed){ // cancel
							window = 7;
							window_timer = 0;
							destroy_hitboxes();
						}
						else if (free){ // entered air
							attack_end();
							set_state(free ? PS_IDLE_AIR : PS_IDLE);
							destroy_hitboxes();
						}
					}
					
					if (fspecial_grab_time <= fspecial_grab_time_max)
						fspecial_grab_time++;
				break;
				case 7: // grab escaped
					if (window_timer == 1){
						if (instance_exists(fspecial_grab_id)){
							with(fspecial_grab_id){
								visible = true;
								// hitstop
								hitstop = 0;
								hitstop_full = 1;
								hitpause = false;
								// speed stuff
								vsp = -7;
								hsp = (4 * other.spr_dir) + (other.hsp*.3);
								old_vsp = vsp;
								old_hsp = hsp;
								//print(vsp);
							}
						}
						fspecial_grab_id = noone;
					}
					if window_timer == phone_window_end{
						attack_end();
						set_state(free ? PS_IDLE_AIR : PS_IDLE);
						destroy_hitboxes();
						fspecial_grab_id = noone;
					}
				break;
				case 8: // throw
					if window_timer == phone_window_end{
						attack_end();
						set_state(free ? PS_IDLE_AIR : PS_IDLE);
						destroy_hitboxes();
						fspecial_grab_id = noone;
					}
				break;
				case 9: // whiff endlag
					hsp = clamp(hsp, -8, 8);
					if window_timer == phone_window_end{
						attack_end();
						set_state(free ? PS_IDLE_AIR : PS_IDLE);
						destroy_hitboxes();
						fspecial_grab_id = noone;
					}
				break;
			}
			/*
			switch(window){
				case 1: // startup
					if window_timer == 1{
						fspecial_grab_time = 0;
						fspecial_grab_time_max = 90;
					}
					off_edge = true;
				break;
				case 2: // lunge
					hsp = 14*spr_dir;
					off_edge = true;
					
					if (!free){
						if (window_timer == 1)
							spawn_base_dust(x, y, "dash_start");
						else if (window_timer == 3)
							spawn_base_dust(x, y, "dash");
					}
					else{
						if (window_timer == 1){
							var fx_a = spawn_base_dust(x, y - 22, "doublejump");
							fx_a.draw_angle = (spr_dir == -1) ? 90 : 270;
						}
					}
				break;
				case 3: // drag grounded
					if (fspecial_grab_time > fspecial_grab_time_max || fspecial_grab_id == noone || !instance_exists(fspecial_grab_id)){ // no grab instance or whatev
						window = 4;
						window_timer = 0;
						destroy_hitboxes();
					}
					else{
						// speed
						var drag_accel = .5;
						var min_spd = 4;
						var max_spd = 12;
						// acceleration
						hsp += drag_accel * spr_dir;
						if (abs(hsp) < min_spd || sign(hsp) != sign(spr_dir)) // going opposite direction or too slow? force hsp to min speed
							hsp = min_spd * spr_dir;
								
						hsp = clamp(hsp, -max_spd, max_spd)
								
						if window_timer == phone_window_end // hitbox reset
							attack_end();
						
						if (window_timer % 3 == 0 && abs(hsp) > 3) // fx
							spawn_base_dust(x, y, "dash");
							
						if (attack_pressed || special_pressed){ // yeet
							window = 5;
							window_timer = 0;
							destroy_hitboxes();
						}
						else if (shield_pressed){ // cancel
							window = 4;
							window_timer = 0;
							destroy_hitboxes();
						}
						else if (free){ // entered air
							set_state(free ? PS_IDLE_AIR : PS_IDLE);
							destroy_hitboxes();
						}
					}
					
					if (fspecial_grab_time <= fspecial_grab_time_max)
						fspecial_grab_time++;
				break;
				case 6: // drag air
					if (free){ // lol
						if (shield_pressed){ // cancel
							clear_button_buffer(PC_SHIELD_PRESSED);
							window = 4;
							window_timer = 0;
							destroy_hitboxes();
							vsp *= .5;
						}
						else if (fspecial_grab_time > fspecial_grab_time_max || fspecial_grab_id == noone || !instance_exists(fspecial_grab_id)){ // no grab instance or whatev
							window = 4;
							window_timer = 0;
							destroy_hitboxes();
						}
						else{
							hsp *= .8;
							vsp += .5;
							if vsp < 0
								vsp = 0;
							
							if (fspecial_grab_time <= fspecial_grab_time_max)
								fspecial_grab_time++;
						}
					}
					else{
						window = 3;
						window_timer = 0;
						fspecial_grab_time = 0;
						spawn_base_dust(x, y, "land");
					}
				break;
				case 4: // grab release
					if (window_timer == 1){
						if (instance_exists(fspecial_grab_id)){
							with(fspecial_grab_id){
								// hitstop
								hitstop = 0;
								hitstop_full = 1;
								hitpause = false;
								// speed stuff
								vsp = -7;
								hsp = (4 * other.spr_dir) + (other.hsp*.3);
								old_vsp = vsp;
								old_hsp = hsp;
								//print(vsp);
							}
						}
						fspecial_grab_id = noone;
					}
					if window_timer == phone_window_end || free{
						set_state(free ? PS_IDLE_AIR : PS_IDLE);
						destroy_hitboxes();
					}
				break;
				case 5: // yeet
					if window_timer == phone_window_end
						fspecial_grab_id = noone;
				break;
				case 7: // endlag
					hsp = clamp(hsp, -8, 8)
					if window_timer == phone_window_end{
						set_state(free ? PS_IDLE_AIR : PS_IDLE);
						destroy_hitboxes();
					}
				break;
			}
			*/
		}
	break;
	
	case AT_USPECIAL:
		if window == 2 && !hitpause{
	    create_hitbox(AT_USPECIAL, 1, x, y);
		}
	break;
	
	case AT_TAUNT:
		if window == 1 && window_timer == 1{
		tauntsfxnum = random_func( 0, 8, true );
		}
		if tauntsfxnum == 1 || attack_down || attack_pressed {
		set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_sand_yell"));
		} else {
		set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("cry"));
		}
		break;
		
	case AT_TAUNT_2:
	    if state_timer == 1{
		sound_play( sound_get( "spookydance" ), true, noone, 1, 1);    
		}
		if window == 2{
		   if taunt_down {
           window = 1;
		   } else {
		   sound_stop( sound_get( "spookydance" ));
		   }
		}
		break;
}

if (attack != AT_TAUNT_2 && state != PS_ATTACK_GROUND){
sound_stop( sound_get( "spookydance" ));
}

#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
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
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

