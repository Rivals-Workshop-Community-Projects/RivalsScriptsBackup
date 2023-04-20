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
		if (window < 7) was_parried = false; // easy method for single-hit jabs
		/*if window == 1 && window_timer == 2{
			spawn_base_dust(x, y, "dash", spr_dir);
		}*/
		if window == 4 && window_timer == 3{
			spawn_base_dust(x, y, "walk", spr_dir);
		}
		if window == 7 && window_timer == 7{
			spawn_base_dust(x, y, "dash", spr_dir);
		}
		break;
	case AT_FTILT:
		if window == 3 && window_timer > 3{
			if left_stick_pressed || right_stick_pressed{
				window = 4;
				window_timer = 0;
			}
		}
		if window == 1 && window_timer == 6{
			spawn_base_dust(x, y, "walk", spr_dir);
		}
		if window == 4 && window_timer == 8{
			spawn_base_dust(x, y, "dash", spr_dir);
		}
		break;
	case AT_DTILT:
		if window == 1 && window_timer == 1{
			spawn_base_dust(x, y, "dash", spr_dir);
		}
		if window == 1 && window_timer == 5{
			spawn_base_dust(x, y, "dash", spr_dir);
		}
		if window == 1 && window_timer == 9{
			spawn_base_dust(x, y, "dash", spr_dir);
		}
		if window == 2 && window_timer == 1{
			spawn_base_dust(x, y, "walk", spr_dir);
		}
		if window == 2 && window_timer == 5{
			spawn_base_dust(x, y, "walk", spr_dir);
		}
		if window == 2 && window_timer == 8{
			spawn_base_dust(x, y, "walk", spr_dir);
		}
		if (has_hit){
			set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 6);
		} else{
			set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 16);
		}
		break;
	case AT_DATTACK:
		if window == 1 && window_timer <= 8{
			if up_strong_pressed{
				set_attack(AT_USTRONG);
				hsp = 9.5 * spr_dir;
			}
		}
		switch(window){
			case 1:
			//	if window_timer == 12{
			//		spawn_base_dust(x, y, "dash", spr_dir);
			//	}
			case 3:
				if window_timer == 6{
					spawn_base_dust(x + 10 * spr_dir, y, "walk", spr_dir);
				}
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == 9{
			spawn_base_dust(x + (10 * spr_dir), y, "dash", -spr_dir);
		}
		break;
	case AT_FSTRONG:
		if ((window == 2 && window_timer == 8 && place_meeting(x + (90 * spr_dir), y + (30), ((asset_get("par_block"))))) || (window == 2 && window_timer == 8 && place_meeting(x + (90 * spr_dir), y + (2), ((asset_get("par_jumpthrough")))))){
			spawn_base_dust(x + (65 * spr_dir), y, "dash_start", -spr_dir);
			sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1, 1.25);
			shake_camera(2, 5);
		}
		break;
	case AT_USTRONG:
		if window == 2 && window_timer == 6{
			spawn_base_dust(x + 0 * spr_dir, y, "dash", spr_dir);
			spawn_base_dust(x - 0 * spr_dir, y, "dash", -spr_dir);
		}
		break;
	case AT_DSTRONG:
		break;
	case AT_BAIR:
		break;
	case AT_NSPECIAL:
		switch(window){
		case 1:
			if (free && vsp > -2){
				vsp -= 1
			}
		break;
		case 2:
			if window_timer == 2{
				ptooie = create_hitbox( AT_NSPECIAL, 1, x, y -50);
				ptooie_spin = 7;
			}
			if window_timer > 1{
				ptooie.x = x;
			}
			if window_timer == 2{
				ptooie.y = y - 80;
			}
			if window_timer == 3{
				ptooie.y = y - 100;
			}
			if window_timer == 4{
				ptooie.y = y - 110;
			}
			if window_timer == 5{
				ptooie.y = y - 130;
			}
		break;
		case 3:
			if !special_down && window_timer > 6{
				set_attack(AT_NSPECIAL_2);
			}
			if (right_pressed){
				spr_dir = 1;
				set_attack(AT_NTHROW);
			}
			if (left_pressed){
				spr_dir = -1;
				set_attack(AT_NTHROW);
			}
			ptooie.x = x;
			ptooie.y = y - 140;
			hsp *= 0.8;
			vsp *= 0.8;
		}
		break;
		if instance_exists(ptooie) == false{
			window = 4;
			window_timer = 0;
		}
	break;
	case AT_NSPECIAL_2:
		{
			hsp *= 0.9;
			vsp *= 0.8;
		}
		switch(window){
			case 1:
				ptooie.x = x;
				if window_timer == 1{
					ptooie.y = y - 150
				}
				if window_timer == 2{
					ptooie.y = y - 135
				}
				if window_timer == 3{
					ptooie.y = y - 125
				}
				if window_timer == 4{
					ptooie.y = y - 100
				}
				if window_timer == 5{
					ptooie.y = y - 80
				}
			break;
			case 2:
				instance_destroy(ptooie);
				exit;
			break;
		}
	break;
	case AT_NTHROW:
		{
			hsp *= 0.9;
			vsp *= 0.8;
		}
		switch(window){
			case 1:
				ptooie.x = x;
				if window_timer == 1{
					ptooie.y = y - 150
				}
				if window_timer == 2{
					ptooie.y = y - 145
				}
				if window_timer == 3{
					ptooie.y = y - 125
				}
				if window_timer == 4{
					ptooie.y = y - 90
				}
				if window_timer == 5{
					ptooie.y = y - 100
				}
			break;
			case 2:
			if window_timer = 1{
				ptooie.hsp = (7 * spr_dir);
				ptooie.vsp = -8;
				ptooie.ptCheck = true;
				ptooie_spin = 15;
				ptooie.thrown = true;
			}
			break;
		}
	break;
	
	
	
	case AT_FSPECIAL:
		can_fast_fall = false;
		switch(window){
			case 1:
				if (down_down && !up_down){
					set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 3);
					set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
				}
				if (!down_down && up_down){
					set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
					set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
				}
				if (!down_down && !up_down){
					set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
					set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 5);
				}
				break;
			case 2:
				move_cooldown[AT_FSPECIAL] = 60;
				break;
			case 3:
				break;
		}
		break;
	
	
	
	case AT_USPECIAL:
		can_fast_fall = false;
		can_wall_jump = true;
		if down_down{
			fall_through = true;
		}
		switch(window){
			case 1:
			//Checking if the Goop is underneath, so it can jump out
			if ( (place_meeting( x, y+1, goop_1)) || (place_meeting( x, y+1, goop_2)) ){
				if (place_meeting( x, y+1, goop_1)){
					upBgoop = (instance_place( x, y+1, goop_1));
				} else {
					if (place_meeting( x, y+1, goop_2)){
						upBgoop = (instance_place( x, y+1, goop_2));
					}
				} 
				puddle_jump = true;
			} else {
				puddle_jump = false;
			}
			
			break;
			case 2:
				if (window_timer == 1 && puddle_jump == true){ spawn_hit_fx(upBgoop.x, upBgoop.y+0, puddle_bounceoff); }
				if (puddle_jump == true){ can_jump = true; }
				upBgoop.goop_invis = 20;
				instance_destroy(upBgoop);
			break;
			case 3:
				if (puddle_jump == true){ can_jump = true; }
				if shield_pressed{
					destroy_hitboxes();
					window = 5;
					window_timer = 0;
				}
				if !free{
					if !was_parried{
						set_state(PS_LANDING_LAG);
					} else {
						set_state(PS_PRATLAND);
					}
				}
			break;
			case 4:
				if (puddle_jump == true){ can_jump = true; }
				if shield_pressed{
					destroy_hitboxes();
					window = 5;
					window_timer = 0;
				}
				if !free{
					if !was_parried{
						set_state(PS_LANDING_LAG);
					} else {
						set_state(PS_PRATLAND);
					}
				}
			break;
		}
		break;
	
	case AT_DSPECIAL:
		can_fast_fall = false;

		if (goop_1 > 0 && instance_exists(goop_1) == false){ goop_1 = noone; }
		if (goop_2 > 0 && instance_exists(goop_2) == false){ goop_2 = noone; }
		
		if (window == 1 && window_timer > 5){
        	move_cooldown[AT_DSPECIAL] = 45;
        	//if (instance_exists(goop_1) == true && instance_exists(goop_2) == true){
        	if (goop_1 > 0 && goop_1.goop_repeat > goop_2.goop_repeat){ goop_1.destroyed = true; }
        	if (goop_2 > 0 && goop_2.goop_repeat > goop_1.goop_repeat){ goop_2.destroyed = true; }
        	//}
		}
		
		if (window == 2 && window_timer <= 1 && goop_1 > 0 && instance_exists(goop_1) == true){ window = 3; window_timer = 0; } 
		if (window == 1 && window_timer >= 10 && goop_2 > 0 && instance_exists(goop_2) == true){ window = 5; window_timer = 0; } 
		break;
	case AT_TAUNT:
		if window == 2{
			if taunt_down{
				set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
				sleep_timer ++;
				if sleep_timer > 270{
					suppress_stage_music(0, 0.0075)
				}
				if sleep_timer == 320{
					sound_play(sound_get("Lullaby"), true, 0, 1, 1);
				}
			} else {
				set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
				window = 3;
				window_timer = 0;
				sleep_timer = 0;
				sound_stop(sound_get("Lullaby"));
			}
		}
}
#define spawn_base_dust
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;