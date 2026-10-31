state_timer++;
if(free){
	if(carpet_lock == noone){
		player_id.on_autobomb = false;
	}
	if (state_timer % 2 == 0){
	cvsp += 0.5;	
	}
} else {
	if(place_meeting(x, y+2, asset_get("obj_par_jumpthrough"))){
		cvsp = 0;
	} else {
		cvsp = -0.25;
	}
	
}
vsp = round(cvsp)
hsp = round(chsp)
y = ceil(y);
if(sprite_index == idle_sprite
	or sprite_index == idleb_sprite){
	switch(image_index){
		case 0:
			platform_modifier = 26*2
		break;
		case 1:
			platform_modifier = 28*2
		break;
		case 2:
			platform_modifier = 30*2
		break;
		case 3:
			platform_modifier = 34*2
		break;
		case 4:
			platform_modifier = 37*2
		break;
	}
} else {
	platform_modifier = 12;
}
switch(state){
	case 0://Spawn in
		if(state_timer == 1){
			sound_play(sound_get("blasterbuild_smw"))
			var platform = instance_create(player_id.x, player_id.y,"obj_article_platform")
			platform.platform_type = 1;
			platform.image_xscale = sprite_direction_modifier*1.2;
			platform.autobomb = id;
			platform.image_alpha = 0;
			platform.player_id = player_id;
			my_platform = platform;
		}
		if(image_yscale < 2){
			image_yscale += 0.2;
			image_xscale += 0.2 * sprite_direction_modifier;
		} else {
			state = 1;
			image_yscale = 2;
			image_xscale = 2 * sprite_direction_modifier;
			state_timer = 0;
		}
		if(position_meeting(x, y + 8 + vsp, player_id.carpet) && player_id.carpet.platform_type == 0){
			y = player_id.carpet.y + player_id.carpet.vsp;
			x = player_id.carpet.x + player_id.carpet.hsp
			carpet_lock = player_id.carpet
		}
	break;
	case 1://Idle, movement, detect hit
		if(hsp != 0 ){
			if(state_timer % 7 == 0){
				if(sprite_index == idle_sprite){
					sprite_index = idleb_sprite
					autobomb_overlay = sprite_get("autobomb_idleb_overlay")
				} else {
					sprite_index = idle_sprite
					autobomb_overlay = sprite_get("autobomb_idle_overlay")
				}
			}
		}
		if(carpet_lock != noone){
			var _next_x = round(lerp(x, carpet_lock.x + carpet_lock.hsp, 1));
			if(state_timer < 10){
				var _next_y = round(lerp(y, carpet_lock.vsp, 0.2));
			} else {
				var _next_y = round(lerp(y, carpet_lock.vsp, 1));
			}
			chsp = (carpet_lock.hsp);
			cvsp = (carpet_lock.vsp);
			x = carpet_lock.x;
			y = carpet_lock.y;
			player_id.on_autobomb = true;
		} else {
		chsp *= 0.99;
		if(abs(chsp) < 5){
			//Reading from source Shy Guy
			with(oPlayer){
				if(id == other.player_id){
					if((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) and attack == AT_NSPECIAL){
						if(place_meeting(x, y + 18 + vsp, other) and y < other.y + 12){
							if(left_down){
								other.chsp += -0.3;
							}
							if(right_down){
								other.chsp += 0.3;
							}
							if(other.free == false and other.carpet_lock == noone){
								on_autobomb = true;
							}
						}
					}
				}
			}
		}
		}
		hit_detection();
		switch(state_timer){
			case 85:
				image_index = 0;
				major_shot = 2
				sound_play(sound_get("autobomb_charge"), false, noone, 0.5, 0.5);
			break;
			case 90:
				image_index = 2;
			break;
			case 285:
				image_index = 1;
				major_shot = 3;
				sound_play(sound_get("autobomb_charge"), false, noone, 0.5, 0.525);
			break;
			case 290:
				image_index = 3;
			break;
			case 485:
				image_index = 2;
				major_shot = 4
				sound_play(sound_get("autobomb_charge"), false, noone, 0.5, 0.55);
			break;
			case 490:
				image_index = 4;
			break;
		}
		if(state_timer >= auto_shoot_time){
			state = 2;
			state_timer = 0;
			chsp += -10*sprite_direction_modifier;
			major_shot = 5;
		}
		
		if (state_timer % (10 - major_shot) == 1){
			sound_play(sound_get("autobomb_charge"), false, noone, 0.2, 1);
		}
	break;
	case 2://Shoot
		if(state_timer == 1){
			if(major_shot == 5){
				spawned_kick_hbox = create_article_hitbox(AT_NSPECIAL, 6, x, y-48);
				spawned_kick_hbox.hsp = 12*sprite_direction_modifier//lengthdir_x(10, kb_dir);
				//spawned_kick_hbox.hitbox_timer = 60-(major_shot*15)
				//spawned_kick_hbox.vsp = -8.5//lengthdir_y(10, kb_dir);
				spawned_kick_hbox.spr_dir = sprite_direction_modifier;
				spawned_kick_hbox.image_xscale = sprite_direction_modifier;
				spawned_kick_hbox.draw_xscale = sprite_direction_modifier;
				sound_play(sound_get("cannon_shoot"))
				sound_play(sound_get("autobomb_charge"), false, noone, 0.5, 0.75);
			} else {
				spawned_kick_hbox = create_article_hitbox(AT_NSPECIAL, 2, x, y-48);
				spawned_kick_hbox.hsp = 8*sprite_direction_modifier//lengthdir_x(10, kb_dir);
				spawned_kick_hbox.hitbox_timer = 60-(major_shot*20)
				spawned_kick_hbox.image_xscale = sprite_direction_modifier;
				spawned_kick_hbox.draw_xscale = sprite_direction_modifier;
				//spawned_kick_hbox.vsp = -8.5//lengthdir_y(10, kb_dir);
				spawned_kick_hbox.spr_dir = sprite_direction_modifier;
				sound_play(sound_get("small_shoot"))
			}
		}
		if(image_index > 0.99){
			image_index -= 0.25
		} else {
			sound_play(sound_get("blasterdeath_smw"))
			state = 3;
			state_timer = 0;
			chsp += -5*sprite_direction_modifier;
			cvsp = -8;
			y = y-17*2
			mask_index = noone;
			sprite_index = destroy_sprite
			var kunkbox = create_hitbox( AT_NSPECIAL, 3, x + round(hsp), y + vsp);
	    	kunkbox.can_hit_self = true;
	    	kunkbox.spr_dir = sprite_direction_modifier;
		}
		chsp *= 0.99;
	break;
	case 3://Begin despawning
		chsp *= 0.95;
		if(instance_exists(my_platform)){
			my_platform.autobomb = noone;
		}
		can_be_grounded = false;
		ignores_walls = true;
		mask_index = noone;
		sprite_index = destroy_sprite
		image_angle += 5*sprite_direction_modifier
	break;
	case 4://Die
		if(instance_exists(my_platform)){
			my_platform.autobomb = noone;
		}
		player_id.autobomb = noone;
		instance_destroy();
		exit;
	break;
}

if(y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) - 50){
	if(state < 3){
		state = 3;
		state_timer = 0;
		cvsp = -15;
		major_shot = -1
		sound_play(sound_get("blasterdeath_smw"))
	} else {
		if(state_timer > 20 and state == 3){
			state = 4;
			state_timer = 0;
		}
	}
}

platform_height = y - platform_modifier;

//Put this code at the bottom of the file.
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
state = 2;
state_timer = 0;
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
//hitstop = floor(desired_hitstop); 
 
 
//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
 
//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
hitstun_full = hitstun;
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
 
chsp = -10*sprite_direction_modifier;
//vsp = lengthdir_y(orig_knock, kb_dir);
 
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