// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//This splits dspecial air into 2 moves, the one that makes you jump and the one that smacks the ground

if (attack == AT_DSPECIAL_AIR) {
    
    can_fast_fall = false;
    
    if (window == 2) {
        if (window_timer >= 13) {
            can_jump = true;
            can_wall_jump = true;
            can_shield = true;
        }
        if (has_hit_player = true) {
            can_fast_fall = true;
            window = 6;
        }
    }
    if (window == 5) {
        set_state(PS_IDLE);
    }
}

//Dair
if (attack == AT_DAIR) {
    
    through_platforms = 100;
    destroyed = true;
    
    if (place_meeting(x, y + 1, asset_get("par_block")) && window >= 2) {
        destroyed = true;
    }
}

//Cooldown on bow
if (attack == AT_FSPECIAL) {
    move_cooldown[AT_FSPECIAL] = 100;
}

//Upspecial
if (attack == AT_USPECIAL && !joy_pad_idle) {
    
    //This moves the player around
    if (window == 4) {
        vsp = (dsin(joy_dir) * -50);
        hsp = (dcos(joy_dir) * 50);
    
        //If you hit someone, you drag them with you
        if (has_hit_player && canBeDragged) {
            hit_player_obj.x = x;
            hit_player_obj.y = y;
            uspecialDrag = true;
        }
    }
    
    //If you hit someone, you regain uspecial
    if (window == 6 && uspecialDrag == true) {
        uspecialDrag = false;
        canBeDragged = false;
        set_state(PS_IDLE_AIR);
    }
}

//Ftilt
if (attack == AT_FTILT) {
    if (has_hit_player == true && window < 5) {
        can_jump = true;
        can_tap_jump = true;
    }
}

//Dstrong
if (attack == AT_DSTRONG) {
    if (window == 5) {
        x += 55 * spr_dir;
    }
}


