
switch (enem_id) {
	case 1:
	case 2:
		state_machine_dee();
	break;
	default:
		state_machine_gordo();
	break;
}

with (pHitBox) {
    if (player_id != other.player_id) continue;
    if ("owner" in self && owner == other.id && (attack == AT_FSPECIAL || attack == 49)) {
    	if (hitbox_timer > 1)
        	hitbox_timer = 1;
        if (other.hitstop > 0)
            hitbox_timer = max(hitbox_timer - 1, 0);
        else
        {
            x = other.x + other.hsp + x_pos * owner.spr_dir;
            y = other.y + other.vsp + y_pos;
        }
        if ((was_parried || reflected) && reflect_player_prev != player) {
        	reflect_player_prev = player;
        	reflected = true;
            other.was_parried = true;
            other.reflect_player_prev = other.reflect_player;
            other.reflect_player_id_prev = other.reflect_player_id;
            other.reflect_player = player;
            other.reflect_player_id = last_player_id;
	        for (var i = 0; i < array_length(can_hit); i++) {
	            can_hit[@ i] = true;
	        }
            can_hit[player] = false;
            with (other) {
            	if (state == 0) {
        			hsp = old_hsp * -2;
					vsp = -abs(old_vsp * 0.5);
	                spr_dir = hsp >= 0 ? sign(hsp) : spr_dir;
            	}
            }
        }
    }
}

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

if (destroyed) {
    art_destroy_hitboxes();
    instance_destroy(id);
    exit;
}

#define state_machine_gordo()
sprite_index = sprite_get("gordo");
mask_index = sprite_get("gordo_mask");
if (hitstop > 0) return;
state_timer ++;
window_timer++;
switch(state) {
    case -1:
        if (player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR) { 
            destroyed = true;
        }
	break;  
    case 0:
        img_index = state_timer * 0.1;
        img_index %= 8;
        visible = true;
        
		physics_update();
		
		if (state_timer == 4) {
        	var _can_hit = instance_exists(my_hbox) ? array_clone(my_hbox.can_hit) : -1;
        	art_destroy_hitboxes();
        	my_hbox = create_article_hitbox(AT_FSPECIAL, 3, round(x), round(y))
            my_hbox.can_hit_self = true;
            my_hbox.player = reflect_player;  
            if (_can_hit == -1) {
				for (var i = 0; i < array_length(my_hbox.can_hit); i++) {
				    my_hbox.can_hit[@ i] = true;
				}
			    my_hbox.can_hit[@ my_hbox.player] = false;
            }
            else {
            	my_hbox.can_hit = _can_hit;
            }
            my_hbox.spr_dir = 1;
        }
        if (state_timer == 64) {
        	var _can_hit = instance_exists(my_hbox) ? array_clone(my_hbox.can_hit) : -1;
        	art_destroy_hitboxes();
        	my_hbox = create_article_hitbox(AT_FSPECIAL, 4, round(x), round(y))
            my_hbox.can_hit_self = true;
            my_hbox.player = reflect_player;
            if (_can_hit == -1) {
				for (var i = 0; i < array_length(my_hbox.can_hit); i++) {
				    my_hbox.can_hit[@ i] = true;
				}
			    my_hbox.can_hit[@ my_hbox.player] = false;
            }
            else {
            	my_hbox.can_hit = _can_hit;
            }
            my_hbox.spr_dir = 1;
        }
        if (state_timer > hit_time_max) {
    		art_state_set(2);
        }
        
		if (state_timer >= 4) {
	        if (instance_exists(my_hbox)) {
	            my_hbox.spr_dir = 1;
		        my_hbox.kb_angle = abs(hsp) < 1 ? 90 : (hsp > 0 ? 60 : 120);
	        }
	        else {
	        	if (!hit_already)
	        		art_state_set(2);
	        }
		}
		
		if (!hit_already) {
			current_sprite_set += 0.05;
            current_sprite_set %= 2;
            if (!free || (collision_rectangle(bbox_left, bbox_bottom + 8, bbox_right, bbox_bottom + 10, asset_get("par_jumpthrough"), 1, 1) && vsp > 0)) {
                vsp = -bounce_speed;
                sound_play(asset_get("sfx_gus_land"));
            }
            if (place_meeting(x + hsp, y, asset_get("par_block"))) {
                if (y < room_height - 64) {
                    x += hsp;
                    y += vsp;
                    hsp = 0;
                    vsp = 0;
                    state = 1;
                    state_timer = 0;
                    if (instance_exists(my_hbox)) instance_destroy(my_hbox);
                    sound_play(asset_get("sfx_shovel_brandish"), 0, 0, 1, 0.9);
                    var fx = spawn_hit_fx(round(x),round(y),302   );
                    fx.pause = 8;
                }
                else {
                    hsp = -hsp
                    sound_play(asset_get("sfx_gus_land"));
                }
            }
		}
		else {
			current_sprite_set = 2;
            if (!free || (collision_rectangle(bbox_left, bbox_bottom + 8, bbox_right, bbox_bottom + 10, asset_get("par_jumpthrough"), 1, 1) && vsp > 0)) {
                sound_play(asset_get("sfx_gus_land"));
                vsp = -bounce_speed;
            }
            if (place_meeting(x + hsp, y, asset_get("par_block"))) {
                hsp = -hsp
                sound_play(asset_get("sfx_gus_land"));
            }
		}
		drum_detection()
        hit_detection();
    break;
    case 1:
    	current_sprite_set += 0.05;
        current_sprite_set %= 2;
        vsp = 0;
        hsp = 0;
        if (!collision_rectangle(floor(bbox_left - 2), floor(bbox_top - 2), floor(bbox_right + 2), floor(bbox_bottom + 2), asset_get("par_block"), 0, 0)) { 
            hit_already = true;
            state = 0;
            state_timer = 0;
        }
        
        if (!instance_exists(my_hbox))
        {
        	art_destroy_hitboxes();
        	my_hbox = create_article_hitbox(AT_FSPECIAL, 5, round(x), round(y))
            my_hbox.can_hit_self = true;
            my_hbox.player = reflect_player;
            for (var i = 0; i < array_length(my_hbox.can_hit); i++) {
                my_hbox.can_hit[@ my_hbox.player] = false;
            }
            my_hbox.spr_dir = 1;
        }
        if (state_timer > stick_time_max - 60) {
            visible = get_gameplay_time() % 8 > 4;
        }
        
        hit_detection();
        if (state_timer > stick_time_max) {
    		art_state_set(2);
        }
    break;
    case 2:
    	var fx = spawn_hit_fx(round(x),round(y),144  );
		fx.pause = 8;
		destroyed = true;
    break;
}      
    
var num_frames = sprite_get_number(sprite_index) / num_sprite_sets;
var offset = num_frames * floor(current_sprite_set);
image_index = (img_index % num_frames) + offset;

if (x < -32 || x > room_width + 32) {
    destroyed = true;
}
if (y > room_height + 32) {
    destroyed = true;
}

if (getting_bashed) {
    was_parried = true;
    reflect_player_prev = reflect_player;
    reflect_player_id_prev = reflect_player_id;
    reflect_player = bashed_id.player;
    reflect_player_id = bashed_id;
    hit_already = true;
    state = 0;
    state_timer = 0;
    if (instance_exists(my_hbox)) instance_destroy(my_hbox);
}


#define state_machine_dee()
mask_index = asset_get("ex_guy_collision_mask");
image_angle = 0;
image_blend = c_white;
image_alpha = 1;

if (hitstop > 0) return;
state_timer ++;
window_timer++;

if (!instance_exists(my_hbox)) {
	art_destroy_hitboxes();
	var _num = enem_id == 1 ? 2 : 3;
	my_hbox = create_article_hitbox(49, _num, round(x), round(y))
	my_hbox.can_hit_self = true;
	my_hbox.player = reflect_player;
	for (var i = 0; i < array_length(my_hbox.can_hit); i++) {
	    my_hbox.can_hit[@ i] = true;
	}
    my_hbox.can_hit[@ my_hbox.player] = false;
	my_hbox.spr_dir = spr_dir;
	my_hbox.y_pos = -32;
}

my_hbox.spr_dir = hsp != 0 ? sign(hsp) : 1;

switch (state) {
    case -1:
		spr_name = enem_id == 1 ? "dee" : "doo";
		walk_speed = 8;
		walk_accel = 0.5;
		max_fall = 10;
		grav = 0.4;
		frict = 0.5;
		air_frict = 0;
		art_state_set(0);
	break;  
    case 0: //Falling
        sprite_index = art_sprite_get("spinhurt");
        image_index += 0.25;
		physics_update();
        if (free) {
	    	hsp = 0;
	        art_state_set(1);
		}	
    break;
    case 1: //Landing
        physics_update();
        sprite_index = art_sprite_get("land"); 
        image_index = ease_linear(0, image_number, state_timer, 11);
        if (state_timer >= 10) {
            art_state_set(2);
        }
    break;
    case 2: //Walking
        physics_update();	
        if (free) {
	    	hsp = 0;
	        art_state_set(3);
		}	
        else {
            if (window == 1) {
                
                hsp += walk_accel * spr_dir;
                hsp = clamp(hsp, -walk_speed, walk_speed);
                var wall_r = place_meeting(bbox_right+1, bbox_bottom - 2, asset_get("par_block"));
                var wall_l = place_meeting(bbox_left-1, bbox_bottom - 2, asset_get("par_block"));
        		
                sprite_index = art_sprite_get("walk");
                image_index += 0.15;
                
    			if ((wall_r && hsp > 0) || (wall_l && hsp < 0)) {
                    hsp = 0;
                    art_window_set(2);
                    spr_dir = -spr_dir;
                }
            }
            if (window == 2) {
                sprite_index = art_sprite_get("walkturn");
                image_index = ease_linear(0, image_number, window_timer, 7);
                if (window_timer >= 6) {
                    art_window_set(1);
                }
            }
        }
    break;
    case 3: //Jumping
        sprite_index = art_sprite_get("jump");
        physics_update();
        
        image_index = ease_linear(0,image_number-1,floor(vsp+max_fall), max_fall*2);
        
		if (!free) {
		    art_state_set(1);
		}	
    break;
    case 4: //Disappearing
		spawn_hit_fx(round(x), round(y), 144);
    	destroyed = true;
    break
}

if (state != 0)
	despawn_timer ++;

if (despawn_timer >= DESPAWN_TIME-60 && despawn_timer % 4 <= 2) {
    visible = !visible;
}
if (despawn_timer >= DESPAWN_TIME) {
    art_state_set(4);
}

if ((player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND) || player_id.attack != 49) {
    art_state_set(4);
}

#define drum_detection()
//Drum Bouncing
//(I put it here so it can detect multiple instances of the object.)

with (obj_article3) {
    if (player_id.url == other.player_id.url && get_char_info(player_id.player, INFO_STR_NAME) == get_char_info(other.player, INFO_STR_NAME)) {
        var player_near = collision_line(x - lengthdir_x(40, img_angle), y - 48 - lengthdir_y(40, img_angle), 
            x + lengthdir_x(40, img_angle), y - 48 - lengthdir_y(40, img_angle), other, 0, 1);
        if (instance_exists(player_near)) {
            if (other.vsp > 0 && other.state == 0 && other.free) {
                state = 2;
                state_timer = 0;
                other.hit_already = true;
                other.state = 0;
                other.state_timer = 0;
                if (img_angle != 0)
                    other.hsp = lengthdir_x(bounce_speed, img_angle - 90);
                other.vsp = lengthdir_y(bounce_speed, img_angle - 90);
            }
        }
    }
}

#define physics_update()
if (hitstop <= 0) {
    if (free) {
        if (vsp < max_fall) {
            vsp += grav;
        } 
        hsp = (max(0, (abs(hsp) - air_frict)) * sign(hsp))
    }
}
x = round(x);
y = round(y);

#define art_state_set(_state)
state = _state
state_timer = 0;
window = 1;
window_timer = 0;

#define art_window_set(_window)
window = _window;
window_timer = 0;

#define art_sprite_get(_sprite) //Get the sprite of this article
return sprite_get(string(spr_name)+"_"+string(_sprite));

#define art_got_hit(hbox)
//This article was hit
art_state_set(0);
was_parried = true;
hit_already = true;
state_timer = 0;
reflect_player_prev = reflect_player;
reflect_player_id_prev = reflect_player_id;
reflect_player = hbox.player;
reflect_player_id = hbox.last_player_id;

if (hbox.no_other_hit != 0 && reflect_player_prev != 0)
	reflect_player_id.can_be_hit[reflect_player_prev] = hbox.no_other_hit + reflect_player_id_prev.hitstop;

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
//Default hit stuff
sound_play(hbox.sound_effect);
with (hbox.player_id) {
	var fx = spawn_hit_fx(floor(other.x+hbox.hit_effect_x),floor(other.y+hbox.hit_effect_y),floor(hbox.hit_effect == 0 ? 301 : hbox.hit_effect));
	if (instance_exists(fx))
		fx.pause = 8;
}
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
owned_player = hit_player_num;
 

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
//if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
orig_knock = get_kb_formula(percent, kb_adj, 1, hbox.damage, hbox.kb_value, hbox.kb_scale);
kb_dir = get_hitbox_angle(hbox);

//Changed this to account for bouncing
if !free && kb_dir > 180 && kb_dir < 360 vsp = orig_knock*dsin(kb_dir);
else if !free vsp = -abs(orig_knock*dsin(kb_dir));
else vsp = -orig_knock*dsin(kb_dir);
hsp = orig_knock*dcos(kb_dir);
if hsp != 0 spr_dir = -sign(hsp);

if (place_meeting(x + hsp, y, asset_get("par_block"))) hsp = -hsp;

old_hsp = lengthdir_x(orig_knock, kb_dir);
old_vsp = lengthdir_y(orig_knock, kb_dir);

if (hbox.type == 2) {
    if (hbox.enemies == 0)
    {
        with (hbox)
        {
            destroyed = true
            fx_created = true
        }
    }
}

art_got_hit(hbox);
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.reflect_player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    var url_equal = player_id.url == other.player_id.url && get_char_info(player_id.player, INFO_STR_NAME) == get_char_info(other.player, INFO_STR_NAME);
    return (("owner" not in self) || (!instance_exists(owner) || (owner != other && owner.reflect_player != other.reflect_player))) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && hitstun_factor >= 0
        && (groundedness == 0 || groundedness == 1+other.free)
       // && (!player_equal || player_id_equal)
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}

#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
hbox.can_hit_self = true;
hbox.player = reflect_player;
for (var i = 0; i < array_length(hbox.can_hit); i++) {
    hbox.can_hit[@ hbox.player] = false;
}
hbox.spr_dir = spr_dir;
hbox.x_pos = (hbox.x - x);
hbox.y_pos = (hbox.y - y);

return hbox;

#define art_destroy_hitboxes()
with (pHitBox) {
    if ("owner" in self && player_id == other.player_id) {
        if (instance_exists(owner) && owner == other.id) {
        	instance_destroy(id);
        	continue;
        }
    }
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
