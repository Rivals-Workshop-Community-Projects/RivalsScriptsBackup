//set_attack

fennek_uspec_grab = noone;
uspec_should_tether = false;
uspec_grabbed_lamp = false;
uspec_lamp_id = noone;
uspec_did_grab_lamp = false;
did_hit = false;
reset_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE);
reset_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH);

fspec_grounded = !free;

// if get_window_value(AT_USTRONG, 3, AG_WINDOW_SFX) == asset_get("sfx_shovel_hit_med2") set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_blow_heavy1"));
// else set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_hit_med2"));

if(instance_exists(lamp) && lamp.state == 1 && lamp.state_timer >= 10 && attack == AT_DSPECIAL && move_cooldown[AT_DSPECIAL_2] <= 0){
    attack = AT_DSPECIAL_2;
}

set_num_hitboxes(AT_FSPECIAL, 4);
reset_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED);

if(attack == AT_DAIR){
    set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, min(-7, vsp));
}

if (instance_exists(axe) && attack==AT_NSPECIAL && axe.state == 2){
    attack=AT_NSPECIAL_2;
    // axe.return_hit=1;
}


//Slide Jump Landing Lag
if(attack == AT_DTILT){
    reset_attack_value(AT_DTILT, AG_CATEGORY);
        // reset_attack_value(42,AG_CATEGORY);
}

//Up Special in the ground
// if (attack == AT_USPECIAL or attack == AT_USPECIAL_GROUND){

//   if (free){
//     attack = AT_USPECIAL;
//   } else {
//     attack = AT_USPECIAL_GROUND;
//   }
// }

if(attack == AT_USPECIAL){
    uspec_grounded = !free;
}


// if (attack == AT_DSPECIAL){
//     attack = (43);
// }

/*
if (attack == AT_NAIR){
    attack = (46);
}*/