
if state == PS_CROUCH{
    if state_timer == 3{
    	if bonk_type != 11{
        	sound_play(bonk_sound);
    	} else {
    		sound_play(bonk_sound, false, 0, 1, 2);
    	}
    }
}

//
if spr_dir == 1{
    if left_down{
        back_down = true;
        forward_down = false;
    }
    if right_down{
        back_down = false;
        forward_down = true;
    }
    if !left_down and !right_down{
        back_down = false;
    }
}
if spr_dir == -1{
    if right_down{
        back_down = true;
        forward_down = false;
    }
    if left_down{
        back_down = false;
        forward_down = true;
    }
    if !left_down and !right_down{
        back_down = false;
        forward_down = false;
    }
}

// Dash Turn Thing
if ((state == PS_DASH_TURN and state_timer == 0)){
    set_attack(AT_NTHROW);
}

if state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND or attack != AT_FSPECIAL{
	hit_wall = false;
	can_escape = false;
}

if is_shifting{
	if air_max_speed != air_max_speed_shif{
	    air_max_speed = air_max_speed_shif;
		air_accel = air_accel_shift;
	}
	if state_cat = SC_HITSTUN or state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP or state == PS_WALL_TECH{
		is_shifting = false;
	}
	if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
		if attack != AT_NTHROW{
			is_shifting = false;
		}
	}
	if free{
		// Keep the air movement
	} else {
		// are we about to jump?
		// if not, we're not shifting anymore.
		if state != PS_JUMPSQUAT and state != PS_WAVELAND{
			is_shifting = false;
		}
		if state == PS_WAVELAND{
			hsp = round(shift_speed) * spr_dir;
			is_shifting = false;
		}
	}
} else {
	if air_max_speed != air_accel_norm{
		// Return to the norm.
		air_accel = air_accel_norm;
		air_max_speed = air_max_speed_norm;
	}
}

// Shades
current_sprite_set = shades;

if get_gameplay_time() == 2{
	if shield_down{
		shades = 1;
        set_ui_element(UI_HUD_ICON, sprite_get("hud_hat"));
        set_ui_element(UI_HUDHURT_ICON, sprite_get("hurt_hat"));
        set_ui_element(UI_CHARSELECT, sprite_get("charselect_hat"));
        set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_hat"));
        set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_hat"));
		/*
		if attack_down{
			shades = 2;
		}*/
	}
}

if can_fspec_jump{
	if jump_pressed{
		if !free{
			set_state(PS_JUMPSQUAT);
		} else {
			djumps = 1;
			set_state(PS_JUMPSQUAT);
		}
	}
}

if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
	if attack == AT_NTHROW{
		if ((window == 3 and window_timer == 1) and !hitpause){
			hsp = 8 * spr_dir;
		}
	}
	if attack == AT_EXTRA_1{
		can_jump = true;
		can_tap_jump();
	}
	if attack == AT_NSPECIAL_AIR{
		if !free{
			if !has_hit{
				set_state(PS_LANDING_LAG);
			} else {
				set_state(PS_LAND);
			}
		}
	}
	if attack != AT_FSPECIAL{
		can_fspec_jump = false;
	}
} else {
	sound_stop(sound_get("sfx_fspecial_loop"));
	can_fspec_jump = false;
}

#region // Rain Dance Functions
var range = 72;

if raincloud != noone{
	if raincloud.state == 3{
		move_cooldown[AT_DSPECIAL] = 60;
	}
}

var under_cloud = false;
with (obj_article1) {
  if "is_squr_cloud" in self {
    if (other.x < x + range) and (other.x > x - range){
      under_cloud = true;
      break; //this exits the with statement
    }
  }
}


if under_cloud{
	//print("Under Cloud");
	is_squr_wet = true;
	squr_buff_timer = 0;
} else {
	//print("Not Under Cloud");
	if is_squr_wet{
		if squr_buff_timer <= squr_buff_timer_max{
			if state_cat == SC_HITSTUN and state != PS_TUMBLE{
				if squr_buff_timer != squr_buff_timer_max - 1 {
					squr_buff_timer++;
				}
			} else {
				squr_buff_timer++;
			}
		} else {
			is_squr_wet = false;
		}
	}
}

if raincloud == noone{
	if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
		if attack == AT_DSPECIAL_2 and window < 3{
			window = 3;
			window_timer = 0;
		}
	}
}

if is_squr_wet{
	//print_debug("WET");
	if shift_speed != rain_shift_speed{
		sound_play(sound_get("sfx_stat_up"), false, 0, .25);
		sound_stop(sound_get("sfx_stat_down"));
		shift_speed = rain_shift_speed;
		shiftjump_speed = rain_shiftjump_speed;
		turbocrawl_speed = rain_turbocrawl_speed;
		pivot_boost = rain_pivot_boost;
		hydroplane_speed = rain_hydroplane;
		wave_land_adj = rain_wave_land_adj;
		wave_friction = rain_wave_friction;
		ground_friction = rain_ground_friction;
		air_friction = rain_air_friction;
		
		var nspec_bkb = 7;
		var nspec_kbs = .8;
		var nspec_bhp = 10;
		var nspec_hps = .65;
		var fspec_bkb = 6;
		var fspec_kbs = .55;
		var fspec_bhp = 8;
		var uspec_bkb = 8;
		var uspec_kbs = .5;
		var uspec_bhp = 18;
		var uspec_hps = .95;
		
		set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .05);
		set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
		set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
		
		// Knockback Increase
		// NSpecial
		set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, nspec_bkb);
		set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, nspec_kbs);
		set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_HITPAUSE, nspec_bhp);
		set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, nspec_hps);
		
		set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, nspec_bkb);
		set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, nspec_kbs);
		set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, nspec_bhp);
		set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, nspec_hps);
		
		set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 7);
		set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_EXTRA_HITPAUSE, 7);
		
		set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sfx_supereffective);
		set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HIT_SFX, sfx_supereffective);
		
		// FSpecial
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, fspec_bkb);
		set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, fspec_kbs);
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, fspec_bhp);
		set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 5);
		
		set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sfx_supereffective);
		
		// USpecial
		set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, uspec_bkb);
		set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, uspec_kbs);
		set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, uspec_bhp);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, uspec_hps);
		set_hitbox_value(AT_USPECIAL, 5, HG_EXTRA_HITPAUSE, 10);
		
		set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, sfx_supereffective);
	}
	
	if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
		switch(attack){
			case AT_NSPECIAL:
			case AT_NSPECIAL_AIR:
			case AT_FSPECIAL:
			case AT_USPECIAL:
			case AT_FSTRONG:
			case AT_DSTRONG:
			case AT_USTRONG:
				if ((window == 1 and window_timer == 1) and !hitpause){
					spawn_hit_fx(x, y - 16, vfx_specialshine);
					sound_play(asset_get("sfx_orca_absorb"))
				}
				break;
		}
	}
	
	// Change Outline
	if wet_flash < 155 and wait_timer_thing == -1{
		wet_flash += 5;
		outline_color = [0, wet_flash, wet_flash];
	}

	if wet_flash == 155{
		wait_timer_thing++;
		if wait_timer_thing == 15{
			wait_timer_thing = -2;
		}
	}

	if wet_flash > 0 and wait_timer_thing == -2{
		wet_flash -= 5;
		outline_color = [0, wet_flash, wet_flash];
	}
	if wet_flash == 0{
		wait_timer_thing++;
		if wait_timer_thing == 14{
			wait_timer_thing = -1;
		}
	}
	init_shader();
} else {
	if shift_speed != norm_shift_speed{
		sound_play(sound_get("sfx_stat_down"), false, 0, .25);
		//print_debug("DRY");
		reset_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION);
		reset_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION);
		reset_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION);
		
		reset_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_NSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_NSPECIAL_AIR, 3, HG_EXTRA_HITPAUSE);
	
		reset_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE);
		
		reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE);
		
		reset_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_USPECIAL, 5, HG_EXTRA_HITPAUSE);
		
		reset_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX);
		reset_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HIT_SFX);
		reset_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX);
		
		shift_speed = norm_shift_speed;
		shiftjump_speed = norm_shiftjump_speed;
		turbocrawl_speed = norm_turbocrawl_speed;
		pivot_boost = norm_pivot_boost;
		hydroplane_speed = norm_hydroplane;
		wave_land_adj = norm_wave_land_adj;
		wave_friction = norm_wave_friction;
		ground_friction = norm_ground_friction;
		air_friction = norm_air_friction;
	}
	
	wet_flash = 0;   // literally don't even worry about this.
	wait_timer_thing = -1;
	outline_color = [0, 0, 0];
	init_shader();
}

//print_debug(string(shift_speed))

#endregion


var temp_stage_id = get_stage_data(SD_ID);
//print_debug(string(temp_stage_id))

// Check if you are on Kragg Rock
if place_meeting(x, y+2, asset_get("pillar_obj")) or place_meeting(x, y + 2, asset_get("rock_obj")){
	on_kragg_thing = true;
} else {
	on_kragg_thing = false;
}
if place_meeting(x, y+2, asset_get("ice_obj")){
	on_ice = true;
} else {
	on_ice = false;
}
if place_meeting(x, y+2, asset_get("wolf_grass_obj")){
	touching_grass = true;
} else {
	touching_grass = false;
}

if place_meeting(x, y, asset_get("puddle_obj")){
	on_puddle = true;
} else {
	on_puddle = false;
}
if place_meeting(x, y+2, asset_get("gus_rock_obj")){
	on_shov_dirt = true;
} else {
	on_shov_dirt = false;
}
if place_meeting(x, y+2, asset_get("treasure_rock_obj")){
	on_shov_rock = true;
} else {
	on_shov_rock = false;
}

if place_meeting(x, y+2, asset_get("obj_article_platform")){
	// Check for Epinel
	if variable_instance_exists(asset_get("obj_article_platform"), "time_until_crumble"){
		on_epi_plat = true;
	}
} else {
	on_epi_plat = false;
}

if place_meeting(x, y+2, asset_get("par_block")){
	on_thing = true;
} else {
	if place_meeting(x, y+2, asset_get("par_jumpthrough")){
		on_thing = true;
	} else {
		// If Not
		on_thing = false;
	}
}

if on_kragg_thing or on_ice or touching_grass or on_puddle or on_shov_dirt or on_shov_rock or on_epi_plat{
	sound_overriding = true;
} else {
	sound_overriding = false;
}

if on_kragg_thing or on_shov_rock or on_epi_plat{
	bonk_type = 3;
}
if on_ice {
	// get disney money
	bonk_type = 11;
}
if touching_grass{
	bonk_type = 2;
}
if on_puddle{
	bonk_type = 10;
}
if on_shov_dirt{
	bonk_type = 6;
}

if on_thing and !sound_overriding{
	switch(temp_stage_id){
		// Stone
		case 4:		// Rock Wall
		case 9:		// Tempest Peak
		case 11:	// Aetheral Gates
		case 12:	// Endless Abyss
		case 36:	// Creatures of Aether Stage
		case 27:	// Rock Ring
		case 23:	// Go to School
		case 35:
			bonk_type = 3;
			break;
		case 33:
			if y < 500{
				if x < 590{
					bonk_type = 10;
				} else {
					bonk_type = 12;
				}
			}
			if y > 500{
				if x < 620{
					bonk_type = 3;
				} else {
					bonk_type = 4;
				}
			}
			
			break;
		case 2:		// Fire Capital
			if y < 330{
				// that
				bonk_type = 3;
			}
			if y > 330 and y < 420{
				// that
				bonk_type = 1;
			}
			if y > 510{
				bonk_type = 3;
			}
			break;
		
		// Metal
		case 3:		// Air Armada
		case 14:	// CEO Ring
		case 24:	// Shovel Knight Stage
		case 34:
			bonk_type = 9;
			break;
		case 32:
			if x == 699 and y == 496{
				bonk_type = 69;
			} else {
				bonk_type = 9;
			}
			break;
		case 17:
			if y < 420{
				// that
				bonk_type = 9;
			}
			if y > 510{
				bonk_type = 3;
			}
			break;
		case 20:
			if y < 320{
				// that
				bonk_type = 1;
			}
			if y > 320{
				bonk_type = 9;
			}
			break;
		
		// Touching Grass
		case 15:	// Spirit Tree
		case 19:	// Forest Floor
			bonk_type = 2;
			break;
		case 18:	// Swampy Estuary
			if y < 390{
				// that
				bonk_type = 1;
			}
			if (y > 390 and y < 410){
				// that
				bonk_type = 3;
			}
			if y > 490{
				if (x > 540 and x < 805){
					bonk_type = 3;
				} else {
					bonk_type = 2;
				}
			}
			break;
		
		// Water
		case 03882:
		case 04369:	// Nice
			bonk_type = 10;
			break;
		
		// WOOD
		case 1:		// Treetop Lodge
		case 7:		// Blazing Hideout
		case 21:	// Trupple Pond
		case 11221:
	        bonk_type = 1;
	        break;
		case 5:		// Merchant Port
			if y < 390{
				// that
				bonk_type = 1;
			}
			if y > 390 and y < 405{
				// that
				bonk_type = 9;
			}
			if y > 490{
				bonk_type = 1;
			}
			break;
	        
		// SNOW
		case 10:	// Frozen Fortress
		case 25:	// Abyssal Gates
			bonk_type = 4;
			break;
		
		// Sand
		case 29:
			if y > 200 and y < 210{
				// that
				bonk_type = 9;
			}
			if y > 210 and y < 470{
				// that
				bonk_type = 7;
			}
			if y > 470{
				bonk_type = 5;
			}
			break;
		
		// Gameboy
		case 8:		// TOH
		case 22:	// Practice Room
		case 16:	// Tutorial Grid X
		case 26:	// Tutorial Grid
			bonk_type = 8;
			break;
	}
}

switch(bonk_type){
    case 0:
    	bonk_sound = sfx_hit_custom;
        break;
    case 1:
        bonk_sound = sfx_hit_wood;
        break;
    case 2:
    	bonk_sound = sfx_hit_grass;
    	break;
    case 3:
    	bonk_sound = sfx_hit_stone;
    	break;
    case 4:
    	bonk_sound = sfx_hit_snow;
        break;
    case 5:
        bonk_sound = sfx_hit_sand;
        break;
    case 6:
    	bonk_sound = sfx_hit_gravel;
    	break;
    case 7:
    	bonk_sound = sfx_hit_cloth;
    	break;
    case 8:
    	bonk_sound = sfx_hit_gameboy;
    	break;
    case 9:
    	bonk_sound = sfx_hit_metal;
    	break;
    case 10:
    	bonk_sound = sfx_hit_water;
    	break;
    case 11:
    	bonk_sound = sfx_hit_stone;
    	break;
    case 12:
    	bonk_sound = sfx_hit_gate;
    	break;
    case 69:
    	bonk_sound = sfx_hit_giik;
    	break;
}

#region // Secret Stage Compat
if variable_instance_exists(obj_stage_main, "moe_squr_bonk"){
    // Get The Thing
    with(asset_get("obj_stage_main")){
    	other.sfx_hit_custom = moe_squr_bonk;
    }
}

if variable_instance_exists(obj_stage_main, "moe_squr_bonk_type"){
    // Get THAT Thing
    with(asset_get("obj_stage_main")){
    	other.bonk_type = moe_squr_bonk_type;
    }
} else {
	bonk_type = 3;
}

#endregion