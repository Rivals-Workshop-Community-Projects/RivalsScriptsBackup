//
depth = player_id.depth -1;
if (hitstop == 0)
{
    window_timer++;
    if ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_DSPECIAL) {
        //Starting animation
        if (player_id.window == 1 && player_id.window_timer == 0) {
            window = 1;
            window_timer = 0;
        }
        
        if (player_id.window == 4 && player_id.window_timer == 8) {
            window = 2;
            window_timer = 0;
        }
        
        if (player_id.window == 8 && player_id.window_timer == 0) {
            window = 5;
            window_timer = 0;
        }
    }
    else {
        if (window <= 2)
            shoulddie = true;
    }
        
    if (window == 1) {
        sprite_index = sprite_get("dspecial_portal_appear");   
        if (!shoulddie)
            hit_detection();
        if (window_timer <= 8) {
            image_index = ease_linear(0, 4, window_timer, 8);
        }
        else {
            image_index = 4;
        }
    }
    
    if (window == 2) {
        sprite_index = sprite_get("dspecial_portal_at1");   
        image_index = 0;
        if (window_timer >= 3) {
            window = 3;
            window_timer = 0;
            sound_play(asset_get("sfx_abyss_hazard_burst"));
        }
    }
    
    if (window == 3) {
        sprite_index = sprite_get("dspecial_portal_at1");   
        image_index = 1;
        
        if (window_timer == 0) {
        	with (player_id) {
	            var hbox = create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y))
	            hbox.owner = other.id;
        	}
        }
        if (window_timer >= 3) {
            window = 4;
            window_timer = 0;
        }
    }
    
    if (window == 4) {
        sprite_index = sprite_get("dspecial_portal_at1");   
        image_index = ease_linear(2, 8, window_timer, 24);
        if (window_timer >= 24)
            shoulddie = true;
    }
    
    if (window == 5) {
        sprite_index = sprite_get("dspecial_portal_at2");  
        image_index = ease_linear(0, 2, window_timer, 12);
        if (window_timer >= 12) {
            window = 6;
            window_timer = 0;
        }
    }
    
    if (window == 6) {
        sprite_index = sprite_get("dspecial_portal_at2");   
        image_index = 3
        
        if (window_timer == 0) {
        	with (player_id) {
	            var hbox = create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y))
	            hbox.owner = other.id;
        	}

			//this part of the code checks the "can_hit" array, which chooses who can be hit by what hitbox
			//we are disabling the detection of the hitbox for any player that isn't the grabbed player
			for (var i = 0; i < 5; ++i)
			{
				hbox.can_hit[i] = false;
				hbox.can_hit[dspecial_countered.player] = true;
			}
        }
        if (window_timer >= 3) {
            window = 7;
            window_timer = 0;
        }
    }
    
    if (window == 7) {
        sprite_index = sprite_get("dspecial_portal_at2");   
        image_index = ease_linear(4, 7, window_timer, 24);
        if (window_timer >= 24) {
            window = 8;
            window_timer = 0;
        }
    }
    
    if (window == 8) {
        sprite_index = sprite_get("dspecial_portal_at2");   
        image_index = ease_linear(8, 11, window_timer, 12);
        if (window_timer >= 12)
            shoulddie = true;
    }
    
    if (window <= 2) {
        x = (player_id.x + player_id.hsp) + 48 * player_id.spr_dir;
        y = (player_id.y + player_id.vsp) - 48;
    
    }
    
	if (instance_exists(my_grab_id)) //if you have grabbed someone
	{
	    if (window < 8) {
	        my_grab_id.hurt_img = 1;
			my_grab_id.x = ease_sineInOut(floor(my_grab_id.x), floor(x+156*spr_dir), grab_time, 10);
    		my_grab_id.y = ease_sineInOut(floor(my_grab_id.y), floor(y + 8), grab_time, 10);
	    }
	    
	    if (window == 8 && window_timer == 0) {
        	with (player_id) {
		        var throw_hbox = create_hitbox(AT_DSPECIAL, 3, floor(x), floor(y));
	            throw_hbox.owner =  other.id;
			}
			//this part of the code checks the "can_hit" array, which chooses who can be hit by what hitbox
			//we are disabling the detection of the hitbox for any player that isn't the grabbed player
			for (var i = 0; i < 5; ++i)
			{
				throw_hbox.can_hit[i] = false;
				throw_hbox.can_hit[my_grab_id.player] = true;
			}
	    }
	}
    
}
var this_object = id;
if (shoulddie) {
    with (pHitBox) {
        if (player_id == other.player_id) {
            if (("owner" in self) && owner == this_object) {
                if (attack == AT_DSPECIAL) {
                    instance_destroy(id);
                    continue;
                }
            }
        }
    }
    instance_destroy(id);
    exit;
}

with (pHitBox) {
    if (player_id == other.player_id) {
        if (("owner" in self) && owner == this_object) {
            with (player_id) {
                other.x_pos = ((this_object.x + get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_X) * this_object.spr_dir) - x);
                other.y_pos = ((this_object.y + get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_Y)) - y);
                other.hsp = this_object.hsp;
                other.vsp = this_object.vsp;
            }
        }
    }
}

//grab logic
if (my_grab_id != noone) //if you have grabbed someone
{
	grab_time ++;

    with (my_grab_id)
	{
		hitstop = 2; //freeze grabbed foe
    }
}
else grab_time = 0;
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
//Default hit stuff
sound_play(hbox.sound_effect);
var fx = spawn_hit_fx(floor(x+hbox.hit_effect_x),floor(y+hbox.hit_effect_y),floor(hbox.hit_effect == 0 ? 301 : hbox.hit_effect));
fx.pause = 8;
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
owned_player = hit_player_num;
 
if (instance_exists(hbox) && hbox > 0 && !player_id.was_parried && player_id.hitstop == 0) {
	//dspecial_counter_active = false;
	var counter = hbox.player_id;
	if (instance_exists(counter)) {
	    with (player_id) {
    	    orig_knock = 0;
    	    should_make_shockwave = false;
    		sound_play(asset_get("sfx_zetter_shine_charged"));
    		sound_play(asset_get("sfx_gus_land"));
    		var fx = spawn_dust_fx(round(x), round(y - 64), asset_get("fx_parry_new"), 8);
    		fx.depth = 5;
    		window = 8;
    		window_timer = 0;
    	    hitstop = 12;
    	    hitstop_full = hitstop;
    	    old_vsp = 0;
    	    old_hsp = 0;
    	    hitpause = true;
    	    if (hbox.type != 2) {
    			counter.has_hit_player = false;
    			counter.hitstop = 35;
    			counter.hitstop_full = counter.hitstop;
    			counter.hitpause = true;
    			counter.old_vsp = 0;
    			counter.old_hsp = 0;
    	    }
	    }
		dspecial_countered = counter;
		if (filter_projectile(hbox)) {
		    hbox.destroyed = true;
		}
	}
}
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    var url_equal = player_id.url == other.player_id.url && get_char_info(player_id.player, INFO_STR_NAME) == get_char_info(other.player, INFO_STR_NAME)
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && hitstun_factor >= 0
        && (groundedness == 0 || groundedness == 1+other.free)
        && (!url_equal || (attack != AT_FSPECIAL && attack != AT_DSPECIAL))
        //&& (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 

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
 
if final_hbox != noone {
    on_hit(final_hbox);
    variable_instance_set(final_hbox, hit_variable, true);
    if final_hbox.hbox_group != -1 hbox_group[@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group] = 1;
}
 
//clear hitbox list
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);

#define filter_projectile(_hbox)
var x1 = bbox_left;
var y1 = bbox_top;
var x2 = bbox_right;
var y2 = bbox_bottom;
if (instance_exists(_hbox)) {
	with (_hbox) {
		if ( (type == 2) && (player != other.player || can_hit_self)
		  && (other.can_be_hit[player] == 0) && (can_hit[other.player])
		  && (groundedness == 0 || (other.free ? 2 : 1) == groundedness)
		  && (get_player_team(other.player) != get_player_team(player) || team_attack)
		  && hit_priority != 0 && hit_priority <= 10
		  && !plasma_safe) {
		      return true;
		  }
	}
}
return false

#define collision_ellipse_list(x1,y1,x2,y2,obj,prec,notme)
var dsid,i;
dsid = ds_list_create();
with (obj) {
    if (!notme || id != other.id) {
        i = collision_ellipse(floor(x1),floor(y1),floor(x2),floor(y2),id,prec,false);
        if (i != noone) ds_list_add(dsid,i);
    }
}
if (ds_list_size(dsid) == 0) {
    ds_list_destroy(dsid);
    dsid = noone;
}
return dsid;