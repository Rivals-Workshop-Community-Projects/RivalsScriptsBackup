/* 
*                       --------- update.gml ---------
*  This file is called every frame regardless of what your character is doing.
*  Any code that affects gameplay and needs to run while the character is attacking
*  should be placed in this file.
*
*  
* 
*
*-----------------------------------------------------------------------------*/

/*
muno_event_type = 1;
user_event(14);
*/

//Ignore dis--------------------------------------------------------------------

init_shader();
if (attack_pressed && implode_timer == 0){
    implode_timer = 10;
}

if (implode_timer >= 1){
    implode_timer--;
}

if (implode_timer == 9){
    var temp_x = x
    var temp_y = y
    //bps_spawn("particle_group", temp_x, temp_y-40, false, spr_dir)
    //create_deathbox(x, y, 10, 10, player, true, 1, 1, 1);
}

//Combo SFX---------------------------------------------------------------------

if (combo_cd != 0){
    combo_cd -= 1;
} else {
    combo_num = 0
    combo_buffer = 0
}

//Kill SFX----------------------------------------------------------------------

if(has_hit_player){
	has_hit_player = false;
	if(hit_player_obj.activated_kill_effect){
		kill_sfx = 20;
		switch(attack){
			case(AT_FTHROW):
				kill_sfx = 0;
				break;
		}
		if (!red_mode){
			sound_play(sound_get("bhit2"), false, noone, 1, 1 + combo_num)
			sound_play(sound_get("rhit_large"), false, noone, 1, 1)
		} if (red_mode){
			sound_play(sound_get("rhit2"), false, noone, 1, 1 + combo_num)
		    sound_play(sound_get("rhit_large"), false, noone, 1, 1)
		}
    }
}

var temp_rhit = "rhit1"
var temp_bhit = "bhit1"
var temp_combo = combo_num
if (kill_sfx >= 0){
	//Switches SFX to echo
	switch(attack){
	case(AT_DATTACK):
	case(AT_NAIR):
	case(AT_DSPECIAL):
	case(AT_DSPECIAL_2):
	case(AT_DTILT):
	case(AT_JAB):
	case(AT_FTILT):
	case(AT_UTILT):
	case(AT_FAIR):
	case(AT_FSPECIAL):
	case(AT_FSPECIAL_2):
	case(AT_USPECIAL):
	case(AT_USPECIAL_2):
	case(AT_DAIR):
	case(AT_UAIR):
	case(AT_BAIR):
	case(AT_EXTRA_1):
	case(AT_EXTRA_2):
		temp_rhit = "rhit1"
		temp_bhit = "bhit1"
		temp_combo = combo_num
		break;
	case(AT_FSTRONG):
	case(AT_DSTRONG):
		temp_bhit = "dstrong"
		temp_combo = 0
		break;
	case(AT_USTRONG):
	case(AT_USTRONG_2):
		kill_sfx = 0;
		break;
	case(AT_DSTRONG_2):
		temp_rhit = "ruair"
		temp_combo = 0
		break;
	}
	kill_sfx--;
	switch(kill_sfx){
		case(19):
			if (red_mode){
				sound_play(sound_get(temp_rhit), false, noone, .8, 1 + temp_combo)
			} else {
				sound_play(sound_get(temp_bhit), false, noone, .8, 1 + temp_combo)
			}
			break;
		case(10):
			if (red_mode){
				sound_play(sound_get(temp_rhit), false, noone, .7, 1 + temp_combo)
			} else {
				sound_play(sound_get(temp_bhit), false, noone, .7, 1 + temp_combo)
			}
			break;
		case(1):
			if (red_mode){
				sound_play(sound_get(temp_rhit), false, noone, .5, 1 + temp_combo)
			} else {
				sound_play(sound_get(temp_bhit), false, noone, .5, 1 + temp_combo)
			}
			break;
	}
}

//Dash--------------------------------------------------------------------------

switch(state){
	case PS_DASH_START:
	sound_stop(asset_get("sfx_dash_start"));
		if (state_timer == 1){
        	sound_play(dash_sound);
		}
       break;
}

//Hit VFX-----------------------------------------------------------------------

//After Image
for(var i = array_length_1d(afterimage) - 1; i > 0; i--) afterimage[@ i] = afterimage[i - 1];

//Red
if (red_mode == 1){
	afterimage[@ i] = [sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_red, image_alpha];
}
//Purple 
else if (red_mode == 2){
	afterimage[@ i] = [sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_purple, image_alpha];
}
//Blue
else {
	afterimage[@ i] = [sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_blue, image_alpha];	
}

if (new_has_hit_player == true){
	
	if(hit_player_obj.activated_kill_effect){
		kill_effects = true;
	}
	new_has_hit_player = false;
}

if (kill_effects = true){
	hitfx_beams(2);
	kill_effects = false;
}
//Recharge----------------------------------------------------------------------
if(recharged == 0){
    recoverytick = recoverytick + 1;
    if(recoverytick > 6){
        recoverytimer = recoverytimer + 1;
        recoverytick = 0;
    }
    if(recoverytimer > 27){
        recharged = 1;
        recoverytimer = 0;
        recoverytick = 0;
    }
}

//Dodge VFX-------------------------------------------------------------------

if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_AIR_DODGE
|| state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD){
	if (state_timer >= 1){
		spawnPixels(1,0,0);
	}
}
//Other-------------------------------------------------------------------------
if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL){
	no_cd = false;
	dattack_jump = false;
	max_fall = max_fall_default;
}

//Bounce
if (state_cat == SC_GROUND_NEUTRAL || 
	state_cat == SC_AIR_NEUTRAL ||
	attack != AT_USPECIAL ||
	attack != AT_USPECIAL_2){
	bounce = false;
}

//Special Dash
if(!free){
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_FSPECIAL_2] = 0;
	move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_USPECIAL_2] = 0;
	special_dash = true;
}

if (state != PS_IDLE_AIR){
	special_jump = false;
} 

if (state == PS_WALL_JUMP){
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_FSPECIAL_2] = 0;
	move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_USPECIAL_2] = 0;
} 

if (state_cat == SC_HITSTUN){
	dash_angle = 0;
	sound_stop(sound_get("bdash1"))
	sound_stop(sound_get("rdash1"))
}

//Updates Kunai Coords
if (instance_exists(kunai)){ //article1
	kunai_target = (asset_get("obj_article1"));
	kunai_x_dest = kunai.x
	kunai_y_dest = kunai.y
}


//Hud Flash
if (red_flash >= 0){
		red_flash -= .1
}

//Reset max fall speed
if (attack != AT_EXTRA_2){
	max_fall = max_fall_default
}

//Reset max jump speed
if (state != 28 && state != 3){
	max_jump_hsp = max_jump_hsp_default;
	air_max_speed = air_max_speed_default;
	dattack_jump_vfx = false;
}

//Dattack jump cancel sfx
if (dattack_jump_vfx){
	//Jump SFX
	if (state == 28 && state_timer == 3){
		sound_play(sound_get("airdodge"))
	}
}

//Joycon Alt
if (joycons){
	if (state_cat == SC_GROUND_NEUTRAL ||
	state == PS_SPAWN){
		hsp = hsp - .05
	}
}

//Purple Stuff------------------------------------------------------------------

if (red_mode == 2){
	dash_cd = 15;
} else {
	dash_cd = old_dash_cd;
}

//Trailer Stuff-----------------------------------------------------------------

if (trailer_mode){
	with(asset_get("oPlayer")){
		hud_offset = 900;
	}
}

//Ruair Stuff-------------------------------------------------------------------
if (ruair_glow == true){
	ruair_glow = false
	ruair_glow_count = 10;
}


if (ruair_glow_count > 0){
	ruair_glow_count -= 1;
}

#define spawnPixels(count, xsp, ysp)

for (var i = 0; i < count; i++){
    var hfx_x = x + random_func(0 + i, 60, true) - 30;
    var hfx_y = y + random_func(1 + i, 60, true) - 30 - 36;
    
    if (!red_mode){
    	var hfx = spawn_hit_fx(hfx_x, hfx_y, fx_bdash_pixel1);
    } else {
    	var hfx = spawn_hit_fx(hfx_x, hfx_y, fx_rdash_pixel1);
    }
    hfx.hsp = xsp;
    hfx.vsp = ysp;
    hfx.draw_angle = spr_angle;
    hfx.depth = depth - 1;
}

return hfx;

#define hitfx_beams(count)
{
	for (var i = 0; i < count; i++){
		
		var r = random_func(i, 2, true);
		if (r == 1){
			if (red_mode){
				var b = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-30, fx_rhit_beams);
			} else {
				var b = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-30, fx_bhit_beams);
			}
		} else {
			if (red_mode){
				var b = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-30, fx_rhit_beams_small);
			} else {
				var b = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-30, fx_bhit_beams_small);
			}
		}
		
    	b.draw_angle = (random_func(i+1,360,true));
	}
}



#define bps_spawn(_group, _x, _y, _front, _dir)
	if (ds_map_exists(bps_groups, _group)) {
		temp_group = bps_groups[? _group]
		i = 0
		repeat(ds_list_size(temp_group)) {
			temp_part = temp_group[| i]
			print(temp_part[? "weight"])
			repeat (temp_part[? "amount"]) {
				if (_front) {
					ds_list_add(bps_post_active_parts, {
						"sprite": temp_part[? "sprite"],
						"weight": temp_part[? "weight"],
						"min_angle": temp_part[? "min_angle"],
						"max_angle": temp_part[? "max_angle"],
						"min_speed": temp_part[? "min_speed"],
						"max_speed": temp_part[? "max_speed"],
						"lifetime": temp_part[? "lifetime"],
						"angle_type": temp_part[? "angle_type"],
						"shader": temp_part[? "shader"],
						"init": false,
						"life": 0,
						"gravity": 0,
						"speed": 0,
						"x": _x,
						"y": _y,
						"dir": _dir
					})
				} else {
					ds_list_add(bps_pre_active_parts, {
						"sprite": temp_part[? "sprite"],
						"weight": temp_part[? "weight"],
						"min_angle": temp_part[? "min_angle"],
						"max_angle": temp_part[? "max_angle"],
						"min_speed": temp_part[? "min_speed"],
						"max_speed": temp_part[? "max_speed"],
						"lifetime": temp_part[? "lifetime"],
						"angle_type": temp_part[? "angle_type"],
						"shader": temp_part[? "shader"],
						"init": false,
						"life": 0,
						"gravity": 0,
						"speed": 0,
						"x": _x,
						"y": _y,
						"dir": _dir
					})
				}
			}
			i += 1
		}
	} else {
		print(`[ BluParticleSystem ] ERR => '${_group}' not a registered group`)
	}
