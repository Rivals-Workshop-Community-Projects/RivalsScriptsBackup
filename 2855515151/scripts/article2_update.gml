lock_state = false;

var linked_hitbox_spoint = [floor(x+hsp), floor(y - 10 + vsp)];
var last_frame = sprite_get_number(sprite_index);
if(state < 3){
    image_index = state_stop_at_last[state] && (floor(image_index) % last_frame) >= last_frame-1 ? last_frame-1 : image_index + state_anim_speeds[state];
}
//var below_hit = place_meeting(x+hsp,y+vsp,asset_get("par_block")) or place_meeting(x+hsp,y+vsp,asset_get("par_jumpthrough"))

vsp = free ? vsp+grav : 0;

//print(state);

//When grab is ready
if (health >= player_id.hat_grab_start_health) {
	if (!hat_ready) {
		hat_ready = true;
		sound_play(asset_get("mfx_levelup"));
		spawn_hit_fx(x , y - 20, HFX_ORI_BLUE_SMALL);
		spawn_hit_fx(x , y - 60, HFX_ORI_BLUE_SMALL);
		spawn_hit_fx(x , y - 100, HFX_ORI_BLUE_SMALL);
	}
} else {
	hat_ready = false;
}

switch (state)
{
    case 0:
        hsp *= 0.99;
        
        if (instance_exists(linked_hitbox))
        {
            linked_hitbox.x = linked_hitbox_spoint[0]
            linked_hitbox.y = linked_hitbox_spoint[1]
        }      
        
        if (state_timer % 6 == 0 && hitstop == 0)
        {
            linked_hitbox = create_hitbox(AT_FSPECIAL, 1, linked_hitbox_spoint[0], linked_hitbox_spoint[1]);
            if (sign(hsp) == -1) linked_hitbox.kb_angle = 180-linked_hitbox.kb_angle;
        }
        
        if (!free)
        {
            if instance_exists(linked_hitbox)
            {
                instance_destroy(linked_hitbox);
                linked_hitbox = noone;    
            }

            for (var i = 0; i < 20; ++i) if (!place_meeting(x,y-(i+1),asset_get("par_jumpthrough"))) // land on plats properly
            {
                y -= i;
                break;
            }
            
            vsp = 0;
            image_index = 0;
            setState(1);
            sprite_index = sprite_get("fspecial_projectile_end");
            
        }
        if (ForceDespawn()) exit;
        break;
    /*case 3: // spawn item animation
        sprite_index = sprite_get("fspecial_spawn");
        if (image_index == last_frame)
        {
            setState(1);
            image_index = 3;
            sprite_index = sprite_get("fspecial_projectile_end");
        }*/
    case 1: // idle
        hsp = lerp(hsp, 0, 0.2);
		hit_detection();
        if (ForceDespawn()) exit;
        break;
    //hat return state
    case 2:
		spit_out()
        var die_time = 12;
        with(player_id){other.die_time = get_window_value(AT_FSPECIAL_2,1,AG_WINDOW_LENGTH)-2}
        hsp = lerp(hsp, 0, 0.35);
        vsp = lerp(vsp, 0, 0.35);
        sprite_index = sprite_get("fspecial_return");
        image_index = ease_linear(0,4,state_timer,die_time);
        if state_timer >= die_time {
            player_id.hat_object = noone;
            instance_destroy()
            exit;
        }
        break;
    case 3:
        mask_index = sprite_get("roger_mask");
        sprite_index = sprite_get("hat_hit");
        image_index = state_timer/4;
        if(state_timer == 2){
            sound_play(asset_get("sfx_swipe_heavy2"));
        }
        var hit_time = 24;
        if(state_timer == 8){
            create_hitbox(AT_FSPECIAL, 2, x+spr_dir*4, y-80);
        }
        hsp = lerp(hsp, 0, 0.2);
        if(state_timer > hit_time){
            image_index = 0;
            setState(4);
            sprite_index = sprite_get("hat_idle");
        }
        break;
    case 4:
        hit_detection();
        mask_index = sprite_get("roger_mask");
        if(hitstun > 0){
            sprite_index = sprite_get("hat_hurt");
            image_index = 6 - 6*hitstun/hitstun_full
        } else {
            sprite_index = sprite_get("hat_idle");
            image_index = state_timer/6;
        }
        
        hsp = lerp(hsp, 0, 0.2);
        if (ForceDespawn()) exit;
        break;
    case 5:
        sprite_index = sprite_get("hat_return");
        image_index = state_timer/3;
        if(state_timer == 26){
            state = 6;
            state_timer = 0;
        }
    
    break;
    
    case 6:
		spit_out()
        sprite_index = sprite_get("surrender");
        image_index = state_timer/3;
        if(state_timer == 54){
            setState(2);
        }
    break;
    case 7: //Grab Start Up
    	grab_rumble_sfx_played = 5;
		grab_rumble_sfx_frame = 20;
		hsp = 0;
		hitstop = 0;
		hatted_id = -4
        sprite_index = sprite_get("dspecial_grab");
		image_index = state_timer/grab_speed;
		//Bite sfx math
		//Happens 1 index before but only on the first frame of the index
		if(image_index == (grab_start_up - 12) && (state_timer % grab_speed == 0)) {
			sound_play(sound_get("malachi_growl"))
		}
		if (image_index == (grab_start_up - 1) && (state_timer % grab_speed == 0)) {
			sound_play(sound_get("malachi_bite"))
		}
		if (image_index == (grab_start_up)) {
			create_hitbox(AT_FSPECIAL, 3, x+spr_dir*4, y-80);
			state = 8;
		}
    break;
	case 8: //Grab Attack
		hsp = 0;
		image_index = state_timer/grab_speed;
		if (hatted_id != -4) {
			hatted_id.x = x
			hatted_id.y = y - 24;
			hatted_id.hsp = 0
			hatted_id.vsp = 0;
		}
	if (image_index == grab_whiff) {
		if (hatted_id == -4) {
			image_index = grab_end;
			state_timer = image_index  * grab_speed;
			state = 10
		} else {
			state = 9
			sound_play(asset_get("sfx_may_arc_coineat"));
		}
	}
	break;
	case 9: //Grab hit
		image_index = state_timer/grab_speed;
		if (floor(image_index) == grab_rumble_sfx_frame && grab_rumble_sfx_played) {
    	sound_play(asset_get("sfx_syl_nspecial_flowerhit"))
    	grab_rumble_sfx_frame += 2;
    	grab_rumble_sfx_played -= 1;
	}
		if (image_index <= grab_throw_start) {
			if (hatted_id != -4) {
				hatted_id.x = x
				hatted_id.y = y - 24;
				hatted_id.hsp = 0
				hatted_id.vsp = 0;
				hatted_id.visible = false;
				if (image_index > grab_throw_start) {
					hatted_id.invincible = false;
					hatted_id.invince_time = 0;
					hatted_id.visible = true;
					hatted_id.x = (x + (128 * spr_dir))
				}
			}
		} else {
			if (hatted_id != -4) {
				sound_play(asset_get("sfx_bigplant_eat"));
				hatted_id.x = (x + (128 * spr_dir))
				hatted_id.invincible = false;
				hatted_id.invince_time = 0;
				hatted_id.visible = true;
				hatted_id = -4;
				create_hitbox(AT_FSPECIAL, 4, x+spr_dir*128, y-80);
			}
		}
		if (image_index == (grab_end - 1)) { //End of grab
			mask_index = sprite_get("hat_mask");
			setState(0);
		}
	
	break;
	case 10: //Whiff
		image_index = state_timer/grab_speed;
		if (image_index >= 54) {
			mask_index = sprite_get("hat_mask");
			setState(0);
		}
	break;
	
}

if(hitstun > 0){
    hitstun--;
} else {
    hitstun_full = 0;
}

if (hsp != 0 && clamp(abs(hsp),0,1.5) == hsp) hsp = 0;

if (!hitstop) {
	state_timer += !lock_state;
} else {
	hitstop -= 1
}
if player_id.hat_object != self instance_destroy();

#define setState(_state)
{
    state = _state
    state_timer = 0;
    lock_state = true;
}

#define ForceDespawn()
{
    var border = 200;
    if (x < -border || x > room_width+border || y > room_height+border)
    {
        player_id.hat_object = noone;
        instance_destroy();
        return true;
    }
    return false
}

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
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
/* 
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
if(hbox.type == 2 and hbox.player != player_id.player and !hbox.plasma_safe){
    hbox.destroyed = true;
}

//DinoBros' Health damage
if (hbox.player == player) {
	health += hbox.damage;
	if (health >= 50) {
		health = 50;
	}
} else {
	health -= hbox.damage;
	if (health <= 0) {
		health = 0;
		setState(5);
	}	
}
player_id.hat_health = health;


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

#define spit_out() {
	//DinoBros new stuff
	if (hatted_id != -4) {
		hatted_id.invincible = false;
		hatted_id.invince_time = 0;
		hatted_id.visible = true;
		hatted_id.hitstop = 1;
		hatted_id = -4;
	}
}