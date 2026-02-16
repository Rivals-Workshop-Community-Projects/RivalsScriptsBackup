//Animation

#macro AT_FAIR_2 31;
#macro AT_FAIR_3 37;
#macro AT_UAIR_2 38;
#macro AT_UAIR_3 39;
#macro AT_FSTRONG_3 40;
#macro AT_USTRONG_3 42;
#macro AT_FSPECIAL_FAIL 43;
#macro AT_USPECIAL_FAIL 44;
#macro AT_FSPECIAL2_FAIL 45;

//this is a superfluous way of making sure you don't see the giant white X during testing.
//remove this and the comment once you have every sprite done.
if sprite_index == 4145
{
    sprite_index = sprite_get("idle");
}


//intro anim template, remember post_draw and pre_draw can also add cool effects, 
//this is strip-based and only animates the character themselves
if (state == PS_SPAWN) && state_timer <= (11/0.2) + 44
{
    sprite_index = sprite_get("intro");
    image_index = maioeseeanimframes;
    
    //speed at which the intro animates
    if (state_timer > 45){
    	maioeseeanimframes+= 0.2;
    }
}

if (champ_alt && extra_col == 1){
	if (state == PS_WALK && state_timer % 26 == 0 && state_timer != 0 && !hitpause){
		squidward_step = (squidward_step == 1? 2 : 1);
		sound_play(sound_get("squidward_step" + string(squidward_step)), false, noone, 0.75, 1);
	}


	if (state == PS_DASH && state_timer % 13 == 1 && !hitpause){
		squidward_step = (squidward_step == 1? 2 : 1);
		sound_play(sound_get("squidward_step" + string(squidward_step)), false, noone, 0.75, 1);
	}
	
	if (state == PS_LAND || state == PS_WAVELAND || state == PS_PRATLAND && !was_parried || state == PS_LANDING_LAG){
		if (state_timer == 0 && !hitpause){
			squidward_step = (squidward_step == 1? 2 : 1);
			sound_play(sound_get("squidward_step" + string(squidward_step)), false, noone, 0.75, 1);
		}
	}
	
}

//when you want to use animation.gml during attacks, you need to first check if youre in an attack state
//otherwise these frames would appear outside of attack states
/*if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND
{
    switch (attack)
    {
        case AT_USPECIAL:
        {
            
        }break;
    }
}*/

/* Specific Sprites for Newcomer States
if state == PS_BURIED{sprite_index = sprite_get("[Desired Sprite Strip]");}
if state == PS_CRYSTALIZED{sprite_index = sprite_get("Desired Sprite Strip");}
if state == PS_FLASHED{sprite_index = sprite_get("Desired Sprite Strip");}
*/

if (state == PS_CROUCH && crouch_walking && down_down){
	sprite_index = sprite_get("crawl");
	image_index = crouch_walk_timer*crouch_walk_anim_speed;
}

if (sprite_index == sprite_get("uspecial2") && image_index == 0){
	in_cruiser = true;
}

if (in_cruiser && sprite_index != sprite_get("uspecial2")){
		var cruiser = spawn_hit_fx(x + 1*spr_dir, y - 48, vfx_cruiser);
		if (state != PS_WALL_JUMP){
			cruiser.spr_dir = spr_dir;
		} else {
			cruiser.spr_dir = -spr_dir;
		}
		cruiser.hsp = -4*spr_dir;
		cruiser.vsp = -6;
		cruiser.grav = 0.5;
		in_cruiser = false;
	}

if (is_attacking){
	switch (attack){
		case AT_FSTRONG:
		case AT_FSTRONG_2:
		case AT_FSTRONG_3:
			if (window == 1){
				if (window_timer == 0){
					strong_sfx = sound_play(sound_get("shovel_start"));
					strong_walking = false;
				}
				if (!strong_walking){
					strong_walk_index = 0.15;
				}
				if (smash_charging && strong_walk_dir != 0){
					if (strong_walk_dir == spr_dir){
						image_index = 14 + strong_walk_index;
						strong_walk_index += 0.15;
					} else {
						image_index = 22 - strong_walk_index;
						strong_walk_index += 0.15;
					}
					strong_walking = true;
				}
				if (strong_walk_index >= 8){
					strong_walk_index = 0.15;
				}
			} else {
				sound_stop(strong_sfx);
			}
		break;
		case AT_USTRONG:
		case AT_USTRONG_2:
		case AT_USTRONG_3:
			if (window == 1){
				if (window_timer == 0){
					strong_sfx = sound_play(sound_get("shovel_start"));
					strong_walking = false;
				}
				if (!strong_walking){
					strong_walk_index = 0.15;
				}
				if (smash_charging && strong_walk_dir != 0){
					if (strong_walk_dir == spr_dir){
						image_index = 21 - strong_walk_index;
						strong_walk_index += 0.15;
					} else {
						image_index = 13 + strong_walk_index;
						strong_walk_index += 0.15;
					}
					strong_walking = true;
				}
				if (strong_walk_index >= 8){
					strong_walk_index = 0.15;
				}
			} else {
				sound_stop(strong_sfx);
			}
		break;
		case AT_DSTRONG:
		if (!has_ladder){
    		sprite_index = sprite_get("dstrong_ladderless");
    	}
    	break;
    	case AT_FSPECIAL_2:
    	if (window == 1){
    		if (window_timer == 0 && !hitpause){
    			scan_sound = sound_play(sound_get("fspec2_scan"), false, noone, 0.8, 1);
    		} 
    	}
    	if (window == 2){
    		if (window_timer == 0 && !hitpause){
    			sound_play(asset_get("sfx_mol_flare_ready"));
    		}
    	}
    	if (window == 4 && !hitpause){
    		if (window_timer == 0){
    			sound_play(sound_get("fspec2_shock"), false, noone, 0.7, 1);
    		}
    	}
    	if (window == 7 && !hitpause){
    		if (window_timer == 0){
    			sound_play(asset_get("sfx_absa_cloud_pop"))
    		}
    	}
    	break;
		case AT_USPECIAL:
			if (window == 3){
				if (window_timer == 0){
					if (jetpack_turn_rate < 6){
						if (left_down xor right_down){
							jetpack_turn_rate += 2;
							if (left_down){
								jetpack_turned_left = true;
								jetpack_turned_right = false;
							}
							if (right_down){
								jetpack_turned_right = true;
								jetpack_turned_left = false;
							}
						}
					}
					if (jetpack_turn_rate > 0){
						if (!right_down && !left_down){
							jetpack_turn_rate = 0;
						}
						if  (right_down && jetpack_turned_left) || (left_down && jetpack_turned_right){
							jetpack_turn_rate = 2;
						}
					}
				}
				if (right_down){
					jetpack_dir -= jetpack_turn_rate;
					jetpack_spindex += jetpack_turn_rate*spr_dir;
				}
				if (left_down){
					jetpack_dir += jetpack_turn_rate;
					jetpack_spindex -= jetpack_turn_rate*spr_dir;
				}
			}
			if (window == 3 || window == 4){
				//image_index = 4 + (jetpack_spindex/45);
				if (jetpack_spindex != 0){
					spr_angle = jetpack_spindex*-spr_dir;
					sprite_change_offset("uspecial", 64, 64, true);
					draw_y = -30;
				} else {
					spr_angle = 0;
					sprite_change_offset("uspecial", 64, 79, true);
					sprite_change_offset("uspecial_hurt", 128, 128);
					draw_y = 0;
				}
				if (jetpack_spindex < 0){
					jetpack_spindex = 360;
				} if (jetpack_spindex > 360){
					jetpack_spindex = 0;
				}
				if (window == 4){
					if (jetpack_spindex > 180){
						jetpack_spindex = lerp(jetpack_spindex, 360, window_timer/get_window_value(attack, window, AG_WINDOW_LENGTH));
					} else {
						jetpack_spindex = lerp(jetpack_spindex, 0, window_timer/get_window_value(attack, window, AG_WINDOW_LENGTH));
					}
				} if (window == 5){
					if (window_timer == 1 && !hitpause){
						sound_play(sound_get("jetpack_break"));
						sound_play(asset_get("sfx_ell_steam_release"), false, noone, 1, 1.5);
					}
				}
			}
		break;
		case AT_USPECIAL_2:
		if (window > 1){
		if (taunt_down){
    		if (!uspec2_honking){
    			honk_start = sound_play(sound_get("uspec2_horn_start"));
    			uspec2_honking = true;
    		}
    		if (honk_timer <= 65){
    			honk_timer++;
    		}
    		if (honk_timer >= 65 && !honk_loop){
    			sound_stop(honk_start);
    			honk_sound = sound_play(sound_get("uspec2_horn_loop"), true, noone, 1, 1);
    			honk_loop = true;
    		}
    	} else {
    		if (uspec2_honking){
    			honk_timer = 0;
    			honk_loop = false;
    			sound_volume(honk_start, 0, 30);
    			sound_volume(honk_sound, 0, 30);
    			uspec2_honking = false;
    		}
    	}
		}
		break;
		
		case AT_DSPECIAL:
			if (window >= 3){
				if (place_anim == 1) && (image_index >= 8){
					image_index += 4;
				} else {
					image_index += 0;
				}
			}
		break;
		case AT_DSPECIAL_2:
    	if (window == 1 || window == 4 || window == 7) && (window_timer == 0 && !hitpause && current_scrap.name == "Homemade flashbang"){
    		sound_play(sound_get("scrap_diy_cork"), false, noone, 0.8, 1);
			var cork = spawn_hit_fx(x + 26*spr_dir, y - 48, flashbang_cork);
    		cork.spr_dir = spr_dir;
    		cork.hsp = 1*cork.spr_dir;;
    		cork.vsp = -2;
    		cork.grav = 0.5;
    		cork.depth = depth-1;
    	}
		break;
		
	}
}

with (pHitBox) if (player_id == other){
	
if (attack == AT_FSPECIAL && hbox_num == 1){
	if (hitbox_timer == 0){
		destroyed_effect = false;
	}
	if (hitbox_timer == length-1){
        sound_play(explode_sfx);
        var vfx = spawn_hit_fx(x, y, 262);
        var flash = create_hitbox(AT_FSPECIAL, 2, x, y);
        flash.can_hit_self = true;
        flash.player = player;
        destroyed_next = true;
		}
	if (!destroyed_next){
			if (destroyed && !destroyed_effect) {
				destroyed = false;
				destroyed_effect = true;
				transcendent = true;
                sound_play(asset_get("sfx_blow_weak1"));
                sound_play(drop_sfx, false, noone, 0.7, 1.2);
				if (place_meeting(x, y, pHitBox)){
					hsp *= -0.5;
				}
				vsp = -6;
			} 
			if (destroyed_effect){
				flashbang_bounced_ground = true;
				hitbox_timer = 0;
				length = 99999;
				transcendent = true;
				hit_priority = 0;
				proj_break = true;
				enemies = 1;
				grounds = 1;
				walls = 1;
			}
		}
	}
	
if (attack == AT_DSPECIAL_2){
    	
	if (hbox_num == 1 || hbox_num == 2){
		if (vsp > 0 && kb_angle != 45){
			kb_angle = 45;
		}
		if (hitbox_timer == 0){
			destroyed_effect = false;
			scrap_unsellable = false;
		}
		if (destroyed || destroyed_effect || destroyed_next){
			sound_stop(curr_sfx);
		}
		if (!destroyed_next){
			if (has_hit && !destroyed_effect){
				destroyed = false;
				scrap_unsellable = true;
				if (proj_scrap_id.name != "Whoopee cushion" && proj_scrap_id.name != "Soccer ball"){
					destroyed_effect = true;
					hsp *= -0.2;
					vsp = -5;
				} else if (proj_scrap_id.name == "Whoopee cushion" && !whoopee_hit) {
					whoopee_hit = true;
					hit_priority = 0;
					proj_break = true;
					transcendent = true;
					hsp *= -0.2;
					vsp = -5;
				} if (proj_scrap_id.name == "Soccer ball" && !soccer_hit) {
					soccer_hit = true;
					hit_priority = 0;
					proj_break = true;
					transcendent = true;
					soccer_destroyed_fake = true;
					hsp *= -0.2;
					vsp = -5;
				}

			} if (destroyed && !has_hit && !destroyed_effect) {
				destroyed = false;
				if (proj_scrap_id.name != "Soccer ball") destroyed_effect = true;
				transcendent = true;
			if (proj_scrap_id.name != "Soccer ball"){
				if (place_meeting(x, y, pHitBox)){
					hsp *= -0.3;
					will_explode = false;
				} else {
					hsp *= 0.3;
				}
				vsp = -4;
			}
				if ( destroyed_effect && !will_explode){
					if (hbox_num == 1){
						sound_play(asset_get("sfx_blow_weak1"), false, noone, 0.5, 1);
						sound_play(proj_scrap_id.sfx, false, noone, 0.5, 1);
						spawn_hit_fx(x, y, 301);
						if (proj_scrap_id.name == "Laser pointer"){
							sound_play(click_sfx, false, noone, 1, 0.9);
						}
					} else {
						sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.5, 1.6);
						sound_play(proj_scrap_id.sfx, false, noone, 0.5, 1);
						spawn_hit_fx(x, y, 304);
					}
				}
			} if (destroyed_effect){
				transcendent = true;
				hit_priority = 0;
				proj_break = true;
				enemies = 1;
				grounds = 1;
				walls = 1;
			}
		}
	} if (hbox_num == 3){
			if (destroyed || destroyed_next){
			sound_stop(bees_sfx);
		}
	}
	if (hbox_num == 1 || hbox_num == 2) {
	if (instance_exists(player_id.jeb_obj)){
    	if (place_meeting(x, y, player_id.jeb_obj) && !destroyed_effect && !was_parried && !has_hit && !scrap_unsellable) && (player_id.jeb_obj.state <= 2 && array_length(player_id.jeb_obj.scrap_on_counter) < 5) && (!collision_rectangle(player_id.jeb_obj.x + 21, player_id.jeb_obj.y + 6, player_id.jeb_obj.x + 44, player_id.jeb_obj.y + 21, self, true, false)){
    		with (player_id.jeb_obj){
    				scrap_total += other.proj_scrap_id.value;
    				sound_play(other.proj_scrap_id.sfx, false, noone, 0.6, 1);
    				array_push(scrap_instances, other.proj_scrap_id);
					var scrap_num = array_length(scrap_on_counter);
					scrap_instances[scrap_num].pos = random_func(0, 98, true);
					scrap_instances[scrap_num].index = other.proj_scrap_id.index;
    				array_push(scrap_on_counter, scrap_instances[scrap_num]);
    			}
    			scrap_unsellable = true;
    			destroyed_next = true;
    			}
    		}
    		if (destroyed || destroyed_effect || destroyed_next){
				sound_stop(curr_sfx);
				curr_sfx = noone;
			}
		}
	}
}

	if (small_scrap_obj != noone && !instance_exists(small_scrap_obj)){
		sound_stop(sound_get("scrap_teeth"));
		sound_stop(sound_get("scrap_robot"));
	}


var sprite_found = get_sprite_name(sprite_index)
if sprite_found != "null" process_form_sprite(sprite_found);

#define get_sprite_name(sprite_index)
return variable_instance_get(_ssnksprites.names,string(sprite_index),"null")

#define process_form_sprite(sprite)

var num_frames = image_number / num_sprite_sets;
var offset = num_frames * current_sprite_set;

var img_looped = image_index % num_frames + offset;
var img_set_duration = image_index / num_sprite_sets + offset;
var img_set_number = image_index + offset;
var img_one_frame = current_sprite_set;

switch(sprite){
	
	// looping anims
	case "idle":
	case "walk":
	case "crawl":
	case "dash":
	case "spinhurt":
	case "pratfall":
		image_index = img_looped;
		break;
	
	// anims w/ a set duration
	case "walkturn":
	case "dashstart":
	case "dashstop":
	case "dashturn":
	case "waveland":
	case "jumpstart":
	case "jump":
	case "doublejump":
	case "landinglag":
		image_index = img_set_duration;
		break;
	
	case "intro":
		image_index = maioeseeanimframes + offset;
		break;
	
	// anims w/ set numbers of frames per window
	case "crouch":
	case "parry":
	case "roll_forward":
	case "roll_backward":
	case "tech":
	case "airdodge":
	case "jab":
	case "ftilt":
	case "utilt":
	case "dtilt":
	case "dattack":
	case "nair":
	case "fair_shovel":
	case "fair_stop":
	case "fair_yield":
	case "bair":
	case "uair_shovel":
	case "uair_stop":
	case "uair_yield":
	case "dair":
	case "fstrong_shovel":
	case "fstrong_stop":
	case "fstrong_yield":
	case "ustrong_shovel":
	case "ustrong_stop":
	case "ustrong_yield":
	case "dstrong":
	case "dstrong_ladderless":
	case "nspecial":
	case "nspecial_air":
	case "nspecial3":
	case "fspecial":
	case "fspecial2":
	case "fspecial_fail":
	case "fspecial2_fail":
	case "fspecial_air":
	case "uspecial":
	case "uspecial2":
	case "uspecial_fail":
	case "uspecial_air":
	case "dspecial":
	case "dspecial2":
	case "taunt":
	case "taunt2":
		image_index = img_set_number;
		break;
	
	// 1 frame animations
	case "hurt":
	case "hurtground":
	case "bighurt":
	case "uphurt":
	case "downhurt":
	case "bouncehurt":
	case "pratland":
		image_index = img_one_frame;
		break;
	
	// walljump
	case "walljump":
		if image_index <= 0{
			image_index = img_set_number;
		}
		else{
			image_index = lerp(1, 6, (image_index - 1) / 12) + offset;
		}
		break;
	
	//land parrystun fix
		case "land":
		if (was_parried && state == PS_PRATLAND){
			image_index = img_set_duration;
			if (image_index >= num_frames + offset){
				image_index = (image_index % num_frames) + offset;
			}
		} else {
			image_index = img_set_duration;
		}
	break;
	
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