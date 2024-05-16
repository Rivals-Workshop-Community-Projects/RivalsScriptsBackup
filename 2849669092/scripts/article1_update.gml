//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/


timer++;



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Freshly spawned

if (state == 0){
    new_sprite = sprite_get("dspec_idle");
    idle_anim_rate = 12;
    with (player_id){
        if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
            if (attack == AT_DSPECIAL){
                if (window == 2){
                    if (window_timer == 0){
                        other.state = 1;
                        other.state_timer = 0;
                        other.spr_dir = spr_dir;
                    }
                }
            }
        }
    }
    
    //disappear after a set time
    if (timer == 5 * 60){
    	spawn_hit_fx( floor(x), floor(y) - 20, 144 );
    	sound_play(asset_get("sfx_ell_steam_hit"));
    	
    	state = 2;
    	state_timer = 0;
    }
    
    if (timer > 5 * 60 - 60){
		var flash_time = 5;
		visible = !(flash_time && timer % 10 < 5);
	}
    
    //attack if touched while player is in hitstun
    with (oPlayer){
		with (other.id){
		    if (other.state == PS_HITSTUN && other.state != PS_TUMBLE && !other.hitpause && !other.hitstop){
		        if (place_meeting(x, y, other)){
        	        if (player == other.player){
        	            wriggle_was_hit = true;
        	            hitter = other.hitter;
        	        }
        	        spawn_hit_fx( floor(x), floor(y)- 10, 303 );
        	        state = 4;
    				state_timer = 0;
		        }
	       }
	    }
	}
}



//State 1: Idle

if (state == 1){
	hit_detection();
    
    new_sprite = sprite_get("dspec_startup");
    idle_anim_rate = 8;
    //Stop the movement from state 0
    hsp = -3*spr_dir;
    
    if (state_timer == 14){
        state = 3;
        state_timer = 0;
    }
    
    if (state_timer == 0){
        if (state_timer == 0){
	        sound_play(asset_get("sfx_absa_dashup"));
	    }
    }
    
    visible = true;
    
}



//State 2: Dying

if (state == 2){
    instance_destroy();
    exit;
}



//State 3: Active

if (state == 3){
	hit_detection();
	
    new_sprite = sprite_get("dspec_dash");
    idle_anim_rate = 4;
	hsp = 10*spr_dir;
	
	if (state_timer == 0){
	    sound_stop(asset_get("sfx_absa_dashup"));
	    sound_play(asset_get("sfx_absa_dashdown"));
	}
	
	//attack player on contact
	with (oPlayer){
		with (other.id){
	        var teammate = get_player_team(get_instance_player(other));
	        if (teammate != get_player_team (player) && place_meeting(x, y, other)){
				spawn_hit_fx( floor(x), floor(y)- 10, 303 );
				state = 4;
				state_timer = 0;
	        }
	    }
	}
	
	visible = true;
	
}



//State 4: Attack

if (state == 4){
	new_sprite = sprite_get("dspec_attack");
    idle_anim_rate = 4;
    hsp = 0;
    if (state_timer mod attack_interval == 0){
        if (times_attacked != attack_times){
            //spawn multihit hitbox
            sound_stop(asset_get("sfx_spin"));
            sound_play(asset_get("sfx_spin"));
            var cur_hitbox = create_hitbox(AT_DSPECIAL, 1, x - 1, y - 26);
            if (wriggle_was_hit){
                cur_hitbox.player = hitter;
            }
            else{
                with (player_id){
                    move_cooldown[AT_DSPECIAL] = dspec_cooldown;
                } 
            }
            times_attacked++;
        }
        else{
            //spawn finisher hitbox
            spawn_hit_fx( floor(x), floor(y)- 10, 197 );
            var cur_hitbox = create_hitbox(AT_DSPECIAL, 2, x - 1, y - 26);
            if (wriggle_was_hit){
                cur_hitbox.player = hitter;
            }
            else{
                with (player_id){
                    move_cooldown[AT_DSPECIAL] = dspec_cooldown;
                } 
            }
            state = 2;
            
        }
        
    }
    
    visible = true;
    
}

if ((x < 0 || x > room_width) || (state > 2 && hit_wall)){
	spawn_hit_fx( floor(x), floor(y)- 10, 0 );
    state = 2;
}

if (y <= 180) {
  y += 4;
}



//State 5

if (state == 5){
	//Put something here if you want
}



//State 6

if (state == 6){
	//Put something here if you want
}



//State 7

if (state == 7){
	//Put something here if you want
}



//State 8

if (state == 8){
	//Put something here if you want
}



//State 9: Attack

if (state == 9){
    
    //11 frames in, create DSPECIAL hitbox 1
    if (state_timer == 11){
    	create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise"));
    }
    
    //11 frames in, create DSPECIAL hitbox 2
    if (state_timer == 15){
    	create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise2"));
    }
    
    //Die after 28 frames (article is used up)
    if (state_timer == 28){
	    state = 2;
	    state_timer = 0;
    }
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling



//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



//Make time progress
state_timer++;



#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.

hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
if (hbox.player_id != player_id){
	//Default Hitpause Calculation
	//You probably want this stuff because it makes the hit feel good.
	if hbox.type == 1 {
	    var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
	    with hit_player_obj {
	        if !hitpause {
	            old_vsp = vsp;
	            old_hsp = hsp;
	        }
	        hitpause = true;
	        has_hit = true;
	        if hitstop < desired_hitstop {
	            hitstop = desired_hitstop;
	            hitstop_full = desired_hitstop;
	        }
	    }
	}
	// This puts the ARTICLE in hitpause.
	// If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause
	// or comment out the line below.
	hitstop = floor(desired_hitstop); 
	 
	 
	//Hit Lockout
	if article_should_lockout hit_lockout = hbox.no_other_hit;
	
	 
	//Default hit stuff
	sound_play(hbox.sound_effect);
	//ty nart :p
	var fx_x = lerp(hbox.x, x, 0.5) + hbox.hit_effect_x*hbox.spr_dir;
	var fx_y = lerp(hbox.y, y, 0.5) + hbox.hit_effect_y;
	with hit_player_obj { // use a with so that it's shaded correctly
	    var temp_fx = spawn_hit_fx(fx_x, fx_y, hbox.hit_effect);
	    temp_fx.hit_angle = other.kb_dir;
	    temp_fx.kb_speed = other.orig_knock;
	}
	
	
	sound_play(sound_get("blast"));
	
	with (player_id){
		move_cooldown[AT_DSPECIAL] = dspec_destroyed_cooldown;
	}
	
	state = 2;
}
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        //&& (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
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