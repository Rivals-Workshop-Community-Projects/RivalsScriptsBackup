// State Specific
/*
switch(state){
    case PS_PRATFALL: // Reset variables on pratfall
        // Reset Nspecial
        if(get_window_value(AT_NSPECIAL,get_attack_value(AT_NSPECIAL,AG_NUM_WINDOWS),AG_WINDOW_TYPE) == 7){ // Resent Nspecial
            reset_window_value(AT_NSPECIAL,get_attack_value(AT_NSPECIAL,AG_NUM_WINDOWS),AG_WINDOW_TYPE); // Set to pratfall
        }
        break;
        
    default:
        break;
}
*/

// Tech Sound Fix cause it doesn't play normally when the clone is out?
if(instance_exists(clone_object_ID) && (state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD) && state_timer == 1){
    sound_play(asset_get( "sfx_tech" ),false,noone,1,1); // soundID,looping,panning,volume,pitc
}

// Extra D jump when being thrown by Uspecial on the ground
if(instance_exists(clone_object_ID)){
    if(!clone_object_ID.free && attack == AT_USPECIAL_2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && djump_given_back_flag = false){
        max_djumps = 2;
        djump_given_back_flag = true;
    }
}

// Gain D jump flag on landing
if(!free && djump_given_back_flag == true){djump_given_back_flag = false;max_djumps = 1;}

// Gain Emergency Fspec flag back on landing
if(instance_exists(clone_object_ID)){
    if(!free && emergency_fspec_given_back_flag == true){
        emergency_fspec_given_back_flag = false;
        move_cooldown[AT_FSPECIAL_AIR] = 0;
    }
}

//WISP
if(wisp_returned == true){
    white_flash_timer = 10;
    wisp_returned = false;
}

// Prevemt walking after being hit
if(attack != AT_EXTRA_1 && (state != PS_ATTACK_AIR || state != PS_ATTACK_GROUND)){clone_walk_direction = 0;} 

// Anti Stalling code for Uspecial
if(free && attack == AT_USPECIAL && state_timer == 10 && state == PS_ATTACK_AIR){ // checks to see if uspecial is being used in the air
    uspecial_stall_counter++;
}

if(state_cat == SC_HITSTUN || !free || state == PS_WALL_JUMP){ // resets the counter upon being hit, landing, or wall jumping.
    uspecial_stall_counter = 0;
}

switch(uspecial_stall_counter){ // allows for 3 instances and then will set cooldown
    case 0:
    case 1:
    case 2:
    case 3:
        move_cooldown[AT_USPECIAL] = 0;
        break;
    default:
        move_cooldown[AT_USPECIAL] = 999;
        break;
}

// End Anti stalling code

// Draw indicator Logic
if(instance_exists(clone_object_ID)){
    draw_indicator = false;
    clone_hud_text = clone_object_ID.clone_hud_text;
}

//Dthrow vfx
if(instance_exists(asset_get("hit_fx_obj"))){ // Checks to see if any hfcxs exist
    var dthrow_fire_index_temp = sprite_get("vfx_dthrow_fire");
    var player_depth_temp = depth;
    with(asset_get("hit_fx_obj")){ // opens hfx 
        if(sprite_index == dthrow_fire_index_temp){
        	depth = player_depth_temp + 1;
        	if(is_even(floor(get_gameplay_time() / 2))){spr_dir = 1;} else spr_dir = -1;
        }
    }
}

// Code for counting players for Results Screen / Intro
if(state == PS_SPAWN && state_timer == 1)
{
        with(oPlayer)
        {
            other.countPlayers ++;
            if(id != other.id)
                other.enemyObj = id;
        }
}

#region //Rainbow Alt Stuff
init_shader();
if (get_gameplay_time() % color_timer == 0) {
    switch(color_type) {
        case 0: //Red Stay, Green Up
            color_g += 1;
            if (color_g >= 255) {
                color_g = 255;
                color_type += 1;
            }
        break;
        case 1: //Green Stay, Red Down
            color_r -= 1;
            if (color_r <= 0) {
                color_r = 0;
                color_type += 1;
            }
        break;
        case 2: //Green Stay, Blue Up
            color_b += 1;
            if (color_b >= 255) {
                color_b = 255;
                color_type += 1;
            }
        break;
        case 3: //Blue Stay, Green Down  
            color_g -= 1;
            if (color_g <= 0) {
                color_g = 0;
                color_type += 1;
            }
        break;
        case 4: //Blue Stay. Red Up
            color_r += 1;
            if (color_r >= 255) {
                color_r = 255;
                color_type += 1;
            }
        break;
        case 5: //Red Stay, Blue Down
            color_b -= 1;
            if (color_b <= 0) {
                color_b = 0;
                color_type = 0;
            }
        break;
        default:
        break;
    }
}

#endregion


#define is_even(value)
{
    return !(argument0 & 1);
}