if (destroyed) {
	destroy_article_hitboxes();
	instance_destroy(id);
    exit;
}

if (hitstop > 0) {
	hsp = 0;
	vsp = 0;
	exit;
}
was_parried = player_id.was_parried;
state_timer++;

switch (state) {
    case 0:
        image_index = 1;
        
        x = player_id.x;
        
        if (state_timer == 1) {
        	create_article_hitbox(AT_USPECIAL, 1, round(x), round(y));
        }
        
        if (from_ground) {
    		vsp = -8;
    		player_id.y = y;
    		hitstop = player_id.hitstop;
    		if (state_timer >= 16) {
                state = 1;
                state_timer = 0;
                vsp = 0;
				destroy_article_hitboxes();
    		}
        	
        	if (hitstop <= 0) {
		        with (oPlayer) {
		    		if (other.player_id != id && place_meeting(x, y, other) && state != PS_RESPAWN && !invincible) {
		    			y += -8;
		    		}
		    	}
        	}
        }
        else {
            y -= rising_spd;
            if (y <= player_id.y)
            {
                y = player_id.y;
                state = 1;
                state_timer = 0;
                vsp = 0;
				destroy_article_hitboxes();
                with (player_id)
                {
                	if (is_attacking && attack == AT_USPECIAL) {
	                    window = 3;
	                    window_timer = 0;
                	}
                	else {
                		other.state = 2;
                		other.state_timer = 0;
                	}
                }
            }
	        with (oPlayer) {
	    		if (other.player_id != id && state != PS_RESPAWN && !invincible) {
	    			while (place_meeting(x, y, other))
	    				y += -2;
	    		}
	    	}
        }
        
        with (player_id)
        {
        	if (is_attacking && attack == AT_USPECIAL) {
                window = 3;
                window_timer = 0;
        	}
        	else {
        		other.state = 2;
        		other.state_timer = 0;
        		with other destroy_article_hitboxes();
        	}
        }
        
        if (was_parried) {
			destroy_article_hitboxes();
    		state = 2;
    		state_timer = 0;
        	with (player_id)
            {
            	if (is_attacking) {
                    window = 3;
                    window_timer = 0;
            	}
            }
        }
        
    break;
    case 1:
        image_index = 0;
    	var player_on = false;
        with (oPlayer) {
    		if (state != PS_RESPAWN) {
    			if (place_meeting(x, y + 1, other) && !free && y <= other.y) {
    				player_on = true;
    			}
    		}
    	}
    	
    	if (player_on) {
    		if (!play_sound && play_sound_timer == 0) {
    			play_sound = true;
    			sound_play(asset_get("sfx_ice_end"));
    			spawn_ice_particles(40, 0, 10);
    		}
    		else {
    			play_sound_timer++;
    			if (play_sound_timer > 5) {
    				play_sound_timer = 0;
    			}
    		}
    		falling_timer = 20;
    	}
    	else {
    		play_sound = false;
			play_sound_timer = 0;
    	}
        
        if (state_timer > 90)
        {
            if (state_timer % 3 != 0)
            {
                vsp = 1;
            }
            else
            {
                vsp = 0;
            }
	    	
	    	if (falling_timer >= 1) {
                vsp = 1;
	    		falling_timer--;
	    	}
        
        	var prevent_destroy = player_id.is_attacking && player_id.attack == AT_USPECIAL_2 && player_id.window == 1;
        	
        	if (!prevent_destroy) {
		        if ((collision_point(x - 40, y - 2,asset_get("par_block"),false,true) && collision_point(x + 40,y - 2,asset_get("par_block"),false,true))
		        || (collision_point(x - 40, y + 1,asset_get("par_jumpthrough"),false,true) || collision_point(x + 40,y + 1,asset_get("par_jumpthrough"),false,true)))
		        {
		            state = 2;
		            state_timer = 0;
		        }
		        
		        if (y > room_height + 64) {
		            state = 2;
		            state_timer = 0;
		        }
		        
		        if (y < -32) {
		            state = 2;
		            state_timer = 0;
		        }
		        
		        var old_mask = mask_index;
				mask_index = sprite_get("uspecial_w");
				hit_detection();
				mask_index = old_mask;
        	}
        }
        else {
    		vsp = 0;
        }
        
    break;
    case 2:
    
        mask_index = asset_get("empty_sprite");
        image_index = lerp_frames(2, 6, state_timer, 19);
        vsp = 0;
        
        if (state_timer >= 20) {
            destroyed = true;
        }
    break;
    case 3:
        image_index = 0;
        
        x = player_id.x + player_id.hsp;
        y = player_id.y + player_id.vsp;
        mask_index = asset_get("empty_sprite");
        with (player_id)
        {
        	if (!is_attacking || (attack == AT_USPECIAL_2 && window >= 5)) {
                other.state = 2;
                other.state_timer = 0;
        	}
        }
    break;
    case 4: //Put players standing on it into pratfall with 30 pratland
    	with (oPlayer) {
    		if (place_meeting(x, y+2, other) && y <= other.y && !free && state != PS_HITSTUN && state != PS_RESPAWN) {
	            if (!((hurtboxID.sprite_index == asset_get("empty_sprite") || invincible || (state == PS_PARRY && window == 1))))
	            {
	            }
	            else {
	            	clear_button_buffer(PC_SHIELD_PRESSED);
	            }
				set_state(PS_PRATFALL);
                if (player == other.player)
                {
                    parry_lag = 30
                    was_parried = 1
                }
	            free = true;
	            if (!initial_invince)
	            {
	                invincible = 0;
	                hurtboxID.sprite_index = hurtbox_spr;
	                hurtboxID.dodging = 0;
	            }
    		}
    	}
        mask_index = asset_get("empty_sprite");
        state = 2;
        state_timer = 0;
    break;
}

//Hitbox logic
with (pHitBox) {
    if ("follower_owner" in self && follower_owner == other.id && attack == AT_USPECIAL && (hbox_num == 1 || hbox_num == 2)) {
        x = other.x;
        y = other.y + 16;
    }
}

#define lerp_frames(_img_start, _img_frames, _time, _total_time) 
return clamp(_img_start+floor(ease_linear(0,_img_frames-1, _time, _total_time)), 0, image_number - 1);

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.

//Default hit stuff
sound_play(hbox.sound_effect);
sound_play(asset_get("sfx_ice_shatter_big"));

with (hbox.player_id) {
	var fx = spawn_hit_fx(floor(other.x+hbox.hit_effect_x),floor(other.y+hbox.hit_effect_y),floor(hbox.hit_effect == 0 ? 301 : hbox.hit_effect));
	fx.pause = 8;
}
 
hit_player_num = hbox.player;
owned_player = hit_player_num;
 
//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.
var desired_hitstop = get_hitstop_formula(percent, hbox.damage, hbox.hitpause, hbox.hitpause_growth, hbox.extra_hitpause)
var desired_hitstop = clamp(desired_hitstop, 10, 20);

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

state = 4;
state_timer = 0;
image_index = 1;
 
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
 
#define destroy_article_hitboxes()
with (pHitBox) {
    if ("follower_owner" in self && follower_owner == other.id && attack == AT_USPECIAL && (hbox_num == 1 || hbox_num == 2)) {
        instance_destroy(id);
        continue;
    }
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

#define spawn_ice_particles(off_x, off_y, num)
var i = 0;
while (i <= num) {
	var rand_x = -off_x + random_func(i % 100, off_x * 2, true);
	var rand_y = off_y
	
	with (player_id) {
		var _fx = spawn_hit_fx(round(other.x + rand_x), round(other.y + rand_y), fx_ice_part);
		_fx.step_timer = random_func((i + 1) % 100, 3, true) * 4;
		_fx.image_length = 1;
		_fx.grav = 0.75;
		_fx.hsp = -4 + random_func((i + 2) % 100, 8, true);
		_fx.vsp = -2 - random_func((i + 3) % 100, 2, true) ;
	}
	i++;
}