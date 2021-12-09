
//Make time progress
state_timer++;

//Enhanced

if (state == 0){

if (wisp_ex = true){
	sprite_index = sprite_get("dspecial_exprojectile");
	mask_index = sprite_get("dspecial_exprojectile");
}
else {
	sprite_index = sprite_get("dspecial_projectile");
	mask_index = sprite_get("dspecial_projectile");
}

}

//Idle
if (state == 0){
	image_index += .3;
	hit_detection();
	
//	if (wisp_ex == true && state_timer == 1){
//		wisp_hitbox_idle = create_hitbox(AT_DSPECIAL, 3, x, y);
//	}
}

//Travelling 
if (state == 1){
	image_index += .4;
	ignores_walls = true; 
	if (state_timer == 1){
		
		if (wisp_ex = true){
			sprite_index = sprite_get("dspecial_exprojectile_hit");
			wisp_hitbox = create_hitbox(AT_DSPECIAL, 2, x, y);
			
			if (wisp_hitbox_damage > 11){
			wisp_hitbox.damage = wisp_hitbox_damage;
			}
			if (wisp_hitbox_bkb > 8){
				wisp_hitbox.kb_value = wisp_hitbox_bkb;
			}
			if (wisp_hitbox_kbs > 0.7){
				wisp_hitbox.kb_scale = wisp_hitbox_kbs;
			}
			if (wisp_hitbox_hitpause > 12){
				wisp_hitbox.hitpause = wisp_hitbox_hitpause;
			}
			if (wisp_hitbox_hitpause_scale > 6){
				wisp_hitbox.hitpause_growth = wisp_hitbox_hitpause_scale;
			}
		}
		else {
			sprite_index = sprite_get("dspecial_projectile_hit");
			wisp_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y);
			
			if (wisp_hitbox_damage > 8){
			wisp_hitbox.damage = wisp_hitbox_damage;
			}
			if (wisp_hitbox_bkb > 6){
				wisp_hitbox.kb_value = wisp_hitbox_bkb;
			}
			if (wisp_hitbox_kbs > 0.5){
				wisp_hitbox.kb_scale = wisp_hitbox_kbs;
			}
			if (wisp_hitbox_hitpause > 8){
				wisp_hitbox.hitpause = wisp_hitbox_hitpause;
			}
			if (wisp_hitbox_hitpause_scale > 2){
				wisp_hitbox.hitpause_growth = wisp_hitbox_hitpause_scale;
			}
		}
		wisp_hitbox.kb_angle = wisp_hitbox_angle;
		wisp_hitbox.player = hit_player_num;
//		wisp_hitbox.player_id = hit_player_obj;
	}
	
	if (hsp > 0 && hsp < 3){
		hsp = 3;
	}
	if (hsp < 0 && hsp > -3){
		hsp = -3;
	}
	if (vsp > 0 && vsp < 3){
		hsp = 3;
	}
	if (vsp < 0 && vsp > -3){
		vsp = -3;
	}
	
	wisp_hitbox.x = x+hsp;
	wisp_hitbox.y = y+vsp;
	
	if (state_timer > 1 && wisp_hitbox.destroyed == true){
		if (wisp_ex == true){
			spawn_hit_fx(x, y, player_id.zetter_hit3);
		}
		else {
			spawn_hit_fx(x, y, player_id.zetter_hit2);
		}
		shoulddie = true;
	}
	
	if (state_timer >= 180){
		shoulddie = true;
	}
}

//Destroy when offstage
var stage_y = get_stage_data( SD_Y_POS );
var stage_xl = get_stage_data( SD_X_POS ) - 400;
var stage_xr = get_stage_data( SD_X_POS ) + 1100;
var stage_b = get_stage_data( SD_BOTTOM_BLASTZONE );
if (((stage_y + stage_b < y) || (stage_xl > x) || (stage_xr < x)) && state == 0){
	shoulddie = true;
}



//Dying
if (shoulddie == true){
	if (instance_exists(wisp_hitbox)){
        wisp_hitbox.destroyed = true;
    }
	player_id.killarticles = false;
    instance_destroy();
    exit;
}

//Gets destroyed on Clairen's Plasma Field
if (place_meeting(x, y, asset_get("plasma_field_obj")) && state_timer > 0) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256);
	shoulddie = true;
}

/*
with (asset_get("pHitBox")){
	if (damage > 0 && kb_value > 0 && hit_priority > 0 && other.state_timer > 0){
		if (place_meeting(x,y,other.id) && other.player != player){
			if !(get_player_team(other.player_id.player ) == get_player_team( player_id.player )){
					if (other.whirlwind_second == false){
						other.whirlwind_active_hitbox.destroyed = true;	
					}
					else {
						other.whirlwind2_active_hitbox.destroyed = true;	
					}
				other.state_timer = -24;
		    }
		}
	}
}
*/

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
// hbox refers to the hitbox that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
//Default hit stuff
if (hbox.type == 1){
sound_play(hbox.sound_effect);
spawn_hit_fx(x+hbox.hit_effect_x,y+hbox.hit_effect_y,hbox.hit_effect);
}
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
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
 
//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
hitstun_full = hitstun;
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.5 * kb_adj;

var hbox_angle = get_hitbox_angle(hbox)
//Turns the wisp around
if (hbox_angle < 90){
	spr_dir = 1;
}
else {
	spr_dir = -1;
}

//Knockback direction
if (hbox.type == 1){

//if (instance_exists(wisp_hitbox_idle)){
//	wisp_hitbox_idle.destroyed = true;	
//}
	
//0°
if (((hbox_angle >= 30) && (hbox_angle < 60)) || hbox_angle == 361
|| ((hbox_angle <= 150) && (hbox_angle > 120))){
	if (spr_dir == 1){
		kb_dir = 0;
		image_angle = 0;
	}
	if (spr_dir == -1){
		kb_dir = 180;
	}
	wisp_hitbox_angle = 45;
}

//45°
if (((hbox_angle >= 60) && (hbox_angle < 80))
|| ((hbox_angle <= 120) && (hbox_angle > 100))){
	if (spr_dir == 1){
		kb_dir = 45;
		image_angle = 45;
		wisp_hitbox_angle = 60;
	}
	if (spr_dir == -1){
		kb_dir = 135;
		image_angle = 315;
	}
	wisp_hitbox_angle = 60;
}

//90°
if ((hbox_angle >= 80) && (hbox_angle <= 100)){
	kb_dir = 90;
	wisp_hitbox_angle = 90;
	image_angle = 270;
}

//270°
if ((hbox_angle >= 260) && (hbox_angle <= 280)){
	kb_dir = 270;
	image_angle = 90;
	wisp_hitbox_angle = 270;
}

//315°
if ((hbox_angle > 0) && (hbox_angle < 30)){
	kb_dir = 315;
	image_angle = 315;
	wisp_hitbox_angle = 315;
}

if ((hbox_angle > 280) && (hbox_angle < 359)){
	kb_dir = 315;
	image_angle = 135;
	wisp_hitbox_angle = 225;
}

//225°
if (hbox_angle < 260) && (hbox_angle > 150){
	kb_dir = 225;
	image_angle = 45;
	wisp_hitbox_angle = 315;
}



wisp_hitbox_damage = hbox.damage*0.6;
wisp_hitbox_bkb = hbox.kb_value*0.6;
wisp_hitbox_kbs = hbox.kb_scale*0.6;
wisp_hitbox_hitpause = hbox.hitpause*0.6;
wisp_hitbox_hitpause_scale = hbox.hitpause_growth*3;

player_id.move_cooldown[AT_DSPECIAL] = 60;
state = 1;
state_timer = 0;
hsp = lengthdir_x(orig_knock, kb_dir)*0.9;
vsp = lengthdir_y(orig_knock, kb_dir)*0.9;

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
//You probably don't have to do anything to this function.
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







