state_machine();

//Add in fractions
hsp += hsp_frac;
vsp += vsp_frac;
//Re-calculate fractions
hsp_frac = (hsp - (floor(abs(hsp)) * sign(hsp)));
vsp_frac = (vsp - (floor(abs(vsp)) * sign(vsp)));
//Get rid of fractions
hsp -= hsp_frac;
vsp -= vsp_frac;
hsp = floor(hsp);
vsp = floor(vsp);

if (hitstop <= 0) {
	old_hsp = hsp;
	old_vsp = vsp;
}
else if (hitstop == 1) {
	hsp = old_hsp;
	vsp = old_vsp;
}
else {
	hsp = 0;
	vsp = 0;
}
with (pHitBox) {
    if ("follower_owner" in self && follower_owner == other.id && attack == AT_DSPECIAL) {
        x = other.x;
        y = other.y + 64;
        other.was_parried = reflected;
    }
}

if (destroyed) {
    instance_destroy(id);
    exit;
}
#define state_machine()
if (hitstop > 0) return;
state_timer ++;
window_timer++;

var _stamina_weak = stamina <= stamina_threshold;
switch (state) {
    case 0: //Spawn
        sprite_index = sprite_get("icewall_spawn");
        
        if (state_timer == 1) {
			mask_index = asset_get("empty_sprite");	
        }
        switch (window) {
            case 1: //Searching the ground
                visible = false;
                
                hsp -= 0.5 * spr_dir;
                if (window_timer % 8 == 0) {
                    with (player_id) spawn_hit_fx(floor(other.x), floor(other.y + 96), 301);
                }
                var old_mask = mask_index;
				mask_index = sprite_get("icewall_collision");	
                var sol = place_meeting(x, y, asset_get("par_block"));
                
                while (sol) {
                	sol = place_meeting(x, y, asset_get("par_block"));
                    if (y < 0)
                    {
                        destroyed = true;
                        break;
                    }
                	y -= 2
                }
				
                while (!sol) {
                	sol = place_meeting(x, y, asset_get("par_block"));
                    if (y > room_height)
                    {
                        destroyed = true;
                        break;
                    }
                	y += 2
                }
                
                var off_r = !position_meeting(bbox_right + 48, bbox_bottom + 4, asset_get("par_block")) && !position_meeting(bbox_right + 48, bbox_bottom + 4, asset_get("par_block"))
                var off_l = !position_meeting(bbox_left - 48, bbox_bottom + 4, asset_get("par_block")) && !position_meeting(bbox_left - 48, bbox_bottom + 4, asset_get("par_block"))
                var wall = position_meeting(x + (96 * sign(hsp)), y - 2, asset_get("par_block"));
			
				mask_index = old_mask;
				
                var player_done_attacking = (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_DSPECIAL && player_id.window < 3
                if ((off_r && hsp > 0) || (off_l && hsp < 0) || wall || !player_done_attacking) {
                    visible = true;
                    hsp = 0;
                    state_timer = 0;
                    window = 2;
                    window_timer = 0;
                    
                    if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) {
                    	if (player_id.attack == AT_DSPECIAL) {
                    		player_id.window = 3;
                    		player_id.window_timer = 0;
							sound_play(sound_get("sfx_icewall_spawn"))
                    	}
                    }
                    else {
                		destroyed = true;
                    }
                }
                        
            break;
            case 2: //Spawning
                image_index = lerp_frames(0, 1, window_timer, 6);
                
                if (window_timer >= 6) {
                    window++;
                    window_timer = 0;
                }
            break;
            case 3: //Spawning
                image_index = lerp_frames(1, 1, window_timer, 3);
                if (window_timer == 1) {
                    create_article_hitbox(AT_DSPECIAL, 1, x, y + 94);
                }
                if (window_timer >= 3) {
                    window ++;
                    window_timer = 0;
                }
            break;
            case 4: //Spawning
                image_index = lerp_frames(2, 3, window_timer, 15);
                
                if (window_timer == 4) {
					mask_index = sprite_get("icewall_collision");	
                }
                if (window_timer >= 15) {
                    state = 1;
                    state_timer = 0;
                    window = 1;
                    window_timer = 0;
                }
            break;
        }
    break;
    case 1: //moving
		mask_index = sprite_get("icewall_collision");	
		if (state_timer == 1) {
	        sprite_index = _stamina_weak ? sprite_get("icewall_idle_d") : sprite_get("icewall_idle");
	        image_index = 0;
		}
		
    	if (was_parried) {
            despawn_timer = despawn_time;
    	}
		
		if (state_timer >= 15) {
	        sprite_index = _stamina_weak ? sprite_get("icewall_move_d") : sprite_get("icewall_move");
	        image_index += 0.25;
	        
			var off_r = !position_meeting(bbox_right + 48, bbox_bottom + 4, asset_get("par_block")) && !position_meeting(bbox_right + 48, bbox_bottom + 4, asset_get("par_block"))
            var off_l = !position_meeting(bbox_left - 48, bbox_bottom + 4, asset_get("par_block")) && !position_meeting(bbox_left - 48, bbox_bottom + 4, asset_get("par_block"))
            var wall = position_meeting(x + (96 * sign(hsp)), y - 2, asset_get("par_block")) && !place_meeting(x, y, asset_get("obj_article_solid"))
		
            if ((off_r && hsp > 0) || (off_l && hsp < 0) || wall) {
                despawn_timer = despawn_time;
            }
        	
        	hsp += 0.1 * spr_dir;     
        	hsp = clamp(hsp, -1, 1);
		
			despawn_timer ++;
		}
		if (despawn_timer >= despawn_time) {
            state = 2;
            state_timer = 0;
            window = 1;
            window_timer = 0;
            hsp = 0;
		}
		else {
            var old_mask = mask_index;
			mask_index = sprite_get("icewall_hurtbox");
			if (!instance_exists(wallsplat_id))
				hit_detection();
			mask_index = old_mask;
		}
		
		if (state_timer >= 25) {
			wallsplat_update();
		}
		
    break;
    case 2: //Despawn
        sprite_index = _stamina_weak ? sprite_get("icewall_despawn_d") :  sprite_get("icewall_despawn");
		mask_index = asset_get("empty_sprite");	
    
        switch (window) {
            case 1: //Searching the ground
                image_index = lerp_frames(0, 1, window_timer, 6);
                hsp = 0;
                if (window_timer >= 6) {
                    window++;
                    window_timer = 0;
                }
            break;
            case 2: //Spawning
                image_index = lerp_frames(1, 1, window_timer, 3);
                if (window_timer >= 3) {
                    window ++;
                    window_timer = 0;
                }
            break;
            case 3: //Spawning
                image_index = lerp_frames(2, 3, window_timer, 15);
                	
                if (window_timer >= 15) {
                	destroyed = true;
                }
            break;
        }
    break;
    case 3: //Destroyed from hitbox
        sprite_index = sprite_get("icewall_destroy");
		mask_index = asset_get("empty_sprite");	
    
        switch (window) {
            case 1: //Searching the ground
                image_index = lerp_frames(0, 1, window_timer, 6);
                
                if (window_timer == 1) {
            		sound_play(asset_get("sfx_oly_flashstun"), false, noone, 1, 1.1);
            		sound_play(asset_get("sfx_oly_nspecial_flashbreak"), false, noone, 1, 0.9);
                }
                
                if (window_timer >= 6) {
                    window++;
                    window_timer = 0;
                }
            break;
            case 2: //Spawning
                image_index = lerp_frames(1, 1, window_timer, 3);
                
                if (window_timer >= 3) {
                    window ++;
                    window_timer = 0;
                }
            break;
            case 3: //Spawning
                image_index = lerp_frames(2, 8, window_timer, 30);
                	
                if (window_timer >= 30) {
                	destroyed = true;
                }
            break;
        }
    break;
    case 4: //Destroyed from wallsplat
        sprite_index = sprite_get("icewall_destroy2");
		mask_index = asset_get("empty_sprite");	
    
        switch (window) {
            case 1: //Searching the ground
                image_index = lerp_frames(0, 0, window_timer, 6);
                
                if (window_timer == 1) {
            		sound_play(sound_get("sfx_icewall_hit"));
                	var _hb = create_article_hitbox(AT_DSPECIAL, 3, x, y + 94);
                	if (instance_exists(wallsplat_id)) {
						_hb.can_hit_self = true;
						for (var i = 0; i <= 4; ++i)
						{
							_hb.can_hit[i] = false;
							_hb.can_hit[wallsplat_id.player] = true;
						}
                	}
                }
                
                if (window_timer >= 6) {
                    window++;
                    window_timer = 0;
                }
            break;
            case 2: //Spawning
                image_index = lerp_frames(1, 8, window_timer, 36);
                	
                if (window_timer >= 36) {
                	destroyed = true;
                }
            break;
        }
    break;
    case 5: //Wallsplat
		mask_index = sprite_get("icewall_collision");	
		if (state_timer == 1) {
	        sprite_index = _stamina_weak ? sprite_get("icewall_idle_d") : sprite_get("icewall_idle");
	        image_index = 0;
	        
			if (instance_exists(wallsplat_id)) { 
				if (wallsplat_id.state == PS_HITSTUN)
				{
	                var wall_hitstop = 12;
	                sound_play(sound_get("sfx_icewall_hitstart"));
	                shake_camera(10, 10);
                	wallsplat_speed = wallsplat_id.orig_knock / 2.5;
                	wallsplat_time = min(wallsplat_min_time + 0.35 *  get_player_damage(wallsplat_id.player), wallsplat_max_time);
                	wallsplat_dir = wallsplat_id.x > x ? 1 : -1;
                	wallsplat_xoff = 40 * sign(wallsplat_id.x - x);
                	wallsplat_yoff = wallsplat_id.y - y;
	        		hitstop = wall_hitstop;
	        		wallsplat_id.hitstop = wall_hitstop;
					wallsplat_id.hitpause = true;
	        		wallsplat_id.orig_knock = 0;
	        		wallsplat_id.old_hsp = 0;
	        		wallsplat_id.old_vsp = 0;
	        		wallsplat_id.spr_dir = wallsplat_dir;
	        		
	        		with (player_id) {
	        			spawn_hit_fx(round(other.x + other.wallsplat_xoff), round(other.y + other.wallsplat_yoff), fx_icewall_stuck_fg);
	        			spawn_hit_fx(round(other.x + other.wallsplat_xoff), round(other.y + other.wallsplat_yoff), fx_icewall_stuck_bg);
	        			var _startfx = spawn_hit_fx(round(other.x - other.wallsplat_xoff), round((other.y - 32) + other.wallsplat_yoff), fx_icewall_stuck_start);
	        			_startfx.spr_dir = -other.spr_dir;
	        		}
				}
				else {
					wallsplat_id = noone;
				    hsp = 0;
		            state = 2;
		            state_timer = 0;
		            window = 1;
		            window_timer = 0;
				}
			}
		}
		if (!instance_exists(wallsplat_id)) { 
            state = 2;
            state_timer = 0;
            window = 1;
            window_timer = 0;
		}
		else {
			wallsplat_id.x = x + wallsplat_xoff;
			wallsplat_id.y = y + wallsplat_yoff;
			wallsplat_id.hitpause = true;
			wallsplat_id.hitstop ++;
	        switch (window) {
	            case 1: //SPLAT
					wallsplat_id.hitstun = 10;
					wallsplat_id.hitstun_full = 11;
					wallsplat_id.hurt_img = 0;
	            	if (hitstop <= 0) {
		            	if (window_timer <= 2) {
		            		hsp = -wallsplat_speed * wallsplat_dir;
		        		}
		        		else {
			            	hsp *= 0.9;
							var off_r = !position_meeting(bbox_right + 2, bbox_bottom + 4, asset_get("par_block"));
				            var off_l = !position_meeting(bbox_left - 2, bbox_bottom + 4, asset_get("par_block"));
				            var wall = position_meeting(x + (96 * sign(hsp)), y - 2, asset_get("par_block"));
						
				            if ((off_r && hsp > 0) || (off_l && hsp < 0) || wall) {
				                hsp = 0;
				            }
				        	
			            	if (abs(hsp) <= 1) {
			            		hsp = 0;
			            		window ++;
			            		window_timer = 0;
			            	}
		        		}
	            	}
	            break;
	            case 2: //Waiting for a hit
	            	if (window_timer >= wallsplat_time) {
			            state = 2;
			            state_timer = 0;
			            window = 1;
			            window_timer = 0;
	            	}
	            	
            		if (wallsplat_id.hitstun == wallsplat_id.hitstun_full) {
			            state = 4;
			            state_timer = 0;
			            window = 1;
			            window_timer = 0;
	            	}
	            break;
	        }
		}
    break;
    case 6: //Knockback
		mask_index = sprite_get("icewall_collision");
	    sprite_index = _stamina_weak ? sprite_get("icewall_idle_d") : sprite_get("icewall_idle");
    	if (hitstop <= 0) {
			var off_r = !position_meeting(bbox_right + 48, bbox_bottom + 4, asset_get("par_block"));
            var off_l = !position_meeting(bbox_left - 48, bbox_bottom + 4, asset_get("par_block"));
            var wall = position_meeting(x + (48 * sign(hsp)), y - 2, asset_get("par_block"));
		
            if ((off_r && hsp > 0) || (off_l && hsp < 0) || wall) {
                hsp = 0;
            }
            
        	if (window_timer >= 2) {
            	hsp *= 0.92;
	        	
            	if (abs(hsp) <= 1) {
	                hsp = 0;
					state = (stamina <= 0) ? 3 : 1;
					state_timer = 0;
					window = 1;
					window_timer = 0;
            	}
    		}
    	}
		if (state_timer >= 5) {
			wallsplat_update();
		}
        var old_mask = mask_index;
		mask_index = sprite_get("icewall_hurtbox");
		if (!instance_exists(wallsplat_id))
			hit_detection();
		mask_index = old_mask;
    break;
}

with (hit_fx_obj) {
	if (player_id == other.player_id) {
		if (hit_fx == player_id.fx_icewall_stuck_fg || hit_fx == player_id.fx_icewall_stuck_bg) {
    		start_frame = 1;
    		image_length = 1;
            spr_dir = other.wallsplat_dir;
            
    		if (other.wallsplat_dir == other.spr_dir) {
	    		x = round(other.x + other.hsp);
	            y = round((other.y - 32) + other.wallsplat_yoff + other.vsp);
	            depth = hit_fx == player_id.fx_icewall_stuck_fg ? -5 : 5;
    		}
    		else {
	    		x = round(other.x + other.hsp);
	            y = round((other.y - 32) + other.wallsplat_yoff + other.vsp);
	            depth = hit_fx == player_id.fx_icewall_stuck_fg ? -5 : 5;
    		}
            if (other.destroyed || other.state != 5) {
                step_timer = 240;
            }
		}
	}
}
	

#define wallsplat_update()
var old_mask = mask_index;
mask_index = sprite_get("icewall_hurtbox");	
with (oPlayer)
{
	//Create splort hitbox. Note this hitbox is heedless
	var wall_left = collision_rectangle(bbox_left - 16, bbox_top, bbox_left, bbox_bottom - 2, asset_get("par_block"), false, false);
	var wall_right = collision_rectangle(bbox_right, bbox_top, bbox_right + 16, bbox_bottom - 2, asset_get("par_block"), false, false);
	if ((wall_left && other.hsp < 0 && wall_right == other)
	|| (wall_right && other.hsp > 0 && wall_left == other)) {
		var _x = floor(x);
		var _y = floor(y);
		with (other) {
            state = 3;
            state_timer = 0;
            window = 1;
            window_timer = 0;
            hsp = 0;
            var _hbox = create_hitbox(AT_DSPECIAL, 4, _x, _y);
            _hbox.can_hit_self = true;
		}
		if (instance_exists(wall_left) && wall_left.object_index == obj_article_solid) {
			if (wall_left.player_id.url == other.player_id.url) {
				with (wall_left) {
		            state = 3;
		            state_timer = 0;
		            window = 1;
		            window_timer = 0;
		            hsp = 0;
				}
			}
		}
		if (instance_exists(wall_right) && wall_right.object_index == obj_article_solid) {
			if (wall_right.player_id.url == other.player_id.url) {
				with (wall_right) {
		            state = 3;
		            state_timer = 0;
		            window = 1;
		            window_timer = 0;
		            hsp = 0;
				}
			}
		}
		
	}
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
	if (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) && team_equal)) continue;
	if (state == PS_HITSTUN && state != PS_TUMBLE && !hitpause && !bubbled && free)
	{
        var check_id = instance_place(x + old_hsp, y + old_vsp, other);

		if (!instance_exists(check_id) || ("tomoko_wall" not in check_id && check_id.wallsplat_id != noone))
			wallsplat_id = noone;
    	else if (check_id != noone)
	    {
	        if (point_distance(0, 0, old_hsp, old_vsp) >= check_id.wallsplat_kb_threshold 
	        && abs(old_hsp) >= 2
	        && sign(old_hsp) == -spr_dir)
	        {
                check_id.state = 5;
                check_id.state_timer = 0;
                check_id.window = 1;
                check_id.window_timer = 0;
	        	check_id.wallsplat_id = id;
	        	hitstun = 10;
	        	hitstun_full = 11;
	        	set_state(PS_HITSTUN);
		    }
        }
	}
}
mask_index = old_mask;

#define got_hit(hbox)

var hit_dir = hbox.type == 1 ? -sign(hbox.player_id.x - x) : -sign(hbox.x - x);
if (hit_dir == 0)
	hit_dir = -spr_dir;
	
old_vsp = 0;
old_hsp = (orig_knock / 2) * hit_dir;

//despawn_timer += ceil(hbox.damage * 1.5);
stamina -= hbox.damage;
stamina = clamp(stamina, 0, stamina_max);

if (stamina <= 0) hit_lockout = 45;

state = 6;
state_timer = 0;
window = 1;
window_timer = 0;



#define lerp_frames(_img_start, _img_frames, _time, _total_time) 
return clamp(_img_start+floor(ease_linear(0,_img_frames-1, _time, _total_time)), 0, image_number - 1);


#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.

if (("tomoko_ignore_icewall" in hbox) && hbox.tomoko_ignore_icewall) || hbox.player_id.has_hit_player
	return;
//Default hit stuff
sound_play(hbox.sound_effect);

with (hbox.player_id) {
	var fx = spawn_hit_fx(floor(other.x+hbox.hit_effect_x),floor(other.y+ 96+hbox.hit_effect_y),floor(hbox.hit_effect == 0 ? 301 : hbox.hit_effect));
	fx.pause = 8;
}
 
hit_player_num = hbox.player;
owned_player = hit_player_num;

percent += hbox.damage;

//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.
var desired_hitstop = get_hitstop_formula(0, hbox.damage, hbox.hitpause, hbox.hitpause_growth, hbox.extra_hitpause)
var desired_hitstop = min(desired_hitstop, 20)

if hbox.type == 1 {
    with hbox.player_id {
        if !hitpause {
            old_vsp = vsp;
            old_hsp = hsp;
        }
        hitpause = true;
        has_hit = true;
        if hitstop < desired_hitstop {
            hitstop = desired_hitstop - hbox.extra_hitpause;
            hitstop_full = hitstop;
        }
    }
}
// This puts the ARTICLE in hitpause.
// If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause
// or comment out the line below.
hitstop = floor(desired_hitstop); 
hitstop = min(hitstop, 20)
 
//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
enemy_hitboxID = hbox;

//Knockback
orig_knock = get_kb_formula(percent, kb_adj, 1, hbox.damage, hbox.kb_value, hbox.kb_scale);
kb_dir = get_hitbox_angle(hbox);

old_hsp = lengthdir_x(orig_knock, kb_dir);
old_vsp = lengthdir_y(orig_knock, kb_dir);

if (hbox.type == 2) {
    if (hbox.walls == 0)
    {
        with (hbox)
        {
            destroyed = true
            fx_created = true
        }
    }
}

got_hit(hbox);
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("follower_owner" not in self || follower_owner.player_id != other.player_id) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        && (player_id.y > other.y)
        //&& (!player_equal) //uncomment to prevent the article from being hit by its follower_owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its follower_owner's team.
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.follower_owner = id;
return hbox;
 
#define hit_detection
//Code by Supersonic#9999
//DO NOT modify this function unless you know what you're doing. This does the actual detection, while
//the other functions determine how and what the hit detection interacts with.
//hbox group management
with (oPlayer)
    if state == clamp(state, 5, 6) && window == 1 && window_timer == 1 {
        other.hbox_group[@ player-1][@ attack] = array_create(10,0);
    }
 
//hit lockout stuff
if hit_lockout > 0 {
    hit_lockout--;
    return;
}
//hit lockout stuff
if invincible > 0 {
	invincible--;
    return;
}
//get colliding hitboxes
var hitbox_list = ds_list_create();
 
var num = instance_place_list(floor(x), floor(y), pHitBox, hitbox_list, false);
var final_hbox = noone;
var hit_variable = `hit_article_${id}`;
if num == 0 {
    ds_list_destroy(hitbox_list);
    return;
}
if num == 1 {
    //no priority checks if only one hitbox is found
    var hbox = hitbox_list[|0]
    var group = hbox.hbox_group
    if hit_variable not in hbox 
        if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
            if filters(hbox) {
                final_hbox = hbox;
            } else {
                //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                variable_instance_set(hbox, hit_variable, true);
            }
        } else {
            //fake hit if group has already hit; optimization thing
            variable_instance_set(hbox, hit_variable, true);
        }
} else {
    var highest_priority = 0;
    var highest_priority_owner = -1;
    var highest_priority_hbox = noone;
    for (var i = 0; i < ds_list_size(hitbox_list); i++) {
        var hbox = hitbox_list[|i]
        var group = hbox.hbox_group
        if hit_variable not in hbox 
            //group check
            if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
                if filters(hbox) {
                    if hbox.hit_priority > highest_priority {
                        highest_priority = hbox.hit_priority;
                        highest_priority_owner = hbox.player;
                        highest_priority_hbox = hbox;
                    }
                } else {
                    //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                    variable_instance_set(hbox, hit_variable, true);
                }
            } else {
                //fake hit if group has already hit; optimization thing
                variable_instance_set(hbox, hit_variable, true);
            }
    }
    if highest_priority != 0 {
        final_hbox = highest_priority_hbox;
    }
}
 
if final_hbox != noone && final_hbox.type != invince_type {
    on_hit(final_hbox);
    variable_instance_set(final_hbox, hit_variable, true);
    if final_hbox.hbox_group != -1 hbox_group[@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group] = 1;
}
 
//clear hitbox list
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
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
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
with (player_id){
	var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
	newdust.dust_fx = dfx; //set the fx id
	if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
	newdust.dust_color = dust_color; //set the dust color
	if dir != 0 newdust.spr_dir = dir; //set the spr_dir
}

return newdust;