// update.gml
#macro BOMB_DIRECTION_NONE -1
#macro BOMB_DIRECTION_UP 1
#macro BOMB_DIRECTION_DOWN 0


// Pandemonium Cloak stuff
if (usingPandemoniumCloak){
	pandemoniumCloakTimer++;
	
	// cause the flash and the color change
	if (pandemoniumCloakTimer == timeWhichPCChangesColor){
		pandemoniumCloakTimer = 0;
		pandemoniumFlashVisualThingy = 0.8;
		
		white_flash_timer = 16;
		
		// run user_event to change colors
		user_event(4);
		
		// SPAWN A BUNCH OF SPARKLES GRAHHHHHHHHHHH
		var taunt2goldsparkle = spawn_hit_fx(x - 32,
		y - 32,
		goldAlt_sparkle_fx_med);
		taunt2goldsparkle.hsp = -0.75;
		taunt2goldsparkle.vsp = -2;
		taunt2goldsparkle.gravity = 0.15;
		
		var taunt2goldsparkle2 = spawn_hit_fx(x + 32,
		y - 32,
		goldAlt_sparkle_fx_med);
		taunt2goldsparkle2.hsp = 0.7;
		taunt2goldsparkle2.vsp = -2;
		taunt2goldsparkle2.gravity = 0.15;
		
		var taunt2goldsparklesmall = spawn_hit_fx(x - 32,
		y - 10,
		goldAlt_sparkle_fx_sml);
		taunt2goldsparkle.hsp = -0.75;
		taunt2goldsparkle.vsp = -2;
		taunt2goldsparkle.gravity = 0.15;
		
		var taunt2goldsparklesmall2 = spawn_hit_fx(x + 32,
		y - 10,
		goldAlt_sparkle_fx_sml);
		taunt2goldsparkle2.hsp = 0.7;
		taunt2goldsparkle2.vsp = -2;
		taunt2goldsparkle2.gravity = 0.15;
	}
	
	// lower the flash timer
	if (pandemoniumFlashVisualThingy != 0){
		pandemoniumFlashVisualThingy -= .05;
	}
}

// intro stuff
if (introTimer < 0) {
	if (introTimer2 < 2) {
		introTimer2++;
	} else {
		introTimer2 = 0;
		introTimer++;
	}
} else {
	if (introTimer2 < 3) {
		introTimer2++;
	} else {
		introTimer2 = 0;
		introTimer++;
	}
}


if state == PS_WALL_JUMP or state == PS_WALL_TECH {
	move_cooldown[AT_FSPECIAL] = 0;
	has_performed_hop = false;
}

if nspecial_charged_stats.active {
	if nspecial_charged_stats.timer mod floor(nspecial_charged_stats.max_timer / 3) == 0 {
		var xx = nspecial_charged_stats.position.x;
		var x_dist = lengthdir_x(nspecial_charged_stats.separation_radius, nspecial_charged_stats.angle);
		var yy = nspecial_charged_stats.position.y
		var y_dist = lengthdir_y(nspecial_charged_stats.separation_radius, nspecial_charged_stats.angle)
		
		spawn_hit_fx(xx + x_dist, yy + y_dist, bomb_bounce_fx);
		var t = create_hitbox(AT_EXTRA_1, (nspecial_charged_stats.timer > (2*nspecial_charged_stats.max_timer / 3) + 1 ) + 1, xx + floor(x_dist/1.5), yy + floor(y_dist/1.5))
		
		var sound_name = "sfx_mol_norm_explode";
		//print(nspecial_charged_stats.angle)
		switch nspecial_charged_stats.angle {
			case 90:
				t.kb_angle = 290;
				t.hit_flipper = 4;
			break;
			case 270:
				nspecial_charged_stats.angle_interval = -90
			break;
			case 180:
				t.kb_angle = 45;
			break;
			case 360:
				t.kb_angle = 90;
				sound_name = "sfx_mol_flare_explode";
			break;
		}
		
		if nspecial_charged_stats.angle != 270 {
			nspecial_charged_stats.angle_interval = 180
		}
		
		sound_play(asset_get(sound_name))
		nspecial_charged_stats.angle += nspecial_charged_stats.angle_interval;
	}
	
	if nspecial_charged_stats.timer >= nspecial_charged_stats.max_timer {
		nspecial_charged_stats.active = false;
	}
	else {
		nspecial_charged_stats.timer += 1;
	}
}


var num_explosions = 3;
var interval = 8;
var offset = 3;
if (bomb_cluster_info.active) {
	var cycle = (bomb_cluster_info.timer + offset) mod interval;
	if (cycle  == 0) {
		bomb_cluster_info.fx_angle = 30 * (bomb_cluster_info.fx_angle == 0)
		bomb_cluster_info.available_angles = []
		var bomb_to_spawn;
		if ( (bomb_cluster_info.timer + offset) / interval) == num_explosions {
			//print(bomb_cluster_info.timer)
			bomb_cluster_info.active = false;
			bomb_cluster_info.timer = 0;
			move_cooldown[AT_NSPECIAL] = 40
			bomb_to_spawn = 5
		}
		else {
			//print(bomb_cluster_info.timer)
			move_cooldown[AT_NSPECIAL] = 45
			bomb_to_spawn = 4
		}
		with create_hitbox(AT_NSPECIAL, bomb_to_spawn, bomb_cluster_info.x, bomb_cluster_info.y) {
			can_hit_self = other.bomb_cluster_info.can_hit_self;
			can_hit = other.bomb_cluster_info.can_hit
		}
	}
	else if cycle > interval - 3 {
		repeat (3) {
			var i = 1;
			var angle = 60*floor(random_func(1, 360, true) / 60) + bomb_cluster_info.fx_angle;
			while array_find_index(bomb_cluster_info.available_angles, angle) != -1 {
				angle = 60*floor(random_func(1+i, 360, true) / 60) + bomb_cluster_info.fx_angle;
				i++;
				
				if i == 9 {
					//print("COULD NOT FIND ANGLE, EXITING")
					break;
				}
			}
			if i == 9 continue;
			array_push(bomb_cluster_info.available_angles, angle);
			var x_pos = bomb_cluster_info.x+lengthdir_x(55,angle);
			var y_pos = bomb_cluster_info.y+lengthdir_y(55,angle);
			spawn_hit_fx(x_pos,y_pos,bomb_cluster_fx);
		}
	}
	if cycle == interval - 3 {
		spawn_hit_fx(bomb_cluster_info.x,bomb_cluster_info.y,bomb_cluster_fx);
		var cx = object_index != oTestPlayer ? bomb_cluster_info.x - get_instance_x(asset_get("camera_obj")) : sign(x - bomb_cluster_info.x);
		var position = round(cx / view_get_wview())
		sound_play(asset_get("sfx_mol_norm_explode"), false, position, 0.8)
		
	}
	if bomb_cluster_info.timer == 14 {
		var cx = object_index != oTestPlayer ? bomb_cluster_info.x - get_instance_x(asset_get("camera_obj")) : sign(x - bomb_cluster_info.x);
		var position = round(cx / view_get_wview())
		sound_play(sound_get("sfx_plague_cluster_explode"), false, position, 0.8)
	}
	
	bomb_cluster_info.timer += 1;
}


// dash turn stuff properly setting you back to the first frame of dash animation, making for a smoother transition from dturn to dash
if (state == PS_DASH_TURN and state_timer == dash_turn_time-1){
	state = PS_DASH;
	state_timer = 4;
}

if !free {
	nspecial_charged_times = 0;
	has_performed_hop = false;
}

if charging_nspecial_buffer {
	charged_nspecial_should_wait = (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) and (attack == AT_FSTRONG or attack == AT_USTRONG or attack == AT_DSTRONG)
	
	if !(state_cat == SC_HITSTUN) {
		if special_down {
			if move_cooldown[AT_EXTRA_1] == 0 {
				if charged_nspecial_timer == charged_nspecial_max_time - 1 {
					sound_play(asset_get("mfx_star"))
				}
				charged_nspecial_timer = min(charged_nspecial_timer + 1, charged_nspecial_max_time);
				
				// var arr = [0,0,0]
				// var idx = 0;
				// repeat (3) {
				// 	arr[idx] = lerp(0, bomb_color[idx], charged_nspecial_timer/charged_nspecial_max_time);
				// 	idx++;
				// }
			}
		}
		else {
			if !charged_nspecial_should_wait {
				if charged_nspecial_timer >= charged_nspecial_max_time {
					//print("charged nspecial should happen")
					set_attack(AT_NSPECIAL)
				}
				else {
					charged_nspecial_timer = 0;
					charging_nspecial_buffer = false;
				}
			}
		}
		init_shader();
	}
	
	var use_color = charged_nspecial_timer == charged_nspecial_max_time
	
	var mult = use_color ? (0.3*sin(get_gameplay_time() / 4)) + 0.7 : 1
	
	var color_to_use = merge_color(gb_outline_color, bb_color, (charged_nspecial_timer/charged_nspecial_max_time)*mult*0.8);
	outline_color = [color_get_red(color_to_use), color_get_green(color_to_use), color_get_blue(color_to_use) ]
}
else {
	if (get_player_color(player) == 7){
		outline_color = get_player_color(player) == 7 ? [35, 67, 49] : [0, 0, 0]
	} else if (get_player_color(player) == 17){
		outline_color = get_player_color(player) == 17 ? [76, 53, 0] : [0, 0, 0]
	} else {
		outline_color = [0, 0, 0];
	}
	init_shader();
	charged_nspecial_timer = 0;
}

with hit_fx_obj {
    if hit_fx == other.bomb_bounce_fx depth = other.depth - 4
}

if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) {
    switch (attack) {
    	case AT_FSTRONG:
    		if hitpause break;
    		
    		switch (window) {
    			case 1:
    			if window_timer == 3 {
    				spawn_base_dust( x + (10 * spr_dir), y, "dash", -spr_dir, 0);
    			} else if window_timer == 5 {
    				sound_play(asset_get("sfx_shovel_brandish"), false, noone, 0.8, 1.2)
    			}
    			break;
    			case 2:
    			if window_timer == 1 {
    				spawn_base_dust( x - (-5 * spr_dir), y, "dash_start", spr_dir, 0);
    			}
    			else if window_timer == 3 {
    				sound_play(asset_get("sfx_hod_dstrong_hit"))
    				sound_play(bomb_explode_sound, false, noone, 0.9, 1.2)
    			}
    			break;
    			case 3:
    				if window_timer == 0 {
    					spawn_base_dust( x + (74 * spr_dir), y, "land", spr_dir, 0);
    				}
    			
    		}
    		
    		if window == 5 and window_timer == 0 and !hitpause {
    			fstrong_dissipation_info.x = x + (spr_dir * 46);
    			fstrong_dissipation_info.y = y;
    		}
    		
    		if window == 6 and window_timer == 0 and !hitpause {
    			spawn_hit_fx(fstrong_dissipation_info.x, fstrong_dissipation_info.y, fstrong_dissipation_fx)
    		}
    	break;
    	case AT_USTRONG:
    		if window == 1 and !hitpause and window_timer == 2 {
    			sound_play(asset_get("sfx_forsburn_cape_swipe"))
    		}
    		
    		if window == 2 and window_timer == 3 and !hitpause {
    			sound_play(sound_get("sfx_plague_uspecial_rise"), false, noone, 0.6, 1.2)
				
				spawn_base_dust( x + (0 * spr_dir), y - 0, "jump", spr_dir, 0);
				if (free){
					spawn_base_dust( x + (0 * spr_dir), y - 0, "doublejump", spr_dir, 0);
				}
    		}
    	
    		if window == 3 and !hitpause {
    			var window_length = get_window_value(attack,window,AG_WINDOW_LENGTH)
    			var thing;
    			thing = ease_quartOut( floor( -(20 + (strong_charge/1.5)) ), -6, min(window_timer, window_length), window_length);
    			//print(thing)
    			vsp = thing
    		}
			
			if (window == 3 && window_timer == 3 && !hitpause) || (window == 4 && window_timer < 12 && window_timer mod 4 == 0 ){
				spawn_base_dust( x + (0 * spr_dir), y - 0, "doublejump_small", spr_dir, 0);
			}
    		
    		if window > 2 and state_timer mod 6 == 0 {
    			createAfterimage(x,y)
    		}
    	break;
		case AT_DATTACK:
			if (window == 1 and window_timer < 4 and !free) {//>
				can_ustrong = true;
			}
		break;
        case AT_NSPECIAL:
        if move_cooldown[AT_FSPECIAL] < 30 move_cooldown[AT_FSPECIAL] = 30;
            if window == 1 or (window == 2 and window_timer == 0){
                vsp *= 0.9;
                hsp *= 0.9
                
                if !direction_lock {
	                if up_down {
	                    bomb_direction = BOMB_DIRECTION_UP;
	                } else if down_down {
	                    bomb_direction = BOMB_DIRECTION_DOWN;
	                } else {
						bomb_direction = BOMB_DIRECTION_NONE;
					}
					nspecial_direction = bomb_direction
                }
            }
            if window == 2 and window_timer == 0 {
            	// print(nspecial_direction)
                bombs_thrown += 1;
                
                var bomb;
                if (nspecial_direction == BOMB_DIRECTION_DOWN) {
                	if (free){
                        bomb = create_hitbox(attack, 1, x+(10*spr_dir), y+10);
                        bomb.vsp = 8
                        with bomb {
                        	while (place_meeting(x,y,asset_get("par_block"))) {
                        		y-=2
                        	}
                        }
					}
					else {
						bomb = create_hitbox(attack, 1, x+(10*spr_dir), y-24);
					}
					if current_bomb_powder == 0 bomb.length /= 2;
					if current_bomb_powder == 2 bomb.length /= 3;
                    
					bomb.sprite_index = sprite_get("bomb_float");
                    bomb.hsp = spr_dir*7;
                    bomb.grounds = 0;
                    
                    bomb.air_friction = 0.14
                    bomb.grav = -0.8
                }
                else if (nspecial_direction  == BOMB_DIRECTION_UP)
                {
                    bomb = create_hitbox(attack, 1, x+(20*spr_dir), y-20);
                    bomb.sprite_index = sprite_get("bomb_lob");
                    bomb.hsp = spr_dir*4;
                    bomb.vsp = -14
                    bomb.air_friction = 0.05
                }
                else {	// neutral
                    bomb = create_hitbox(attack, 1, x+(40*spr_dir), y-20);
                    if !free {
						// bounce, grounded throw
                        bomb.hsp = spr_dir*6;
                        bomb.vsp = -7.65
                    }
                    else {
						// bounce, aerial throw
                        bomb.hsp = spr_dir*7.6;
                        bomb.vsp = 10.25 
                    }                    
                }
                if free {
					vsp = has_performed_hop ? vsp - 1 : min(vsp-4,-4)
                    hsp = -1.05*spr_dir                	
                }
                
                if bombs_thrown == bombs_thrown_max[current_bomb_powder] {
                    move_cooldown[AT_NSPECIAL] = 110;
                    has_performed_hop = true;
                }
                
                bomb.depth = depth + 2
                bomb.powder = current_bomb_powder;
                bomb.spr_dir = spr_dir
                with bomb {
                	if powder == 3 {
                		player_id.looped_sound = sound_play(sound_get("sfx_plague_sparkler_fire"), true)
                		stop_effect = true
                	}
                }
                if current_bomb_powder == 0 {
                	bomb.hit_effect = cascade_ember_explode_vfx;
                	bomb.extra_hitpause = 6;	
                }
            }
            
            
            
            if window == 3 and is_special_pressed(DIR_ANY) and window_timer > 2 and bombs_thrown < bombs_thrown_max[current_bomb_powder] {
                window = 1;
                window_timer = 2;
                direction_lock = true
				
				
				// turn around if holding in the opposite direction when throwing.
				if ((left_down && spr_dir == 1) || (right_down && spr_dir == -1)){
					spr_dir *= -1;
				}
				
            }
        break;
        case AT_USPECIAL:
            switch (window) {
                case 1:
                    hsp *= 0.9;
                    if vsp > 0 {
                        vsp *= 0.9;
                    }
                break;
                case 3:
                    if (window_timer mod 2 == 0 and !hitpause) {
                        var should_spawn_finisher = window_timer >= 5;
                        create_hitbox(attack, 2 + should_spawn_finisher, x, y);   
                    }
                break;
            }
        break;
    }
}

if display_timer != -1 {
	display_timer = min(display_timer+1, display_max_time);
	if !display_intro and display_timer == display_max_time {
		display_timer = -1;
	}
}
if (url != 3394535156){ player = -1 } // ignore this
var should_stop = true;
with pHitBox {
	if "powder" in self and player_id == other and powder == 3  {
		should_stop = false
		break;
	}
}
if should_stop sound_stop(looped_sound)

//print(state_timer);

//state stuff (copy pasted from larry for now to give rolls some dust and land sfx)
switch (state){
	case PS_ROLL_FORWARD:
	case PS_ROLL_BACKWARD:
		//
		if (state_timer == 20){	// change this later if i change the amt of frames for rolls
			sound_play(land_sound, false, noone, 1, 1);
			//spawn_base_dust(x,y, "land", spr_dir, 0);
			spawn_base_dust(x - 19,y, "walk", 1, 0);
			spawn_base_dust(x + 19,y, "walk", -1, 0);
		}
		if (state_timer > 2 && image_index < 6){//>
			hud_offset = 28;
		}
		break;
	case PS_LAND:
		if (state_timer == 1){
			sound_play(sound_get("sfx_SKPoS_land"), false, noone, 0.15, 1.05);
		}
		break;
	case PS_LANDING_LAG:
		if (state_timer == 1){
			sound_play(sound_get("sfx_SKPoS_land"), false, noone, 0.25, 1);
		}
		break;
	case PS_WAVELAND:
		if (state_timer == 1){
			sound_play(sound_get("sfx_SKPoS_land"), false, noone, 0.75, 1.3);
		}
		break;
}

updateAfterimages()
#define updateAfterimages()
for (var i = 0; i < ds_list_size(afterimages); i++) {
	afterimages[| i].alpha -= afterimages[| i].alpha_decay;
	
	if afterimages[| i].alpha <= 0 {
		ds_list_delete(afterimages, i);
		i--;
	}
}

#define createAfterimage(xx,yy)
ds_list_add(afterimages, {x:xx, y:yy, alpha:0.8, alpha_decay: 0.05, sprite:sprite_index, frame:image_index, spr_dir:spr_dir})

// ------------------------------------------------------

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
// use this to be awesome
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