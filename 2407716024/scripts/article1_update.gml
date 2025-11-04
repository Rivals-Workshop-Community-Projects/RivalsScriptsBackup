//article1_update.gml



//destroy if the player gets stunned



//force cooldown
player_id.move_cooldown[AT_DSPECIAL] = 20;



//if (free && state <= 6)


state_timer++;
//0: landing
//1: shift forward if possible


//destroy if peacock doesn't complete the startup
//if (state < 8) destroy_if_peacock_is_stunned();


switch (state) {
case 0: //landing
    //make invisible
    visible = false;
    hsp = 0;
    
    generate_spr_name = "";
    
    //increase startup timer
    startup_timer++;
    
    if (x != xstart) {
        clipped_wall++;
        y -= round(64 / clipped_wall);
        x = xstart;
        free = true;
    }
    
    //upon landing, set state to 1
    if (!free) {
    	
        article_set_state(1);
    }
    //otherwise, fall
    else {
        vsp = 32 / (clipped_wall + 1);
        if (y > room_height) destroy = true;
    }
break;

case 1:
    //increase startup timer
    startup_timer++;
    
    //check both corners
    var half_sprite_width = floor((sprite_width / 2) - 1);
    var sprite_width_minus_one = sprite_width - 1;
    var front_corner_check = place_meeting_floor(spr_dir * sprite_width_minus_one);
    var back_corner_check = place_meeting_floor(-spr_dir * sprite_width_minus_one);
    
    if (!front_corner_check) {
        if (!back_corner_check) {
            if (!free) {
                if (floor_check_error) destroy = true;
                else {
                    floor_check_error = 1;
                    free = true;
                }
            }
            article_set_state(0);
        }
        else {
            shift_off_ledge_onto_platform(-spr_dir, 4);
            finished_stepping = true;
            article_set_state(2);
        }
    }
    else {
        if (!back_corner_check) {
            step_distance += shift_off_ledge_onto_platform(spr_dir, 4);
        }
        //else do nothing
        article_set_state(2);
    }
break;

case 2:
    //increase startup timer
    startup_timer++;
    
    if (free && !place_meeting_floor(0)) {
        vsp = 1;
        
        if (hsp != 0) {
            x -= hsp * 2;
            hsp = 0;
            shift_off_ledge_onto_platform(-spr_dir, 4);
            article_set_state(3);
            // slight offset to make sure that it stays on stage on the right side.
            if (spr_dir == 1) x -= 4;
        }
        else {
            article_set_state(0);
        }
        break;
    }
    hsp = spr_dir * 16;
    vsp = 0;
    step_distance += 16;
    
    if (step_distance > maximum_step_distance) {
        shift_off_ledge_onto_platform(-spr_dir, 4);
        article_set_state(3);
        hsp = 0;
    }
    
    
    break;
break;

case 3:
    //increase startup timer
    startup_timer++;
    
    vsp = free;
    hsp = 0;
    
    //progress when startup timer is above a certain threshold
    if (startup_timer >= 24) {
        article_set_state(4);
    }
break;

case 4:
    //startup complete
    visible = true;
    sprite_index = sprite_get("dspecial_shadow");  
    image_index = 0;
    article_set_state(5);
    sfx_falling = sound_play(sound_get("item_drop"), 0, noone, 0.3);
break;

case 5: //charge: level 1
    left_x = x - 30;
    right_x = x + 30;
    
    if (charge_time >= stats_lvl1_time) { //adjust fall time in article1_init.gml
        article_set_state(6);
        image_index = 1;
        power_level = 2;
    }
    //increase timer
    charge_time++;
break;
case 6: //charge: level 2
    left_x = x - 60;
    right_x = x + 60;
    
    if (charge_time >= stats_lvl2_time) {
        article_set_state(7);
        image_index = 2;
        power_level = 3;
    }
    //increase timer
    charge_time++;
break;
case 7: //charge: level 3
    left_x = x - 94;
    right_x = x + 94;

    if (charge_time >= stats_lvl3_time) {
        article_set_state(8);
    }
    //increase timer
    charge_time++;
break;

case 8: //prepare to fall
    
    //set_sprites and assets
    if (state_timer == 1) {
        pick_assets();
        hitbox_sprite_index = spr_falling;
    }
    if (state_timer >= 5) {
        if (power_level == 4) article_set_state(20);
        else article_set_state(9);
        //article_set_state(9);
    }
break;


case 9: //fall
    //set fall stats
    if (state_timer == 1) {
        
        switch (power_level) 
        {
            case 1: hitbox_y_offset = 15; break;
            case 2: hitbox_y_offset = 30; break;
            case 3: hitbox_y_offset = 45; break;
        }
        hitbox_x = x;
        hitbox_y_target = y;
        hitbox_id = create_hitbox(AT_DSPECIAL, power_level, x, -hitbox_y_offset);
        if (ownershit == player_id) hitbox_id.can_hit_self = true;
        else hitbox_id.player = ownershit.player;
    }
    else {
        x = hitbox_x;
        if (article_hitlag <= 0) { hitbox_y = min(hitbox_y + stats_fall_speed, hitbox_y_target); }
        else  { article_hitlag--; }
        
        if (instance_exists(hitbox_id)) {
            hitbox_id.x = hitbox_x;
            
            if (hitbox_id.in_hitpause) {
                hitbox_id.y = hitbox_y + hitbox_y_offset;
            }
            else {
                hitbox_id.y = hitbox_y - hitbox_y_offset;
            }
        }
    }
    if (hitbox_y >= hitbox_y_target) article_set_state(10);
break;

case 10: //landing frame
    if (state_timer == 1) {
        //stop falling sound
        sound_stop(sfx_falling);
        //play landing sound
        if (sfx_landed != noone) sound_play(sfx_landed);
    }
    hitbox_sprite_index = spr_ground;
        if (hitbox_sprite_index != noone && state_timer > 1 && state_timer mod 3 == 0 && hitbox_image_index < sprite_get_number(hitbox_sprite_index)) {
        hitbox_image_index++;
    }
    if (instance_exists(hitbox_id)) {
        hitbox_id.destroyed = true;
        
        hitbox_id.x = hitbox_x;
        hitbox_id.y = 1000;
    }
    
            switch (power_level) {
        case 2: shake_camera( 5, 5 ); break;
        case 3: shake_camera( 10, 10 ); break;
        case 4: shake_camera( 20, 20 ); break;
    }
   if (state_timer > 2) article_set_state(11);
break;
case 11: //post landing
    if (hitbox_sprite_index != noone && state_timer > 1 && state_timer mod 5 == 0 && hitbox_image_index < sprite_get_number(hitbox_sprite_index)) {
        hitbox_image_index++;
    }
    article_set_state(14);
break;
case 12: //tenrai ha
    //
case 13: 
case 14: //animation and cooldown
    hitbox_sprite_index = spr_die;
    if (hitbox_sprite_index != noone && state_timer > 40 && state_timer mod 5 == 0 && hitbox_image_index < sprite_get_number(hitbox_sprite_index)) {
        hitbox_image_index++;
    }
    if (state_timer > 69) destroy = true;
break;

 //roda rorra da
case 20: //fall
    //set fall stats
    if (state_timer == 1) {
        hitbox_y_offset = 45;
        hitbox_x = x;
        hitbox_y_target = y;
        power_level = 4;
        hitbox_id = create_hitbox(AT_DSPECIAL, power_level, x, -hitbox_y_offset);
        //hitbox_id.can_hit_self = true;
        if (ownershit == player_id) hitbox_id.can_hit_self = true;
        else hitbox_id.player = ownershit.player;
        roller_segment_x = [0, 0, 0, 0];
        roller_segment_y = [0, 0, 0, 0];
        roller_segment_hsp = [0, 0, 0, 0];
        roller_segment_vsp = [0, 0, 0, 0];
        roller_segment_draw_x = [0, 0, 0, 0];
        roller_segment_draw_y = [0, 0, 0, 0];
        roller_avery_image_index = 0;
        roller_visible = 1;
        roller_spr = sprite_get("dspecial_roadroller");
        roller_avery_spr = sprite_get("dspecial_avery");
        grabbed_player_id_array = [noone, noone, noone, noone, noone];
    }
    else {
        x = hitbox_x;
        if (article_hitlag <= 0) { hitbox_y = min(hitbox_y + stats_fall_speed, hitbox_y_target); }
        else  { article_hitlag--; }
        
        if (instance_exists(hitbox_id)) {
            hitbox_id.x = hitbox_x;
            
            if (hitbox_id.in_hitpause) {
                hitbox_id.y = hitbox_y + hitbox_y_offset;
            }
            else {
                hitbox_id.y = hitbox_y - hitbox_y_offset;
            }
        }
    }
    
    //drag players with the hitbox
    roller_update_grabbed_player_array();
    
    if (hitbox_y >= hitbox_y_target) article_go_to_next_state();
break;
case 21: //land
    hitbox_sprite_index = spr_ground;
    if (instance_exists(hitbox_id)) {
        hitbox_id.x = hitbox_x;
        hitbox_id.y = hitbox_y - hitbox_y_offset;
        hitbox_id.destroyed = true;
        
        sound_play(sound_get("avery_sqwuak"));
        
        	var splat = random_func( player_id.player + 5, 2, false);
        
        	if splat && place_meeting(x,y,oPlayer){
        	
        		sound_play(sound_get("splat"));
        }
        
    }
    
    //spawn landing hitbox
    var _hb = create_hitbox(AT_DSPECIAL, 5, x, y - hitbox_y_offset);
    _hb.can_hit_self = true;
    
    if (sfx_landed != noone) sound_play(sfx_landed);
    
    //shake the road roller
    roller_shake(4, 90);
    
    //drag players with the hitbox
    roller_update_grabbed_player_array();
    
    article_go_to_next_state();
break;

case 22: //wryyyyy
    roller_grab = is_roller_grabbing_any_player();
    if (state_timer == 1 && roller_grab) {
        
        
       roller_freeze = true;
    }
    if state_timer > 60{
    	if state_timer = 61 && roller_grab
    sound_play(sound_get("avery_wryyy"));
    roller_avery_image_index += 0.2 - (roller_grab * 0.075);
    if (roller_avery_image_index) >= 13 {
        //make avery do his thing, only if the roller hit someone
        if (roller_grab) article_go_to_next_state();
        //otherwise, skip to an ending animation state
        else { 
            article_set_state(31);
           // sound_play(sound_get("avery_sqwuak"));
        }
        roller_avery_image_index = 12.8;
    }
    if !roller_grab
     article_set_state(31);
    }
break;

case 23: //muda
    if (state_timer == 1) {
        sound_play(sound_get("avery_muda_short"));
    }
case 24: 
case 25: 
case 26: 
case 27: 
case 28:
    switch (state_timer) {
        case 1:
            roller_avery_image_index = 12.75;
        case 9:
            //spawn hitbox
            roller_shake(4, 90);
            var _hb = create_hitbox(AT_DSPECIAL, 6, x, y - hitbox_y_offset);
            _hb.can_hit_self = true;
        break;
    }
    roller_avery_image_index += 0.25;

    if (roller_avery_image_index > 17) {
        
        article_go_to_next_state();
    }
break;

case 29: //pause
    if (state_timer == 1) {
        roller_avery_image_index = 17;

    }
    else if (state_timer >= 20) {
        article_go_to_next_state();
    }
break;

case 30: //hrahhhh
    roller_avery_image_index += 0.25;
    switch (roller_avery_image_index) {
        case 18.75:
            sound_play(sound_get("avery_rah"));
        break;
        case 19:
            roller_shake(6, 90);
            var _hb = create_hitbox(AT_DSPECIAL, 6, x, y - hitbox_y_offset);
            _hb.can_hit_self = true;
        break;
        case 22:
        case 22.25:
            roller_avery_image_index = 22;
            article_go_to_next_state();
        break;
    }
break;

case 31: //pause again
    roller_avery_image_index = 22;
    if (state_timer >= 10 + (roller_grab * 20)) {
        article_go_to_next_state();
        roller_avery_image_index = 23;
    }
break;

case 32: //prepare to jump
    roller_avery_image_index = 23;
    if (state_timer >= 10 + (roller_grab * 10)) {
        article_go_to_next_state();
        roller_freeze = false
    }
break;

case 33: //ascend with gorb
    if (state_timer == 1) {
        roller_avery_image_index = 24;
        //make the roller fall apart
        roller_fall_apart();
        //sound_play(sound_get("is_that_a_jojo_reference"));
        
        
        //spawn final hitbox
        if roller_grab {
        var _hb = create_hitbox(AT_DSPECIAL, 7, x, y - hitbox_y_offset);
        _hb.can_hit_self = true;
        }
    }
    roller_translate_gravity();
    //animate avery
    if (roller_avery_image_index < 38) roller_avery_image_index += 0.5;
    if (roller_avery_image_index < 38) roller_avery_image_index += 0.5;
    //a s c e n d
    hitbox_y -= max(10, 20 - state_timer/2);
    //roller flicker
    roller_visible = (round(state_timer / 10) mod 2 == 1);
    //destroy after 30 frames
    if (state_timer > 30) destroy = true;
break;

    
}
if (state >= 21 && state <= 32) {
    roller_translate_center();
    if (state >= 22) roller_update_grabbed_player_array_efficient();
}

if (destroy) { sound_stop(sfx_falling); instance_destroy(); }

if (state >= 5 && state <= 7 && player_id.state == PS_HITSTUN &&
    player_id.x > left_x && player_id.x < right_x)
{
	ownershit =	player_id.last_hit;
    state = 8;
	state_timer = 0;
}

#define article_set_state
/// @param {undefined} arg_state
/// article_set_state(arg_state)
var arg_state = argument0;
state_timer = 0;
state = arg_state;
return;


#define article_go_to_next_state
/// article_go_to_next_state()
state_timer = 0;
state++;
return;

#define place_meeting_floor
/// @param {undefined} x_offset
/// place_meeting_floor(x_offset)
var x_offset = argument0;
var wall = asset_get("par_block");
var plat = asset_get("par_jumpthrough");
return (place_meeting(x + x_offset, y+2, wall) || place_meeting(x + x_offset, y+2, plat));

#define shift_off_ledge_onto_platform
var shift_dir = argument0;
var steps = argument1;
var shift_counter = 1;
var return_value = 0;

while (shift_counter <= steps) {
    var shift_distance = ceil(sprite_width / shift_counter);
    if !(place_meeting_floor(-shift_dir * (sprite_width - shift_distance))) {
        x += shift_dir * shift_distance;
        return_value += shift_distance;
        
    }
    shift_counter++;
}
return return_value;



#define pick_assets


//check for special level 3 drops
if (power_level == 3) {
    //check for tenraiha
    if (false) { power_level = 5; }
    //check for 5% roadroller drop
    else {
        var roller_roll = random_func( player_id.player + 5, 40, false);
    }if (roller_roll < 5) { power_level = 4; }
}


var rng_number;

switch (power_level) {
    case 2:
        rng_number = random_func( player_id.player + 5, 9, true);
        sfx_landed = sound_get("item_land_lv2");
    break;
    case 3:
        rng_number = random_func( player_id.player + 5, 5, true) + 1;
        sfx_landed = sound_get("item_land_lv3");
    break;
    
    case 4: //roadroller
        //has preset sprites. exit this script.
        sfx_landed = sound_get("item_land_lv3");
        return;
    break;
    
    case 5:
        //tenreiha sprites are index 0
        rng_number = 0;
        sfx_landed = sound_get("item_land_lv3");
    break;
    
    default: //lvl 1
        rng_number = random_func( player_id.player + 5, 7, true);
        sfx_landed = sound_get("item_land_lv1");
    break;
}

generate_spr_name = "dspecial_block_lv" + string(power_level) + "_" + string(rng_number);

spr_neutral = sprite_get(generate_spr_name);
spr_falling = sprite_get(generate_spr_name + "_falling");
spr_ground = sprite_get(generate_spr_name + "_ground");
spr_die = sprite_get(generate_spr_name + "_die");

return;


#define destroy_if_peacock_is_stunned
if (instance_exists(player_id) && player_id.state_cat == SC_HITSTUN) destroy = true;
return;

#define roller_translate_center
for (var i = 0; i < 4; i++) {
    if (point_distance(0, 0, roller_segment_hsp[i], roller_segment_vsp[i]) < 0.5 && point_distance(0, 0, roller_segment_x[i], roller_segment_y[i]) < 0.5) {
        roller_segment_x[i] = 0;
        roller_segment_hsp[i] = 0;
        roller_segment_y[i] = 0;
        roller_segment_vsp[i] = 0;
    }
    else {
        roller_segment_x[i] += roller_segment_hsp[i];
        roller_segment_hsp[i] -= roller_segment_x[i] * 0.25;
        roller_segment_hsp[i] *= 0.9;
        roller_segment_y[i] += roller_segment_vsp[i];
        roller_segment_vsp[i] -= roller_segment_y[i] * 0.25;
        roller_segment_vsp[i] *= 0.9;
    }

    
    
    roller_segment_draw_x[i] = x + round(roller_segment_x[i]);
    roller_segment_draw_y[i] = y + round(roller_segment_y[i]);
}
return;

#define roller_translate_gravity
for (var i = 0; i < 4; i++) {
    roller_segment_x[i] += roller_segment_hsp[i];
    roller_segment_hsp[i] *= 0.99;
    roller_segment_y[i] += roller_segment_vsp[i];
    roller_segment_vsp[i] += 0.25;
    
    roller_segment_draw_x[i] = x + round(roller_segment_x[i]);
    roller_segment_draw_y[i] = y + round(roller_segment_y[i]);
}
return;



#define roller_shake //(force, direction)
var shake_force = argument0;
var shake_dir_base = argument1 - 60 * spr_dir;
for (var i = 0; i < 4; i++) {
    //var shake_dir = i * 90;
    var shake_direction = shake_dir_base + (random_func(10 + i * 3, 120, false) * spr_dir);
    roller_segment_hsp[i] = lengthdir_x(shake_force, shake_direction);
    roller_segment_vsp[i] = lengthdir_y(shake_force, shake_direction);
}
shake_camera( shake_force, shake_force ); 
return;

#define roller_fall_apart //(force, direction)
for (var i = 0; i < 4; i++) {
    var fall_apart_dir = 90 - (15 * (i - 1.5) * spr_dir);
    roller_segment_hsp[i] = lengthdir_x(6, fall_apart_dir);
    roller_segment_vsp[i] = lengthdir_y(6, fall_apart_dir);
}
return;

#define roller_update_grabbed_player_array
for (var i = 1; i < 5; i++) {
    var this_player_id = grabbed_player_id_array[i];
    if (instance_exists(this_player_id) && is_player_in_hitstun_and_hitpause(this_player_id)) {
        this_player_id.x = clamp(this_player_id.x, x - 100, x + 100);
        this_player_id.y = hitbox_y;
        this_player_id.hitstop = max(this_player_id.hitstop, 2);
    }
    else grabbed_player_id_array[i] = noone;
}
return;

#define roller_update_grabbed_player_array_efficient
//same as above, but does not reposition the grabbed players
for (var i = 1; i < 5; i++) {
    var this_player_id = grabbed_player_id_array[i];
    if (instance_exists(this_player_id) && is_player_in_hitstun_and_hitpause(this_player_id)) {
        this_player_id.hitstop = max(this_player_id.hitstop, 2);
    }
    else grabbed_player_id_array[i] = noone;
}
return;

#define is_roller_grabbing_any_player
for (var i = 1; i <= 4; i++) {
    if (instance_exists(grabbed_player_id_array[i])) return true;
}
return false;

#define is_player_in_hitstun_and_hitpause
return (argument0.hitpause && (argument0.state == PS_HITSTUN || argument0.state == PS_HITSTUN_LAND));


#define spawn_tenraiha_projectile
var new_article = instance_create(x, y, "obj_article1");

