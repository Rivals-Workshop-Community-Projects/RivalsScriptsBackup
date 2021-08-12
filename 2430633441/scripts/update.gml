
if y < -300 fall = true;

if state_cat != SC_HITSTUN {
	if free && fall{
		vsp += abs(gravity_speed)*3.5;
	}
}
fall = down_down;
if updated == 0 {
print_debug("Character Updated Time setting is "+string(get_match_setting(SET_TIMER)))
updated = 1;
}

if state == PS_PRATFALL {
	fall = true;
}

var d = 0;

if grabbing && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR {
grabbing = 0;
grab_ids = array_create(0);
}

uspecial_used = 0;

waveland_cancel = (state == PS_WAVELAND)
switch(state) {
	case PS_WAVELAND:
	if state_timer == 1 hsp *= 0.08;// hsp = sign(hsp)*4;
	if state_timer == 0 hsp *= 5
	break;
	default: orbit_speed = 1.5; break;
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
		switch(attack) {
			default: orbit_speed = 3; break;
			case AT_FSTRONG: orbit_speed = 3+strong_charge*0.3; break;
			case AT_DSTRONG: orbit_speed = 3+strong_charge*0.3; 
				if get_window_value(attack,window,AG_WINDOW_TYPE) >= 68 {
					orbit_speed = 20;
				}
			break;
			case AT_USTRONG: orbit_speed = 3+strong_charge*0.3; if window >= 3 draw_indicator = false; break;
			case AT_NAIR: break;
			case AT_DSPECIAL: orbit_speed = 10; break;
			case AT_UAIR: orbit_speed = 3; d = 200; break;
			case AT_DATTACK: 
				orbit_speed = 20 - state_timer*0.5
			break;
			case AT_USPECIAL_2:
				uspecial_used = 1;
			break;
			case AT_TAUNT:
				orbit_speed = 1;
			break;

		}
	break;
	case PS_DASH: case PS_DASH_TURN:
		orbit_speed = 4;
	break;
	
	case PS_DOUBLE_JUMP:
		if state_timer < 13 {
			orbit_speed = 6;
		//	vsp -= djump_accel;
		}
	break;
	case PS_CROUCH:
		orbit_speed = max(orbit_speed-0.04, 0.5)
	break;
	case PS_AIR_DODGE:
		if state_timer == 1 {
			spawn_hit_fx(x,y,hitfx[8])
			roll_x = x;
			roll_y = y-char_height/2;
		}
		if window == 1 {
			var amt = window_timer/4
			for (var i = 0; i < 3; i++) {
				if planet[i].orbiting == 0 or planet[i].owner != id continue;
					planet[i].overriding = 0.8;
					planet[i].x = lerp(planet[i].x, roll_x, 0.2)
					planet[i].y = lerp(planet[i].y, roll_y, 0.2)
					if amt >= 1 planet[i].visible = 0;
			}
			draw_indicator = false;
		}		
		if window == 2 {
			hsp = 0;
			if window_timer <= 1 {
				for (var i = 0; i < 3; i++) {
					if planet[i].orbiting == 0 or planet[i].owner != id continue;
						planet[i].overriding = 0.8;
						planet[i].x = x;
						planet[i].y = y-char_height/2
						if amt >= 1 planet[i].visible = 0;
				}				
			}
		}
	break;
	case PS_ROLL_FORWARD: case PS_ROLL_BACKWARD:
		if state_timer == 0 {
			print_debug("Rolling")
			spawn_hit_fx(x,y,hitfx[4])
			roll_x = x;
			roll_y = y-char_height/2;
		}

	case PS_TECH_BACKWARD: case PS_TECH_FORWARD:


		if window == 1 {
			var amt = window_timer/4
			for (var i = 0; i < 3; i++) {
				if planet[i].orbiting == 0 or planet[i].owner != id continue;
					planet[i].overriding = 0.8;
					planet[i].x = lerp(planet[i].x, roll_x, 0.2)
					planet[i].y = lerp(planet[i].y, roll_y, 0.2)
					if amt >= 1 planet[i].visible = 0;
			}
			draw_indicator = false;
		}
		if window == 2 {
			hsp = 0;
			if window_timer <= 1 {
				for (var i = 0; i < 3; i++) {
					if planet[i].orbiting == 0 or planet[i].owner != id continue;
						planet[i].overriding = 0.8;
						planet[i].x = x;
						planet[i].y = y-char_height/2
						if amt >= 1 planet[i].visible = 0;
				}				
			}
		}
	break;
	case PS_LAND: case PS_LANDING_LAG: case PS_PRATLAND:
	if oldFF {
		sound_play(asset_get("sfx_land_heavy"))
	}
	break;
	case PS_HITSTUN:
		var amt = min(state_timer*0.1, 3) 
		for (var i = 0; i < 3; i++) {
			if planet[i].orbiting && planet[i].owner == id {
				//planet[i].override = 0.7;
				
				planet[i].x -= hsp*amt;
				planet[i].y -= vsp*amt;
			}
		}
	break;
	case PS_LANDING_LAG:
		if tossed_planet == 0 {
			var add_hsp = 8;
			var add_vsp = -9;
			if attack == AT_BAIR {
				add_hsp = -1;
				add_vsp = 7;
			}
			for (var i = maxplanets-1; i > 0; i--) {
				if planet[i].orbiting == 1 {
					planet[i].hsp = add_hsp*spr_dir;
					planet[i].vsp = add_vsp;
					planet[i].orbiting = false;
					planet[i].cooldown = 10;
					break;
				}
			}
			print("landing lag tossplan is "+string(tossed_planet))
			tossed_planet = true;
		}
	break;
}
if state != PS_TECH_GROUND && state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD {
	tech_x = x;
	tech_y = y;
}

hud_offset = floor(lerp(hud_offset, d, 0.1))

oldFF = fast_falling;
orbit_angle = (orbit_angle+orbit_speed) mod 360
//print_debug(string(orbit_angle))
if state != PS_DEAD && !(state == PS_RESPAWN && !visible){
	for (var i = 0; i < maxplanets; i++) {
		if !planet[i].dead continue;
			planet[i].dead = 0;
		planet[i].orbiting = 1;
		planet[i].x = x;
		planet[i].y = y;
		planet[i].orbit_angle += i*(360/maxplanets);
	}	
} else {
	for (var i = 0; i < maxplanets; i++) {
		if planet[i].active continue;
		planet[i].dead = 1;
		planet[i].orbiting = 0;
	}		
}

var own = id;
if instance_exists(sun_ins) {
	own = sun_ins;
	sun_color = 0;
	move_cooldown[AT_NSPECIAL] = 80;
} else {
	if !move_cooldown[AT_NSPECIAL] sun_color = 1;
}
			for (var i = 0; i < maxplanets; i++) {
				planet[i].owner = own;
				hologram[i, 4] = max(hologram[i, 4]-0.03, 0)
			}			
			


if get_player_color(player) == 7 && get_match_setting(SET_SEASON) == 4{
	anim_time++;
	if anim_time >= 30 {
		anim_time -= 30;
		//print_debug("Blink");
		var c = make_color_hsv(random_func(0, 255, 1), 150, 255);
		set_color_profile_slot(7, 0, color_get_red(c), color_get_green(c), color_get_blue(c));
		init_shader();
	}
}
//////////////////////////////////////////


if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 11;
    trummelcodecsprite1 = sprite_get("trummel");
    trummelcodecsprite2 = sprite_get("X");
	var i = 0;
    //Page
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;
	///////////////////////////////////////////////////
    trummelcodecline[i,1] = "...They're REAL? I've read";
    trummelcodecline[i,2] = " about them, but those";
    trummelcodecline[i,3] = "were all just...myth.";
	trummelcodecline[i,4] = "...right?";
    i++;
    //Page
    trummelcodecspeaker[i] = 2;
    trummelcodecexpression[i] = 0;
	///////////////////////////////////////////////////
    trummelcodecline[i,1] = "bugs are real???";
    trummelcodecline[i,2] = "oh m";
    trummelcodecline[i,3] = "an";
	trummelcodecline[i,4] = "";
    i++;
    //Page
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;
	///////////////////////////////////////////////////
    trummelcodecline[i,1] = "The old myths I mentioned";
    trummelcodecline[i,2] = "this, this, saying";
    trummelcodecline[i,3] = "something along the lines";
	trummelcodecline[i,4] = "of:";
    i++;
    //Page
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;
	///////////////////////////////////////////////////
    trummelcodecline[i,1] = "''When doom approaches from";
    trummelcodecline[i,2] = "worlds unknown, a precursor";
    trummelcodecline[i,3] = "shall arrive, testing the";
	trummelcodecline[i,4] = "world in preparation.''";
    i++;
    //Page
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;
	///////////////////////////////////////////////////
    trummelcodecline[i,1] = "Basically, this thing is";
    trummelcodecline[i,2] = "a warning.";
    trummelcodecline[i,3] = "To what? I'm not sure yet.";
	trummelcodecline[i,4] = "";
    i++;
    //Page
    trummelcodecspeaker[i] = 2;
    trummelcodecexpression[i] = 0;
	///////////////////////////////////////////////////
    trummelcodecline[i,1] = "freaky";
    trummelcodecline[i,2] = "";
    trummelcodecline[i,3] = "how do we beat it up tho";
	trummelcodecline[i,4] = "";
    i++;
    //Page
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;
	///////////////////////////////////////////////////
    trummelcodecline[i,1] = "Right. Hm. What it has in";
    trummelcodecline[i,2] = "horizontal range it lacks";
    trummelcodecline[i,3] = "in vertical; it doesn't do";
	trummelcodecline[i,4] = "well if we stay over it.";
    i++;
    //Page
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;
	///////////////////////////////////////////////////
    trummelcodecline[i,1] = "Its projectiles are rough,";
    trummelcodecline[i,2] = "though. Don't be overwhelmed";
    trummelcodecline[i,3] = "by its zoning tools.";
	trummelcodecline[i,4] = "";
    i++;
    //Page
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;
	///////////////////////////////////////////////////
    trummelcodecline[i,1] = "The more it uses planets,";
    trummelcodecline[i,2] = "the more vulnerable they";
    trummelcodecline[i,3] = "become. Patience is key.";
	trummelcodecline[i,4] = "";
    i++;
    //Page
    trummelcodecspeaker[i] = 2;
    trummelcodecexpression[i] = 0;
	///////////////////////////////////////////////////
    trummelcodecline[i,1] = "mmkay";
    trummelcodecline[i,2] = "lets do some debugging";
    trummelcodecline[i,3] = "                                   ";
	trummelcodecline[i,4] = "get it";
    i++;
    //Page
    trummelcodecspeaker[i] = 2;
    trummelcodecexpression[i] = 0;
	///////////////////////////////////////////////////
    trummelcodecline[i,1] = "";
    trummelcodecline[i,2] = "";
    trummelcodecline[i,3] = "           do you get it";
	trummelcodecline[i,4] = "";
    i++;
}