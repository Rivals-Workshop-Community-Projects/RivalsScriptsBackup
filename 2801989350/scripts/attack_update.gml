// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_USPECIAL_2 || attack == AT_FSPECIAL_AIR) {
    trigger_b_reverse();
}

//Switch Cycle

if (attack == AT_NSPECIAL) {
    if (cycle == 0 && window == 3 && window_time_is(5) ) {
        cycle += 1 + old_cycle;
        old_cycle = 0;
    }
    if (cycle > 0 && cycle <= 2 && window == 3 && window_time_is(4) ) {
        cycle += 1;
    }
    if (cycle == 3) {
        cycle = 1;        
    }
}

//Dtilt Jump Cancel

if (attack == AT_DTILT) {
    if (window == 2 && window_timer < 7) {
        can_jump = true;
    } else {
        can_jump = false;
    }
}

//Nspecial Jump Cancel

if (attack == AT_NSPECIAL) {
    if (window == 1 && window_timer >= 15 || window == 2) {
        can_jump = true;
    } else {
        can_jump = false;
    }
}

//Dair Bounce

if (attack == AT_DAIR) {
    if (dairHitPlayer == true) {
        if (window == 2) {
            window = 4;
            window_timer = 0;
        }
        if (window == 4) {
            if (window_timer >= 1) {
                vsp = -9;
                dairHitPlayer = false;
            }
        }
    }
}

//DACUS

if (attack == AT_DATTACK) {
    if (window == 2 && window_timer <= 9) {
        can_ustrong = true;
    } else {
        can_ustrong = false;
    }
}

//Ustrong turn around

if (attack == AT_USTRONG) {
    if (window == 4 && window_time_is(18) ) {
        spr_dir = -spr_dir;
    }
}

//Dstrong turn around

if (attack == AT_DSTRONG) {
    if (window == 4 && window_time_is(21) ) {
        spr_dir = -spr_dir;
    }
}


//Nspecial

if (old_cycle == 0 || old_cycle == 2) {
    set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
    set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
}
if (old_cycle == 1) {
    set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_3"));
    set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_3"));
}
if (attack == AT_NSPECIAL) {
    if (window == 3 && window_time_is(5) ) {
        new_timer = 120;
    }
    if (window == 3) {
        super_armor = true;
    } else {
        super_armor = false;
    }
}

//Fspecial

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
    //Change to aerial/grounded version if free/not free
    if (attack == AT_FSPECIAL_AIR && window < 3 && !free){
        attack = AT_FSPECIAL;
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    }
    if (attack == AT_FSPECIAL && window < 3 && free){
        attack = AT_FSPECIAL_AIR;
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    }
    //Variable reset
    can_fast_fall = false;
    if (window == 1 && window_time_is(1) ){
        moved_up = false;
        should_swing = false;
        set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_VSPEED, -7);
    }
    if (window == 2){
        //Moving up a bit if at the ledge
        if (!moved_up){
            if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
                for (var i = 0; i < 20; i++){
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                        y -= i;
                        moved_up = true;
                        break;
                    }
                }
            }
        }
        //Transition into 2nd Hit
        if (should_swing){
            destroy_hitboxes();
            window = 4;
            window_timer = 0;
            has_hit = false;
            has_hit_player = false;
        }
    }
    
    if (window < 3 || (window == 3 && !free) || window == 4){
        can_move = false;
    }
    
    can_wall_jump = false;
    if (window == 2 || window == 3 || window == 5 || window == 6) {
        can_wall_jump = true;        
    }
}

//Next window & other stuff for aerial version
if (attack == AT_FSPECIAL) {
    if (window == 4 && window_time_is(2) ) {
        window = 5;
        window_timer = 0;
    }
    if (window == 5 && window_time_is(6) ) {
        window = 6;
        window_timer = 0;
    }
}

if (attack == AT_FSPECIAL_AIR) {
    if (window == 1 && window_timer < 8) {
        clear_button_buffer( PC_SPECIAL_PRESSED );
        can_jump = true;
    } else {
        can_jump = false;
    }
    if (window == 4 && window_time_is(5) ) {
        window = 5;
        window_timer = 0;
    }
}

//Uspecial 2

if (attack == AT_USPECIAL_2 && cycle == 1) {
    if (window != 5) {
        hud_offset = 60;
    }
    if (window == 4) {
        fairyTimer -= 1;
        can_fast_fall = false;
        can_wall_jump = true;
        if (shield_pressed == true || fairyTimer == 0) {
            window = 6;
            window_timer = 0;
            with (asset_get( "obj_article1" )) {
                if (player == other.player) {
                    state = 0;
                    state_timer = 0;
                    x = player_id.x;
                    y = player_id.y-80
                }
            }
            destroy_hitboxes();
        }
        if (down_down) {
            set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, 7.5);
        } else {
            set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, 1.5);
        } 
    }
    else {
        can_fast_fall = true;
    }
    if (window == 5 && window_time_is(0) ) {
        destroy_hitboxes();
    }
    if (window == 5 && window_time_is(8) ) {
        hud_offset = 50;
        fairyTimer = 300;
    }
}

//Uspecial

if (attack == AT_USPECIAL) {
    if (window == 1 && window_time_is(1) ) {
        if (fairy == false) {
            with (asset_get( "obj_article1" )) {
                if (player == other.player) {
                    if (point_distance(x, y, other.x, other.y) <= 50) {
                        state = 9;
			            state_timer = 0;
                        with (other) {
                            set_attack( AT_USPECIAL_2 );
                            fairy = true;
                        }
                    }
                }
            }
        }
    }
}

//Nspecial 2

if (attack == AT_NSPECIAL_2) {
    if (fairy == true) {
        if (window == 1 && window_time_is(1) ) {
            with (asset_get( "obj_article1" )) {
                if (player == other.player) {
                    if (state == 0) {
                        state = 0.5;
                        state_timer = 0;
                    }
                }
            }
            throwing = 1;
            fairy = false;
        }
    }
}
if (attack == AT_FTHROW) {
    if (window == 1 && window_time_is(5) ) {
        with (asset_get("obj_article1") ) {
            if (player == other.player) {
                throwX = other.throwX;
                throwY = other.throwY;
                throwHSP = other.throwHSP;
                throwVSP = other.throwVSP;
                if (state == 0.5) {
                    x += 15*spr_dir
                    y -= 30;
                    state = 1;
                    state_timer = 0;
                }
            }
        }
        throwing = 0;
    }
}
if (attack == AT_UTHROW) {
    if (window == 1 && window_time_is(5) ) {
        with (asset_get("obj_article1") ) {
            if (player == other.player) {
                throwX = other.throwX;
                throwY = other.throwY;
                throwHSP = other.throwHSP;
                throwVSP = other.throwVSP;
                if (state == 0.5) {
                    y -= 30;
                    state = 1;
                    state_timer = 0;
                }
            }
        }
        throwing = 0;
    }
} 
if (attack == AT_DTHROW) {
    if (window == 1 && window_time_is(5) ) {
        with (asset_get("obj_article1") ) {
            if (player == other.player) {
                throwX = other.throwX;
                throwY = other.throwY;
                throwHSP = other.throwHSP;
                throwVSP = other.throwVSP;
                if (state == 0.5) {
                    y += 30;
                    state = 3;
                    state_timer = 0;
                }
            }
        }
        throwing = 0;
    }
} 

if (cycle == 1 && new_timer == 120) {
    instance_create(x-(40*spr_dir), y-30, "obj_article1");
}

if (attack == AT_USPECIAL_2 && window == 1 && window_time_is(1) ) {
    with (asset_get( "obj_article1" )) {
        if (player == other.player) {
			state = 9;
			state_timer = 0;
        }
    }
    if (window == 4) {
        with (asset_get( "obj_article1" )) {
			if (player == other.player) {
                state = 0;
                state_timer = 0;
            }
        }
    }
}

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_USPECIAL || attack == AT_USPECIAL_2 || attack == AT_DSPECIAL) {
    if (window == 1) {
        clear_button_buffer(PC_SPECIAL_PRESSED);
    }
}

//Dspecial

if (attack == AT_DSPECIAL) {
    if (has_hit == true) {
        if (window == 2) {
            can_jump = true;
        }
    }
}

if (attack == AT_TAUNT) {
    if (cycle == 1) {
        hud_offset = 90;
    }
    if (window == 1 && window_time_is(1) ) {
        with (asset_get( "obj_article1" )) {
            if (player == other.player) {
                state = 17;
                state_timer = 0;
            }
        }
    }
}

//debug draw remove
if (attack == AT_TAUNT && special_down) {
    if (drawDebug == -1) {
        drawDebug = 60;
    }
    if (drawDebug == 1) {
        drawDebug = -60;
    }
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion