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


//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Freshly spawned

if (state == 0){
	if (timer == 0){
		state = 9;
	}
	
	//lower recover time if article was spawned through a hit player
	if (state_timer == 0){
		if (hit_player_init){
			recover_time = 4;
		}
		else{
			sound_play(sound_get("sweat2"));
			recover_time = 8;
		}
	}
	
	
	//animate
	if (state_timer == 0){
		sprite_index = sprite_get("daruma_initial");
		image_index = 1;
	}
	if (state_timer == recover_time){
		//switch to idle state, unless spawned through hit_player
		if (!hit_player_init){
			state = 1;
			state_timer = 0;
		}
		else{
			state = 3;
			state_timer = 0;
		}
	}
}

timer--;

if (state == 0 || state == 1){
	if (timer < 60){
		var flash_time = 20;
		visible = !(flash_time && timer % flash_time < round(flash_time/2));
	}
}

//State 1: Idle

if (state == 1){
	sprite_index = sprite_get("daruma_idle");
	
	if (timer == 0){
		state = 9;
	}
	
	if (state_timer == 0){
		image_index = 0;
	}
	
	//animate
	var idle_anim_rate = 10;
	
	if (state_timer mod idle_anim_rate == 0){
		image_index++;
	}
	
	//spawn vfx
	var dist;
	var rot;
	var vfx_rate = 10;
	if (state_timer mod vfx_rate == 0){
		dist = random_func_2( id mod 20, range - 1, true ) + 1;
		rot = random_func_2( id mod 20, 359, true ) + 1;
		xx = x + lengthdir_x(dist, rot) - 15;
		yy = y + lengthdir_y(dist, rot) - 20;
		spawn_hit_fx(xx, yy, player_id.vfx_trail[random_func(id mod 20, 4, true)]);
	}
}

//yeah
if (state < 2){
	if (!player_id.daruma_targets_anyone){
		hit_detection();
	}
}

//State 2: Destroy

if (state == 2){
	instance_destroy();
	exit;
}

//cooldown stuff
if (state != 1 && state != 2 && state != 9){
	if (state != 3){
		with (player_id){
			move_cooldown[AT_FSPECIAL] = fspecial_cooldown_main;
		}
	}
	else{ //lower cooldown for quick version
		with (player_id){
			move_cooldown[AT_FSPECIAL] = fspecial_cooldown_quick;
		}
	}
}

//destroy if target dies
if (state == 3 || state == 4){
	if (target_id != -4){
		if (target_id.state == PS_RESPAWN || target_id.state == PS_DEAD){
			state = 9;
			
			with (player_id){
				move_cooldown[AT_FSPECIAL] = 0;
			}
		}
		
		//galaxy stuff
		if (target_id.activated_kill_effect){
			state = 9;	
			
			with (player_id){
				move_cooldown[AT_FSPECIAL] = 0;
			}
		}
	}
	
	//also vfx
	//spawn vfx
	var dist;
	var rot;
	var vfx_rate = 4;
	if (state_timer mod vfx_rate == 0){
		dist = random_func_2( id mod 20, round(range/2) - 1, true ) + 1;
		rot = random_func_2( id mod 20, 359, true ) + 1;
		xx = x + lengthdir_x(dist, rot) - 10;
		yy = y + lengthdir_y(dist, rot) - 20;
		spawn_hit_fx(xx, yy, player_id.vfx_trail[random_func(id mod 20, 4, true)]);
	}
}

//destroy if owner dies or owner is parried mid-daruma-attack-state
if (player_id.state == PS_RESPAWN || player_id.state == PS_DEAD){
	state = 9;
}

if (player_id.was_parried){
	if (state != 9){
		state = 9;
	}
}



//State 3: Quick Target

if (state == 3){
	hit_detection();
	
	visible = true;
	
	//initializing stuff
	target_time = 60;
	sprite_index = sprite_get("empty");
	
	//rivals coding is dumb (this is also for initial sfx lol)
	if (state_timer == 0){
		if (hit_player_init){
			target_id = player_id.hit_player_obj;
		}
		
		sound_play(sound_get("angry_fume"));
	}
	
	//play warning sfx
	var warn_rate = 15;
	var warn_rate_fast = 10;
	var num_fast_warns = 3;
	var warn_fast_start = target_time - warn_rate_fast*num_fast_warns;
	
	if (state_timer < target_time){
		if (state_timer >= warn_fast_start){
			//fast warn
			if (state_timer mod warn_rate_fast == 0){
				sound_play(sound_get("kotsuzumi"), false, noone, 1, 1.2);
				warn_timer = warn_time_base;
			}
		}
		else{
			//normal warn
			if (state_timer mod warn_rate == 0){
				sound_play(sound_get("kotsuzumi"));
				warn_timer = warn_time_base;
			}
		}
	}
	
	//spawn hitbox
	if (state_timer == target_time){
		
		//projectile stuff
		if (target_id != -4){
			var proj = create_hitbox(AT_FSPECIAL, 2, floor(x), floor(y));
			var target_angle = point_direction(x, y, target_id.x, target_id.y - round(target_id.char_height)/1.5);
			
			with (proj){
				vsp = lengthdir_y(other.player_id.daruma_quick_speed, target_angle);
				hsp = lengthdir_x(other.player_id.daruma_quick_speed, target_angle);
				
								
				if (hsp < 0){
					spr_dir = -1;
				}
				else{
					spr_dir = 1;
				}
				
				/*
				if (other.targetter_id != -4){
					player = other.targetter_id.player;
					hbox_group = other.targetter_id;
				}
				*/
				//if no id was set, just keep it as nano's projectile
				
				//fix the projectile facing the wrong way if nano is facing left after it fires
				with (other){
					if (target_id.x - proj.x > 0){ //target is to right
						if (player_id.spr_dir == -1){ //nano is facing left
							proj.sprite_index = sprite_get("daruma_proj_flipped");
						}
					}
					else if (target_id.x - proj.x < 0){ //target is to left
						if (player_id.spr_dir == -1){ //nano is facing left
							proj.sprite_index = sprite_get("daruma_proj_flipped");
						}
					}
				}
			}
			
			sound_play(sound_get("firework"));
		}
		
		//destroy article
		state = 2;
		
	}
}



//State 4: Slow Target

if (state == 4){
	hit_detection();
	
	visible = true;
	
	//initializing stuff
	target_time = 180;
	sprite_index = sprite_get("empty");
	
	//rivals coding is dumb (this is also for initial sfx lol)
	if (state_timer == 0){
		if (hit_player_init){
			target_id = player_id.hit_player_obj;
		}
		
		sound_play(sound_get("angry_fume"));
	}
	
	//play warning sfx
	var warn_rate = 30;
	var warn_rate_fast = 10;
	var num_fast_warns = 3;
	var warn_fast_start = target_time - warn_rate_fast*num_fast_warns;
	
	if (state_timer < target_time){
		if (state_timer >= warn_fast_start){
			//fast warn
			if (state_timer mod warn_rate_fast == 0){
				sound_play(sound_get("kotsuzumi"), false, noone, 1, 1);
				warn_timer = warn_time_base;
			}
		}
		else{
			//normal warn
			if (state_timer mod warn_rate == 0){
				sound_play(sound_get("kotsuzumi"), false, noone, 1, 0.9);
				
				warn_timer = warn_time_base;
			}
		}
	}
	
	//spawn hitbox
	if (state_timer == target_time){
		
		//projectile stuff
		if (target_id != -4){
			var proj = create_hitbox(AT_FSPECIAL, 3, floor(x), floor(y));
			var target_angle = point_direction(x, y, target_id.x, target_id.y - round(target_id.char_height)/1.5);
			
			with (proj){
				vsp = lengthdir_y(other.player_id.daruma_slow_speed, target_angle);
				hsp = lengthdir_x(other.player_id.daruma_slow_speed, target_angle);
				
				if (hsp < 0){
					spr_dir = -1;
				}
				else{
					spr_dir = 1;
				}
				
				/*
				if (other.targetter_id != -4){
					player = other.targetter_id.player;
					hbox_group = other.targetter_id;
				}
				*/
				//if no id was set, just keep it as nano's projectile
				
				//fix the projectile facing the wrong way if nano is facing left after it fires
				with (other){
					if (target_id.x - proj.x > 0){ //target is to right
						if (player_id.spr_dir == -1){ //nano is facing left
							proj.sprite_index = sprite_get("daruma_proj_flipped");
						}
					}
					else if (target_id.x - proj.x < 0){ //target is to left
						if (player_id.spr_dir == -1){ //nano is facing left
							proj.sprite_index = sprite_get("daruma_proj_flipped");
						}
					}
				}
			}
			
			sound_play(sound_get("firework"));
		}
		
		//destroy article
		state = 2;
		
	}
	
}

if (warn_timer > 0){
	warn_timer--;
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



//State 9: Destroy with VFX/SFX

if (state == 9){
	sound_play(sound_get("pop"), false, noone, 1, 1);
	spawn_hit_fx(x, y, player_id.slapstick_dust_small);
	
	instance_destroy();
	exit;
}



//disappear if too far offstage
if (y > room_height + 200){
	state = 9;
	state_timer = 0;
}
	
if (x < -50 || x > room_width + 50){
	state = 9;
	state_timer = 0;
}



//Make time progress
state_timer++;



/*
    Supersonic's Complex Hit Detection script v2
    (now featuring instance_place_list)
    
    While not required, I would like it if you credit me for
    using this hit detection code.
    
    This code takes into account the following:
        - Hitbox Priority
        - Hitbox Groups
        - Hit Lockout
        - (optional) Teams
        - (optional) Self Hitting
    
    and should be much easier to customize than my old code, as the on hit stuff
    has been put into a single function for easy editing.
    
    The original code that was passed around had some issues with it and it
    wasn't ever actually meant to be released publicly in the state it was in,
    but that's okay I suppose.
 
    To use it, simply copy and paste the code below to their respective files and, whenever you would like to
    detect hitboxes, call hit_detection(); in article[index]_update.gml.
    To customize what happens when the article is hit, edit the on_hit function in article[index]_update.gml.
    To customize what hitboxes can hit the article, modify the filters function in article[index]_update.gml.
    I've added a couple useful commented out filters for disabling the player hitting the article and teammates
    hitting the article, to serve as examples.
*/
 
///THE ACTUAL CODE IS BELOW
 
///     article[index]_update.gml
 
//Put this code at the bottom of the file.
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
//make sure player is the one being targeted

if ((player_id != hbox.player_id && (hbox.type == 1 || (hbox.type == 2 && target_id == hbox.player_id))) || (target_id != player_id && hbox.player_id == player_id && hbox.attack == AT_DSPECIAL && hbox.hbox_num == 1)){
	//Default Hitpause Calculation
	//You probably want this stuff because it makes the hit feel good.
	if (hbox.player_id != player_id || state < 2){
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
		//hitstop = floor(desired_hitstop); 
		 
		//Hit Lockout
		if article_should_lockout hit_lockout = hbox.no_other_hit;
		 
		/*
		//Default Hitstun Calculation
		hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
		hitstun_full = hitstun;
		            
		//Default Knockback Calculation
		 
		// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
		if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
		else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
		kb_dir = get_hitbox_angle(hbox);
		 
		hsp = lengthdir_x(orig_knock, kb_dir);
		vsp = lengthdir_y(orig_knock, kb_dir);
		*/
		
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
	}
	
	//daruma-specific stuff
	
	if (hbox.attack == AT_DSPECIAL && hbox.player_id == player_id){ // boing
		if (state == 0 || state == 1){
			with (player_id){
				move_cooldown[AT_FSPECIAL] = 70;
				move_cooldown[AT_DSPECIAL] = 40;
				
				destroy_hitboxes();
				window = 5;
				window_timer = 0;
				
				old_vsp = -10;
			}
			
			state = 9;
			state_timer = 0;
			
			sound_play(sound_get("bonk"));
		}
	}
	else{ //no boing
		if (!player_id.daruma_targets_anyone){
			with (player_id){
				move_cooldown[AT_FSPECIAL] = daruma_parry_hit_cooldown;
			}
			
			state = 9;
			state_timer = 0;
			
			sound_play(sound_get("bonk"));
		}
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