// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Dash attack off ledge
if (attack == AT_DATTACK){
	if window == 3 {
		off_edge = true;
		vsp = clamp(vsp, -100, 1);
		if (15 > window_timer && has_hit_player && !hitpause && hit_player_obj.super_armor == 0){
			hit_player_obj.hsp = lerp(hit_player_obj.hsp,hsp,1.5);
			hit_player_obj.x = lerp(hit_player_obj.x,x,0.1);
		}
	}
	
	if window == 4 and window_timer == 1 and !free {
		sound_play(asset_get("sfx_land_heavy"));
		spawn_base_dust(x+62*spr_dir, y, "dash_start", -spr_dir);
		spawn_base_dust(x+22*spr_dir, y, "dash", spr_dir);
	}
}


//Jab stuff
if(attack == AT_JAB){
	if (window == 2 || window == 3) && window_timer > 2 && !attack_down {
		window = 4;
		window_timer = 0;
	}

	if window == 3 {
		if window_timer == 4 && attack_down && !was_parried {
			window = 2;
			window_timer = 0;
			sound_play(asset_get("sfx_swipe_weak1"));
		}
	}
	if window > 3 && was_parried {
		was_parried = false;
	}
}

//Down tilt stuff
if (attack == AT_DTILT){
	if window == 4 and window_timer == 4 and !was_parried {
		set_state(PS_CROUCH);
		state_timer = 8;
	}
}


//Down aerial cooldown
if (attack == AT_DAIR){
	if window == 1 and window_timer == 2 {
		sound_play(sound_get("sfx_summon"));
	}
	if window == 3 and window_timer == 5 {
		move_cooldown[AT_DAIR] = 90;
	}

	if 4 > window {
		can_fast_fall = false;
	} else {
		can_fast_fall = true;
	}
}

//Down special stuff
if (attack == AT_DSPECIAL){
	if window == 2 and window_timer == 6 {
		instance_create(x+50*spr_dir, y-2, "obj_article1");
		spawn_hit_fx( x+50*spr_dir, y-30, AppearBruh);
	}
}

//Neutral special cooldown
if (attack == AT_NSPECIAL){
	if window == 3 and window_timer == 3 {
		move_cooldown[AT_NSPECIAL] = 40;
	}
}

if stupidThings >= 60 {
	if stupidThings >= 85 {
		pizzaMoveSprite = sprite_get("pizzagirl_move");
		pizzaFallSprite = sprite_get("pizzagirl_fall");
		pizzaTurnSprite = sprite_get("pizzagirl_turn");
	}
	hMoveSprite = sprite_get("h_b_move");
	hFallSprite = sprite_get("h_b_fall");
	hTurnSprite = sprite_get("h_b_turn");
} else {
	hMoveSprite = sprite_get("h_move");
	hFallSprite = sprite_get("h_fall");
	hTurnSprite = sprite_get("h_turn");
	pizzaMoveSprite = sprite_get("pizzadino_move");
	pizzaFallSprite = sprite_get("pizzadino_fall");
	pizzaTurnSprite = sprite_get("pizzadino_turn");
}

//Forward special stuff
if (attack == AT_FSPECIAL){
	if window == 1 && window_timer == 1 || window == 4 && window_timer == 1 {
		HCharge = 0;
	}
	
	if window == 2 {
		stupidThings = random_func(0, 100, true);
	}
	
	if window == 5 and window_timer == 7 {
		move_cooldown[AT_FSPECIAL] = 160;
	}
	
	if window == 2 && window_timer > 5 {
		if special_down && 60 > HCharge {
			HCharge++;
			if window_timer == 7 {
				window_timer = 6;
			}
		}	else {
				window = 3;
				window_timer = 0;
		}
		if HCharge == 40 {
			sound_play(asset_get("mfx_coin"));
		}
	}
	
	if HCharge >= 40 {
		set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 999);
		set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 4);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_appear_pizzadino"));
	} else {
		reset_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW);
		reset_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW);	
		reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX);
	}
}

//Up special stuff
if (attack == AT_USPECIAL) {
	can_attack = true;
	can_fast_fall = false;
	can_shield = true;
	if window == 2 and burnerFuel > 0 {
		if vsp > -5 {
			vsp -= 1;
		}
		
		burnerFuel -= 2;
		
		if special_down and window_timer == 14 {
		window = 2;
		window_timer = 0;
		}
		else if window_timer == 14 {
		window = 3;
		window_timer = 0;
		}
	}
}

if burnerFuel <= 0 {
	burnerFuel = 0;
}
if burnerFuel == 0 {
    move_cooldown[AT_USPECIAL] = 999;
	}
	
//Burner stuff
if burnerFuel > 40 {
	if attack == AT_FAIR && window == 3 && window_timer == 1 && !hitpause {
		if attack_down || strong_down || left_strong_down || right_strong_down {
			vsp = clamp(vsp, -100, -2);
			hsp = -8*spr_dir;
			old_hsp = -8*spr_dir;
			burnerFuel -= 60;
		}
	}
}
	
//UAir momentum stuff
if (attack == AT_UAIR && window == 2 && window_timer == 5 && !hitpause) {
	vsp = clamp(vsp, -100, 0);
}

if (attack == AT_BAIR && window == 3 && window_timer == 2 && !hitpause) {
	hsp -= 1*spr_dir;
}

//VFX Stuff

if (attack == AT_FSPECIAL && !hitpause) {
	if (window == 3 && window_timer == 3) {
		spawn_hit_fx( x+56*spr_dir, y-30, AppearBruh);
	}
	if HCharge > 0 && (window == 2 && window_timer == 6 && HCharge == 1 || window == 3 && window_timer == 0 || window == 2 && HCharge == 40) {
		spawn_hit_fx(x+32*spr_dir, y-50, TeeVeeBruh);
	}
}


if (attack == AT_FSTRONG && !hitpause) {
	if (window == 3 && window_timer == 2) {
	spawn_base_dust(x-10*spr_dir, y, "dash_start", spr_dir);
	}
}

if (attack == AT_USTRONG && !hitpause) {
	if (window == 3 && window_timer == 3) {
	spawn_base_dust(x+2*spr_dir, y, "jump", spr_dir);
	}
}

if (attack == AT_DTILT && !hitpause) {
	if (window == 1 && window_timer == 4) {
		spawn_base_dust(x+30*spr_dir, y, "dash", -spr_dir);
	}
}

if (attack == AT_DSTRONG && !hitpause) {
	if window == 1 && window_timer == 1 {
		reset_attack_value(AT_DSTRONG, AG_SPRITE);
	}
	if (window == 3 && window_timer == 4) {
		spawn_base_dust(x-40*spr_dir, y, "dash", spr_dir);
	}
	if (window == 4 && window_timer == 2) {
		spawn_base_dust(x+40*spr_dir, y, "dash_start", -spr_dir);
	}
}

//Taunt stuff
if (attack == AT_TAUNT) {
	if window == 2 && window_timer == 3 {
	spawn_base_dust(x, y, "land", spr_dir);
	}
	
	if window == 3 && window_timer == 12 {
		sound_play(sound_get("bluey_taunt"), false, noone, 1, .95);
	}
	if window == 5 {
		if window_timer == 12 && taunt_down {
			window_timer = 0;
		}
		hsp = clamp(hsp, -3, 3);
		if left_down {
			hsp -= .25;
		}
		if right_down {
			hsp += .25;
		}
	}
}

//Uspecial stuff
if (attack == AT_USPECIAL) {
	can_wall_jump = true;
}

//Fstrong picture
if (attack == AT_FSTRONG) && window == 1 && window_timer == 1 {
	if copyright {
	randomTaunt = random_func(0, 80, true);
	} else {
	randomTaunt = random_func(0, 111, true);	
	}
	//this is for debug purposes
	//randomTaunt = 11;
}

if attack == AT_FSTRONG {
	if window == 3 && window_timer == 3 {
		if randomTaunt == 0 {
			sound_play(sound_get("sfx_switchsnap"));
		}
		if randomTaunt == 3 {
			sound_play(sound_get("vineboom"));
		}
		if randomTaunt == 8 {
			sound_play(sound_get("PICKLE"));
		}
		if randomTaunt == 20 { //it's actually the 21th picture
			sound_play(sound_get("21"));
		}
		if randomTaunt == 51 && !copyright {
			sound_play(sound_get("bigyoshi"));
		}
		if randomTaunt == 59 {
			sound_play(sound_get("picklepower"));
		}
		if randomTaunt == 68 && !copyright {
			sound_play(sound_get("thwomp"));
		}
		if randomTaunt == 69 {
			sound_play(sound_get("pufferfish"));
		}
		if randomTaunt == 70 {
			sound_play(sound_get("amongus"));
			sound_play(sound_get("AMOGUS"));
		}
		if randomTaunt == 71 {
			sound_play(sound_get("dripgoku"));
		}
		if randomTaunt == 72 {
			sound_play(sound_get("squeaky"));
		}
		if randomTaunt == 74 {
			sound_play(sound_get("bluy"));
		}
		if randomTaunt == 79 {
			sound_play(sound_get("bluey_taunt"));
		}	
	}
	if window == 6 and window_timer == 4 {
		if strong_down {
			window_timer = 0;
		} else {
			window = 7;
			window_timer = 0;
		}
	}
}

//Control the Blueytank's movement
with(asset_get("obj_article1")){
    if (player_id == other.id && player_id.attack == AT_DSPECIAL_2 && player_id.window == 1 && player_id.window_timer == 1) {
		if state = 2 {
			if player_id.spr_dir == spr_dir {
				if !free {
					vsp -= 6;
				} else {
					vsp = clamp(vsp,-100,3);
				}
			} else {
				sprite_index = sprite_get("blueytank_turn");
				state = 3;
				image_index = 1;
				image_speed = 0;
				turnaroundTimer = 6;
			}
				player_id.move_cooldown[AT_DSPECIAL_2] = 70;
		}
	}
}

if (attack == AT_FSPECIAL_2 && window == 1 && window_timer == 1) {
	move_cooldown[AT_FSPECIAL_2] = 50;
}

if window == 1 {
	randomFunny = random_func(0, 12, true);
}

//funny sounds
if has_hit_player && (hit_player_obj.activated_kill_effect) {
	if attack == AT_DSTRONG {
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_fu"));
	}
	if (funnyfish == 6) && funnySound {
		if attack == AT_BAIR {
			sound_play(sound_get("tacobell"));
		}
		if attack == AT_FAIR {
			sound_play(sound_get("vineboom"));
		}
		if attack == AT_USTRONG {
			sound_play(sound_get("fwr"));
		}
		if attack == AT_DSTRONG {
			sound_play(sound_get("vineboom"));
		}
		if !(attack == AT_FAIR || attack == AT_BAIR || attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG) {
			if randomFunny == 11 {
				sound_play(sound_get("hamburger"));
			} if randomFunny == 10 {
				sound_play(sound_get("youstupid"));
			} if randomFunny == 9 {
				sound_play(sound_get("squeaky"));
			} if randomFunny == 8 {
				sound_play(sound_get("bababooey"));
			} if randomFunny == 7 {
				sound_play(sound_get("omagah"));
			} if randomFunny == 6 {
				sound_play(sound_get("wetfart"));
			} if randomFunny == 5 {
				sound_play(sound_get("fwr"));
			} if randomFunny == 4 {
				sound_play(sound_get("tacobell"));
			} if randomFunny == 3 {
				sound_play(sound_get("yodadies"));
			} if randomFunny == 2 {
				sound_play(sound_get("yeet"));
			} if randomFunny == 1 {
				sound_play(sound_get("bruh"));
			} if randomFunny == 0 {
				sound_play(sound_get("vineboom"));
			}
		}
	}
}

#define spawn_base_dust
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
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