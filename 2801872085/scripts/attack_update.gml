//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//attack_update.gml

//The main teleportation logic. You can place this anywhere in the script.
if(attack == AT_USPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL) {
    move_cooldown[AT_USPECIAL] = 60;
    move_cooldown[AT_DSPECIAL] = 60;
    move_cooldown[AT_FSPECIAL] = 60;
    can_fast_fall = 0; //Prevent the player from accidentally fast falling during the move.
    
    //Startup Logic
    if(window == 1) {
        if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {    //Check to see if the window is at its end.
            var tp_angle = 0;   //The angle at which the teleport will go.
            if(!joy_pad_idle) { //Set the angle to the direction held on the joystick if a direction is being held.
                tp_angle = joy_dir;
            }
        
            var tp_dist_x = lengthdir_x(tp_dist, tp_angle); //The x and y components of the vector that will be added to
            var tp_dist_y = lengthdir_y(tp_dist, tp_angle); //the player's location.
            
            x_ = x + tp_dist_x; //The coordinates of the desired teleportation destination.
            y_ = y + tp_dist_y;
        }
    }
    
    //Teleportation Logic
    if(window == 2) {
        if(window_timer == 3) { //Teleport during the first frame of the active window.
            
            //Change the player's location to the teleport destination.
            x = x_;
            y = y_;
        }
    }
}


if (attack == AT_NSPECIAL){
    can_fast_fall = 0; //Prevent the player from accidentally fast falling during the move.
    move_cooldown[AT_NSPECIAL] = 180;
    if (window = 2 && window_timer = 1 && spr_dir = -1){
        x += (-80 * spr_dir);
    }
    
    if (window = 2 && window_timer = 1 && spr_dir = 1){
        x -= (80 * spr_dir);
    }
}

//-------------------------------------------------------------------------------------------------------------



if (attack == AT_FSTRONG){
    if (window = 2 && window_timer = 15){
        x += (200 * spr_dir);
    }
    
    if (window == 4 && window_timer == 21 && !has_hit){
    spr_dir *= -1
    }
    if (window == 4 && window_timer == 21 && has_hit){
    spr_dir *= -1
    }
}

//-----------

if (attack == AT_USTRONG){
    if (window = 2 && window_timer = 1 && spr_dir = -1){
        y += (100 * spr_dir);
    }
    
    if (window = 2 && window_timer = 1 && spr_dir = 1){
        y -= (100 * spr_dir);
    }
/*    if (window == 4 && window_timer == 12){
      set_state(PS_PRATFALL);    
    }               (For later nefes if really needed) */         
}


if (attack == AT_DSTRONG){
    if (window = 3 && window_timer = 1){
        sound_play(asset_get("sfx_swipe_medium2"));
    }
}

//-------------------------------------------------------------------------------------------------------------

if (attack == AT_DAIR){
    if (window = 2 && window_timer = 1 && spr_dir = -1){
        y += (80 * spr_dir);
    }
    
    if (window = 2 && window_timer = 1 && spr_dir = 1){
        y -= (80 * spr_dir);
    }
    
    if (window = 3 && has_hit){
        window = 4;
        window_timer = 0;
    }
    if (window = 3 && window_timer = 6  && !has_hit){
        window = 3;
        window_timer = 1;
    }
}

// (Dev-info; Maybe add Damagescaling on a chargemove)
if (attack == AT_FAIR){
    can_fast_fall = 0; //Prevent the player from accidentally fast falling during the move.
    if (window = 1 && window_timer = 12){
        if (attack_down){
        window = 4;
        window_timer = 1;
        }
    }
    if (window = 4){
        if (attack_down == false){
        window = 2;
        window_timer = 1;
        sound_play(asset_get("sfx_swipe_weak2"));  
        }
    }
    if (window = 4 && window_timer = 12){
        sound_play(sound_get("Glich3.2"));
    }
    if (window = 4 && window_timer = 23){
        window = 5;
        window_timer = 1;
        sound_play(asset_get("sfx_swipe_heavy1"));  
    }
    
    if (window = 5 && window_timer == 8){
        window = 3;
        window_timer = 1;
    }
    
    if (window = 3 && window_timer == 8){
    move_cooldown[AT_USPECIAL] = 30;
    move_cooldown[AT_DSPECIAL] = 30;
    move_cooldown[AT_FSPECIAL] = 30;
    }
}


//-------------------------------------------------------------------------------------------------------------

if (attack == AT_UTILT){

    if (window = 2 && has_hit == true){
        window = 3;
        window_timer = 0;
    }
}

//-------------------------------------------------------------------------------------------------------------

if (attack == AT_JAB){  
    if (was_parried = true) {
    was_parried = false;}
    }