//#region Dashstop
// if(state == PS_DASH_STOP){
//     hsp *= 0.95
// }


if state != PS_ATTACK_AIR
{
    bair_held_which = -1
    bair_charge = 0;
}

if(state == PS_LANDING_LAG){
    sound_stop(sound_get("ftilt"));
}


if state != PS_ATTACK_GROUND
{
    //hit_jab3 = false;
}
else
{
    if attack == AT_DSTRONG and window < 3 and taunt_down
    {
        set_hitbox_value(attack,2,HG_HIT_SFX,sound_get("tmon_slap"))
        set_hitbox_value(attack,3,HG_HIT_SFX,sound_get("tmon_slap"))
    }
}

//#endregion

// if(state == PS_DOUBLE_JUMP)
//     {if(state_timer <7 && state_timer >= 3){
//         vsp -= 2.8
//     }
//     if(state_timer >= 7 && state_timer < 19){
//         vsp -= 0.7
//     }
//     if(state_timer >= 19){
//         vsp  -= .1
//     }
// }

// if(state == PS_DOUBLE_JUMP){
//     if(state_timer == 1){
//         if((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down)){ // direction flip
//             spr_dir *= -1;
//         }
//     }
//     doublej_hsp = hsp; // store horizontal speedl
// }

// if(state == PS_AIR_DODGE){
//     if(abs(hsp) < abs(doublej_hsp)){ // check if 
//         hsp = doublej_hsp*spr_dir;              //set to old doubejump speed
//     }
// }

//#region Crouch
if(state == PS_CROUCH){
    if(image_index > 3 || image_index < 13){
        crouch_anim_speed = 0.2
    }else{
        crouch_anim_speed = 0.00005
    }
}

//#endregion

//#region Uspecial

if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){ //reset angle after uspecial
    if(attack != AT_USPECIAL){
        if(spr_angle != 0){
            spr_angle = 0;
            
        }
        
        
        //uspec_spin_dir = 0;
        //uspec_spin_old = 0;
    }
    //sprite_change_offset("uspecial", 64, 94);
    if(hurtboxID.image_angle != 0){
        hurtboxID.image_angle = 0;
    }   
}

if (!free || state == PS_WALL_JUMP)  {
	uspecBan = false;
	fspecial_air_count = 0;
}
if (uspecBan) move_cooldown[AT_USPECIAL] = 2;

//#endregion

// // hatless speed change
if instance_exists(hat_object) {
    dash_speed = hatless_dash_speed;
    initial_dash_speed = hatless_initial_dash_speed;
} else {
    dash_speed = base_dash_speed;
    initial_dash_speed = base_initial_dash_speed;
}

//funny parry effect
if state == PS_PARRY && state_timer == 1 {
    //spawn_hit_fx(x,y-45,fx_parry)
}

//Make hatted person be in the hat (tm)
if (hatted_id != undefined) {
    hatted_id.x = x;
    hatted_id.y = y - 10;
    hatted_id.hsp = 0;
    hatted_id.vsp = 0;
    hatted_id.state = PS_HITSTUN;
    hatted_id.visible = false;
}

if(introTimer2 < 3)
    introTimer2++
else if(state == PS_SPAWN)
{
    introTimer2 = 0;
    introTimer++;
    if(introTimer == 9)
        sound_play(sound_get("ftilt"));
    if(introTimer == 23)
        sound_play(sound_get("clyde_2"));
}