//article1 update

//a modified version of feri's nspecial

if stance == 1 {
	red_mode = true;
} else {
	red_mode = false;
}

if (get_match_setting(SET_HITBOX_VIS)){
	hurtbox_vis = true;
} else {
	hurtbox_vis = false;
}

//Detects if on wall
if (wall){
	if (place_meeting(x + 4, y, _block) ||
	place_meeting(x - 4, y, _block)){
	} else {
		wall = false;
		state = 7;
		state_timer = 0;
	}
}

//Rotates sprite if stuck to wall
if (wall){
	if (dir = 1){
		image_angle = 90;
	} else {
		image_angle = 270;
	}
}

sprite_index = sprite_get("kunai_grounded");

if (init == 0){
    init = 1;
    
    kunai_wall_collision = instance_create(x, y, "obj_article2");
    kunai_wall_collision.x = x
    kunai_wall_collision.y = y
    
    with (asset_get("obj_article1")){
		//makes sure it's my own plant/article:
        if (id != other.id && player_id == other.player_id){
			if (state < 2){ //if it's not in exploding states:
				state = 2; //go to disappearing state
				state_timer = 0; //reset timer manually
			} else if (state == 7){
				vsp = 0;
				hsp = 0;
				state = 6;
				state_timer = 0;
			}
        }
    }
}

state_timer++;

// // // // STATE 0 - START

var summon_time = 10; //how long it takes for the plant to be ready
if (state == 0){ //growing
	if (!red_mode){
    	image_index = 0 + state_timer * 3 / summon_time;
	} else {
		image_index = 17 + state_timer * 3 / summon_time;
	}
	
	//Slowly goes down
	if (wall == false){
		vsp = 2
	}
	if (free && wall == false){
		state = 7;
		state_timer = 0;
	}
	
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	//if it can go down a bit:
	/*if (!position_meeting(x, y+1, asset_get("par_block"))&&!position_meeting(x,y+1,asset_get("par_jumpthrough"))){
		y++; //go 1 pixel down
	}*/
	//play sound
    if (state_timer == 1){
    	if (stance == 0) {
			sound_play(sound_get("bkunai1"));
		} else if (stance == 1){
			sound_play(sound_get("rkunai1"));
		}
	}
    if (state_timer == summon_time){
        state = 1; //go to idle
        state_timer = 0; //reset timer manually
    }
}

// // // // STATE 1 - IDLE

var idle_time = 1000; //how long one idle animation loop is
if (state == 1){ //idle
	//Animation
	
	//Wobble Anim (scuffed)
	if (wobble >= 0){
		wobble--
		//Blue
		if (!red_mode){
			if (wobble >= 5){
				wobble_frame = 0;
			} else if (wobble <= 5) {
				wobble_frame = 1;
			}
		} 
		//Red
		else {
			if (wobble >= 5){
				wobble_frame = 17;
			} else if (wobble <= 5) {
				wobble_frame = 18;
			}
		}
	} else {
		wobble_frame = 0;
	}
	
	//Idle
	//Blue
	if (!red_mode){
		//Idle
		if (!wobble){
			image_index = 2	
		}
		//Wobble
		else {
			image_index = wobble_frame
		}
	} else {
		//Idle
		if (!wobble){
			image_index = 19
		}
		//Wobble
		else {
			image_index = wobble_frame
		}
	}
	
	//Slowly goes down if not on wall
	if (wall == false){
		vsp = 2
	}
	//Goes airborne if in air and not on wall
	if (free && wall == false){
		state = 7;
		state_timer = 0;
	}
	
	//Hit Detection
	if (player_id.attack == AT_DATTACK ||
		player_id.attack == AT_FSPECIAL ||
		player_id.attack == AT_FSPECIAL_2 ||
		player_id.attack == AT_USPECIAL){
			hit_detection();
		}
	
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	//this will remove the plant when it detects clairen field
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 6; //go to exploding state
		state_timer = 0; //reset timer manually
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx( x, y, 124 );
	}
	
	
	//idle looping
    if (state_timer == idle_time){
        state_timer = 0; //reset timer manually
		image_index = 2; //reset anim frame manually too
		idle_cycle = idle_cycle+1; //counting for IDLE EXPIRED below
    }
    indicator_anyway = false;
}
	
	var got_hit = false;
	var enemy_hitboxID = noone;

	with pHitBox{ //run the below code for all existing hitboxes
	   if (place_meeting(x, y, other) && player_id != other.id){ //"if touching article + not belonging to same player as article". you can add more conditions here too
	       got_hit = true;
	       enemy_hitboxID = id;
	  }
	}

	if got_hit{
	}

// // IDLE EXPIRED
var idle_max = 1; //amount of idle loop it can do until it ends
if (idle_cycle == idle_max && state == 1){
	state = 2; //go to disappearing state
	state_timer = 0; //reset timer manually
	sound_play(asset_get("sfx_syl_dspecial_plantaway"));
}


// // // // STATE 2 - DISAPPEARING
var poof_time = 15; //how long it takes for the plant to poof
if (state == 2){ //disappearing
	if (use_left == 2){ //if it has 2 uses left
    image_index = 8 + state_timer * 3 / poof_time;
	} else if (use_left == 1){ //if it has 1 use left
		if (!red_mode){
			image_index = 8 + state_timer * 3 / poof_time;
		} else {
			image_index = 25 + state_timer * 3 / poof_time;
		}
	}
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
    if (state_timer == poof_time){
        instance_destroy();
        exit;
    }
    indicator_anyway = false;
}

// // // // STATE 3 - CHARGING
var charge_time = 3; //how long it takes to charge //14
if (state == 3){ //charging
	if (use_left == 2){ //if it has 2 uses left
		image_index = 19 + state_timer * 2 / charge_time;
	} else if (use_left == 1){ //if it has 1 use left
		if (!red_mode){
			image_index = 3 + state_timer * 2 / charge_time;	
		} else {
			image_index = 20 + state_timer * 2 / charge_time;
		}
	}
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	//make sound
	if (state_timer == 1){
		sound_play( asset_get( "sfx_shop_close" ) );
	}
	
	//when it's done charging;
    if (state_timer == charge_time){
		//stop the chargey sound
		sound_stop( asset_get( "sfx_shop_close" ) );
		//then make new sound
		sound_play( asset_get( "sfx_clairen_arc_lose" ) );
		
		//the explosion hitbox is defined in jab
		//at hitbox number 2
		if (stance == 0){
			if (wall){
				if (dir){
					create_hitbox(AT_DSPECIAL, 2, x-20, y-14);
				} else {
					create_hitbox(AT_DSPECIAL, 2, x+20, y-14);
				}
			} else {
				create_hitbox(AT_DSPECIAL, 2, x+2, y-25);
			}
		}
		if (stance == 1){
			if (wall){
				if (dir){
					create_hitbox(AT_DSPECIAL_2, 2, x-20, y-14);
				} else {
					create_hitbox(AT_DSPECIAL_2, 2, x+20, y-14);
				}
			} else {
				create_hitbox(AT_DSPECIAL_2, 2, x+2, y-25);
			}
		}
		state = 4; //go to exploding state
        state_timer = 0; //reset timer manually
    }
    
    indicator_anyway = false;
}

// // // // STATE 4 - EXPLODE
var boom_time = 19; //how long it takes for explosion to end
if (state == 4){ //explosion
	if (use_left == 2){ //if it has 2 uses left
		image_index = 21 + state_timer * 3 / (boom_time+1);
	} else if (use_left == 1){ //if it has 1 use left
		if (!red_mode){
			image_index = 5 + state_timer * 3 / (boom_time+1);
		} else {
			image_index = 22 + state_timer * 3 / (boom_time+1);	
		}
	}
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	//when the explosion ends
    if (state_timer == boom_time){
		if (use_left == 2){ //if it has 2 uses left
			state = 1; //go to idle state
			state_timer = 0; //reset timer manually
			idle_cycle = 0; //reset idle cycle count
			use_left = 1; //reset idle cycle count
		} else if (use_left == 1){ //if it has 1 use left
			instance_destroy();
			exit;
		}
    }
    
    indicator_anyway = false;
}

// // // // STATE 5 - Dissapating
var dis_time = 70; // The maxmimum time it can be dissapating for
if (state == 5){
	if (!red_mode){
		image_index = 11  + state_timer * 3 / dis_time;
		if dis_time >= 10 {
			image_index = 13
		}
	} else {
		image_index = 28
	}

	if (state_timer == dis_time){
		state = 6
		state_timer = 0
	}
	
	indicator_anyway = false;
}

// // // // STATE 6 - Zap
var zap_time = 15; //how long it takes for the plant to poof
if (state == 6){ //disappearing
	if (!red_mode){
		image_index = 14 + state_timer * 3 / zap_time;
	} else {
		image_index = 29 + state_timer * 3 / zap_time;
	}
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	if (state_timer == 1){
		sound_play( asset_get( "sfx_absa_singlezap1" ) );
	}
	
		indicator_anyway = false;
	
    if (state_timer == zap_time){
        instance_destroy();
        exit;
    }
}

// // // // STATE 7 - Airborne
var air_time = 26;
if (state == 7){
	if (!red_mode){
		image_index = 32 + state_timer * 4 / air_time;
	}  else {
		image_index = 36 + state_timer * 4 / air_time;
	}
	
	indicator_anyway = true;
	vsp += k_grav
	
	hit_detection();
	
	//Sticks	
	//If on ground
	if (!free){
		vsp = 0
		hsp = 0
		state_timer = 0;
		state = 0;
	} 
	
	//Detects if on wall
	if (place_meeting(x + 2, y, _block) && wall_override == false && hsp > 0){
		sprite_change_offset( "kunai_grounded", 54, 84 );
		wall = true;
		dir = 1;
		vsp = 0
		hsp = 0
		state_timer = 0;
		state = 0;
	} 
	if (place_meeting(x - 2, y, _block) && wall_override == false && hsp < 0){
		sprite_change_offset( "kunai_grounded", 79, 86 );
		wall = true;
		dir = 0;
		vsp = 0
		hsp = 0
		state_timer = 0;
		state = 0;
	}
	
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		hsp = 0;
		vsp = 0;
		state = 6; //go to exploding state
		state_timer = 0; //reset timer manually
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx( x, y, 124 );
	}
	
	
    if (state_timer == air_time){
        state_timer = 0; //reset timer manually
        if (!red_mode){
			image_index = 32; //reset anim frame manually too
        } else {
        	image_index = 36;
        }
    }
}

if (y >= 1000 + get_stage_data(SD_BOTTOM_BLASTZONE)){
	instance_destroy();
}

// // // // STATE 8 - Projectile
var proj_time = 26;
if (state == 8){
	if (!red_mode){
		image_index = 32 + state_timer * 4 / proj_time;
	}  else {
		image_index = 36 + state_timer * 4 / proj_time;
	}
	
	indicator_anyway = true;
	vsp += k_grav
	
	hit_detection();
	
	//Sticks	
	//If on ground
	if (!free){
		vsp = 0
		hsp = 0
		state_timer = 0;
		state = 0;
	} 
	
	//Detects if on wall
	if (place_meeting(x + 2, y, _block) && wall_override == false && hsp > 0){
		sprite_change_offset( "kunai_grounded", 54, 84 );
		wall = true;
		dir = 1;
		vsp = 0
		hsp = 0
		state_timer = 0;
		state = 0;
	} if (place_meeting(x - 2, y, _block) && wall_override == false && hsp < 0){
		sprite_change_offset( "kunai_grounded", 79, 86 );
		wall = true;
		dir = 0;
		vsp = 0
		hsp = 0
		state_timer = 0;
		state = 0;
	}
	
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		hsp = 0;
		vsp = 0;
		state = 6; //go to exploding state
		state_timer = 0; //reset timer manually
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx( x, y, 124 );
	}
	
	
    if (state_timer == air_time){
        state_timer = 0; //reset timer manually
        if (!red_mode){
			image_index = 32; //reset anim frame manually too
        } else {
        	image_index = 36;
        }
    }
}

//Supersonic's Hit Detection----------------------------------------------------

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
if (player_id.attack == AT_FSPECIAL && player_id.window >= 5 ||
	player_id.attack == AT_FSPECIAL_2 && player_id.window >= 5 ||
	player_id.attack == AT_DTILT){
		
} else {
	
if (state == 1){
	wobble = 10;
	hsp = 0;
	vsp = 0;
	state = 1;
	state_timer = 0;
} else if (state == 7) {
	//state = 8;
	//create_hitbox(AT_NSPECIAL,1,x,y);
}

//Default hit stuff
sound_play(hbox.sound_effect);
sound_play(asset_get("sfx_clairen_tip_med"));

spawn_hit_fx(x+hbox.hit_effect_x,y+hbox.hit_effect_y,hbox.hit_effect);
if (stance == 0){
	spawn_hit_fx(x-4,y-20,fx_bhit_med)
} else {
	spawn_hit_fx(x-4,y-20,fx_rhit_med)
}
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;

player_id.bounce = true;

player_id.dattack_jump = true;

 
//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.
if hbox.type == 1 {
	if (state != 1){
    	var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
	} else {
    	var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 8);
	}
    with hit_player_obj {
        if !hitpause {
            old_vsp = vsp;
            old_hsp = hsp;
        }
        hitpause = true;
        has_hit = true;
        if hitstop < desired_hitstop {
        	shake_camera(3,3);
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
 
//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
hitstun_full = hitstun;
            
//Default Knockback Calculation
 
if (state != 1){
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
 
hsp = lengthdir_x(orig_knock * 1.4, kb_dir);
vsp = lengthdir_y(orig_knock * 1.1, kb_dir);

}
 
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
if num == 0 return;
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
 