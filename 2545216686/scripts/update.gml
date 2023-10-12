//update.gml

// Intro
if (state == PS_SPAWN){
	var flightSFX = sfx_flight;
	if (playIntroAnim){ 
		if (!shouldPlayLandingIntroAnim){
			if (!introPlayFallAnim){
				//print("false");
				introImgTimer2++;
				if (introImgTimer2 == 2){
					if (introImgTimer != 7){
						introImgTimer++;
					} else {
						introImgTimer = 0;
					}
					introImgTimer2 = 0;
				}
				introImgHorizOffset -= 10;
				introImgHorizOffset = clamp(introImgHorizOffset, desiredDist, 1000);
				if (introImgHorizOffset == desiredDist){
					introPlayFallAnim = true;
					sound_stop(flightSFX);
					sound_play(jump_sound, false, noone, 0.9, 1.2);
					//spawn_base_dust(x - ((introImgHorizOffset - (-40 * spr_dir)) * spr_dir), y - introImgVertOffset + 16, "doublejump", spr_dir, -30 * spr_dir);
				}
				
				if (introImgHorizOffset == 420){
					sound_play(flightSFX, false, noone, 0.65, 1);
				}
			} else if (introPlayFallAnim){
				introImgTimer2++;
				//print("true");
				if (introImgTimer2 >= 5){
					introImgTimer3++;
					introImgTimer2 = 0;
				}
				introImgTimer3 = clamp(introImgTimer3, 0, 5);
				introImgVertOffset -= ceil((1.2 * introCounter));
				introCounter += 0.6;
				introCounter = clamp(introCounter, -10, 14);
				
				if (introImgVertOffset <= 0){//>
					shouldPlayLandingIntroAnim = true;
					sound_play(landing_lag_sound);
					spawn_base_dust( x, y, "land", spr_dir);
				}
				introImgHorizOffset -= 3.25;
				introImgHorizOffset = clamp(introImgHorizOffset, -60, 110);
			}
		} else {
			if (introImgLandTimer != 4){
				introImgLandTimer2++;
				if (introImgLandTimer2 == 5){
					introImgLandTimer2 = 0;
					introImgLandTimer++;
				}
			} else {
				playIntroAnim = false;
			}
		}
	}
}

////////////////////////////////////////////////////
//////////////buncha sfx related stuffs/////////////
////////////////////////////////////////////////////

if (state == PS_DASH_START){
	if (state_timer == 0){
		sound_play(sfx_dashstart)
		sound_stop(sfx_skid)
	}
}

if (state == PS_DASH_STOP){
	entereddashstop = true
	if (state_timer == 0){
		sound_play(sfx_skid)
	}
	if (state_timer == 5){
		hsp *= 0.75
	}
}

if (state == PS_DASH_TURN){
	if (state_timer == 0){
		//sound_stop(sfx_skid)
	}
	if (state_timer == 1 && entereddashstop == false){
		sound_play(sfx_skid)
	}
}

if (state != PS_DASH_STOP && state != PS_DASH_TURN){
	entereddashstop = false
}

if (state == PS_DOUBLE_JUMP){
	//set_attack(AT_USPECIAL);
}

if (state == PS_AIR_DODGE){
	sound_stop(sfx_jump)
	sound_stop(sfx_flight)
}

if (state == PS_WAVELAND){
	didwavedash = 12
	sound_stop(sfx_airdodge)
}

if (state == PS_WALL_JUMP){
	sound_stop(sfx_flight)
}

if (didwavedash != 0){
	didwavedash--;
	set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 6.5);
} else if (didwavedash == 0){
	set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 0);
}

if (state == PS_LANDING_LAG){
	sound_stop(sfx_spin)
}

////////////////////////////////////////////////////
//////////////////ok no more of that////////////////
////////////////////////////////////////////////////

// roll rune
if (rollRune){
	if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD){
		if (jump_pressed){
			state_timer = 19;
			window_timer = 19;
		}
	}
}

if (!free){
	flightloop = 3
	aerialattack = 0
	diveloop = 0
	move_cooldown[AT_FSPECIAL] = 0;
}

move_cooldown[AT_DSPECIAL_2] = move_cooldown[AT_DSPECIAL]

if (move_cooldown[AT_NSPECIAL] == 1){
	spawn_hit_fx( x , y - 20, 302 );
}

// nspec rune stuff
if (nspecMultihitRune){
	if (nspecRuneHit == true && nspecRuneTimesThrough != 69420){
		nspecRuneTimer++;
		if (nspecRuneTimer > 20){
			if (nspecRuneTimesThrough != nspecRuneTimesThroughMax){
				nspecRuneTimesThrough++;
				nspecRuneTimer = 0;
				create_hitbox(AT_NSPECIAL, 2, nspecRuneHitPlayerX, nspecRuneHitPlayerY - 0);
			} else if (nspecRuneTimesThrough == nspecRuneTimesThroughMax){
				create_hitbox(AT_NSPECIAL, 3, nspecRuneHitPlayerX, nspecRuneHitPlayerY - 0);
				nspecRuneHitPlayerX = 0;
				nspecRuneHitPlayerY = 0;
				nspecRuneTimer = 0;
				nspecRuneTimesThrough = 69420;
				nspecRuneHit = false;
			}
		}
	} else {
		nspecRuneHitPlayerX = 0;
		nspecRuneHitPlayerY = 0;
		nspecRuneTimer = 0;
		nspecRuneTimesThrough = 0;
		nspecRuneHit = false;
	}
}

if (instance_exists(obj_article1)){
	if (collision_rectangle( x - 40, y + 40, x + 40, y - 40, obj_article1, true, true ) && !collision_rectangle( x - 40, y + 40, x + 40, y - 40, oPlayer, true, true )){
		heyiamtouchingitplsdont = true
	} else {
		heyiamtouchingitplsdont = false
	}
}

if (get_player_color( player ) == 0){
	defaultcolor = true
} else {
	defaultcolor = false
}

if (!free && !collision_line(x + 10 * spr_dir, y - 16, x + 16 * spr_dir, y + 16, asset_get("par_block"), 0, 1) && !collision_line(x + 10 * spr_dir, y - 16, x + 16 * spr_dir, y + 16, asset_get("par_jumpthrough"), 0, 1)){
	at_ledge = true;
} else {
	at_ledge = false
}

//Sleep Kirby Hat Offsets
if (free){
	//Air Hat Offsets
	sleep_kirby_hat_offset_x = -2; //
	sleep_kirby_hat_offset_y = -2; //
	sleep_kirby_has_sleep_sprites = false; //Set this to true to enable custom sleep sprites.
	sleep_kirby_sleep_sprite_ground = sprite_get("hurtground")
	sleep_kirby_sleep_sprite_air = sprite_get("hurt")
} else if (!free){
	//Grounded Hat Offsets
	sleep_kirby_hat_offset_x = 0; //
	sleep_kirby_hat_offset_y = -2; //
	sleep_kirby_has_sleep_sprites = false; //Set this to true to enable custom sleep sprites.
	sleep_kirby_sleep_sprite_ground = sprite_get("hurtground")
	sleep_kirby_sleep_sprite_air = sprite_get("hurt")
}

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

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
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
    case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;
return newdust;