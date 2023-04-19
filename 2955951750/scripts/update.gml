//crash prevention line

//Dash cancel stuff
if ((left_down == false && right_down == false) && (state == PS_DASH || state == PS_DASH_STOP || state == PS_DASH_START || state == PS_DASH_TURN || attack == AT_DATTACK) && attack_pressed && dash_cancel == 0){
   dash_cancel = 1;
   attack_pressed = 1;
} else {
   dash_cancel = 0;
}

if (state == PS_DASH_STOP && dash_cancel == 1){
    set_state(PS_IDLE);
}

if (state == PS_DASH_TURN && dash_cancel == 1){
    set_state(PS_IDLE);
}

/*
if (state == PS_JUMPSQUAT && dashing == 1 && state_timer < 1){
    dashing = 0;
    hsp = 6*spr_dir;
}

if (state == PS_DASH_START){
    dashing = 1;
} else {
    dashing = 0;
}
*/
//dash cancel stuff end

if !instance_exists(player_field_vars.field_obj)
{
    player_field_vars.in_field = false;
}else if(instance_exists(player_field_vars.field_obj) && !player_field_vars.field_obj.should_decay && state_cat == SC_HITSTUN){
    //start decaying field if it isnt already
    player_field_vars.field_obj.should_decay = true;
}

if (!free){
    fspecial_wall_bounces = 0; //resets fspecial's wall bounce counter if landing on the ground
}

if ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || (attack != AT_FSPECIAL && attack != AT_EXTRA_2)){ //if not during fspecial or its spin
    fspecial_spin_cancel = 0; //fspecial spin cancel check reset
}

if (state == PS_WALK_TURN){ //Secret taunt
    move_cooldown[AT_TAUNT] = 5; //prevents taunt so secret taunt is doable
    if (taunt_pressed){
        set_state(PS_ATTACK_GROUND);
        attack = AT_EXTRA_1;
    }
}


if (state == PS_WALL_JUMP and instance_exists(uspecial_target) && uspecial_target != noone){
    uspecial_target.hitstun = 2;
}

if (state == PS_WAVELAND){
    hurtboxID.sprite_index = sprite_get("oxob_wavebox");
    
} else if ((state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL || state == PS_DASH || state == PS_JUMPSQUAT || state == PS_DASH_START) && state != PS_CROUCH) {
    hurtboxID.sprite_index = sprite_get("oxob_hurtbox");
} 


//shield mask
if(attack == AT_DSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (window == 2 || window == 3 || (window == 1 && window_timer >= get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)))){
    mask_index = shield_mask;
}else{
    mask_index = collision_mask;
}

if(hud_ping_timer > 0) hud_ping_timer--;
//Shield health regen
if (attack != AT_DSPECIAL || (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)){
    if (shield_health < shield_health_max){
        shield_health += shield_health_regen;
        battery_vis_timer = 20;
        battery_vis = 1;
        if(shield_health >= shield_health_max){
            sound_play(asset_get("mfx_player_ready"), false, noone, 0.55, 0.8);
            hud_ping_timer = 10;
            shield_health = shield_health_max;
        }
    } else if (shield_health > shield_health_max){
        shield_health = shield_health_max;
    }
}
if (shield_health < 0){
    shield_health = 0;
}

if(battery_vis_timer > 0){
    battery_vis_timer--;
    if(battery_vis_timer <= 10){
        battery_vis_gain = -0.1;
    }
    battery_vis = clamp(battery_vis + battery_vis_gain, 0, 1);
}

//FIELD SYSTEM UPDATE.GML (by Delta Parallax)
//ONLY WORKS IF YOU HAVE AFTERIMAGES ON.

//This is where all of the afterimage creation and update logic is.
//much code very wow
if (player_field_vars.after_images_on)
{
    //Spawn after image if 1) you are in the field, 2) it is the right time to spawn an afterimage, and 3) you are moving enough for the afterimages to be visible. 
    if (player_field_vars.in_field and get_gameplay_time() mod player_field_vars.after_image_spawn_interval == 0 and ((point_distance(0,0,hsp,vsp) >= player_field_vars.after_image_speed_threshold and !hitpause) or hitpause))
    {
        var aimage = {
            pos : [x,y],
            alpha : player_field_vars.after_image_alpha,
            alpha_decay : player_field_vars.after_image_alpha_decay,
            spr_face : spr_dir*2,
            frame : image_index,
            sprite : sprite_index
        };
        ds_list_add(player_field_vars.after_images,aimage);
    }
    
    //Update alpha and delete stuff when no longer needed.
    for (var a = 0; a < ds_list_size(player_field_vars.after_images); a++)
    {
        player_field_vars.after_images[| a].alpha -= player_field_vars.after_images[| a].alpha_decay;
        if (player_field_vars.after_images[| a].alpha <= 0)
        {
            ds_list_delete(player_field_vars.after_images,a)
            a--;
        }
    }
}

if (get_player_color(player) == 12){
    if(get_gameplay_time() <= 1){
        player_field_vars.circle_glow_midpoints = [0.3, 0.3];
        player_field_vars.circle_glow_amplitude = 0.01;
    }
    
    if (player_field_vars.field_obj != noone){
        player_field_vars.field_obj.field_spr = sprite_get("genesisfield");
    }
}

//vfx
with hit_fx_obj if player_id == other {
    if hit_fx == other.nspec_floorhit || hit_fx == other.nspec_boltgeyser || hit_fx == other.nspec_airbolt {
        depth = player_id.depth-1;
    }
}

if(nspec_air_frame != -1 && !hitpause){
    nspec_air_timer++;
    if(nspec_air_timer % 3 == 0){
        nspec_air_frame++;
        if(nspec_air_frame >= 5) nspec_air_frame = -1;
    }
}

//hit detection handling
with (oPlayer){
    if(self != other){
        if ((state == 5 || state == 6) && window == 1 && window_timer == 1) {
            other.hbox_group[@ player-1][@ attack] = array_create(10,0);
        }
    }
}