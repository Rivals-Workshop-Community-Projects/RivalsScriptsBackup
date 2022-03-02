//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//grab confirm - - - - -
if (attack == AT_JAB ) {
    if (window_timer > 5) {
        dashstopping = 0;
    }
    if (window == 2 && has_hit && window_timer >= 3) {
    window = 4;
    window_timer = 0;
    }
    if (window == 3 && window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH)) {
        set_state( PS_IDLE );
    }
}

//dashgrab functionality
if (attack == AT_JAB && window == 1 && window_timer <= 2 && dashstopping == 1 ){
    hsp = hsp+spr_dir*1.7 ;
}

//dtilt stuff - - - - -
if (attack == AT_DTILT && window == 3 && window_timer == 1 ) {
    shake_camera( 4, 2 );
}

if (attack == AT_DTILT){
    if (window == 4){
        free = true;
    }
}

//dash attack flying - - -
if (attack == AT_DATTACK){
    can_fast_fall = false;
    can_move = false;
    can_wall_jump = true;
    if (window == 2){
        free = true;
        if (up_down){
            vsp -= 0.3
        }
        if (down_down){
            vsp += 0.3
        }
    }
}

//strong voices
if (attack == AT_FSTRONG && window == 3 || attack == AT_DSTRONG && window == 3 ){
    if (window_timer == 1 && random_func(0,2,true) == 1){
        sound_play(sound_get("rvx_zun"));
    }
}
if (attack == AT_USTRONG && window == 2){
    if (window_timer == 1 && random_func(0,2,true) == 1){
        sound_play(sound_get("rvx_woah"));
    }
}

//ustrong ending - - -
if (attack == AT_USTRONG){
    if (window == 9){
        free = true;
    }
}

//air jab - - - - - - -
if (attack == AT_NAIR ) {
    if (window >= 4){
        can_move = false;
    }
    if (window == 2 && has_hit && window_timer >= 3) {
    vsp *= 0.5;
    hsp *= 0.5;
    window = 4;
    window_timer = 0;
    }
    if (window == 3 && window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH)) {
        set_state( PS_IDLE_AIR );
    }
}

//fair bounce - - - - - -
if (attack == AT_FAIR && window == 2 && has_hit && vsp > -2){
    if (window_timer > 4 || window_timer < 6){
        vsp -= 1.5;
    }
}

//air grab up - - - - -
if (attack == AT_UAIR) {
    if (window == 2 && has_hit && window_timer >= 3){
        window_timer = 0;
        window = 5;
    }
    if (window == 4 && window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH)){
        set_state( PS_IDLE_AIR );
    }
}

//fspecial no moving
if (attack == AT_FSPECIAL){
    can_fast_fall = false;
    if (window == 6){
        can_move = true;
    }
    else can_move = false;
    if (window > 1) {
        can_wall_jump = true;
    }
}

//dspecial shenans
if (attack == AT_DSPECIAL){
    if (!free){
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, -3);
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -10);
    }
    else {
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, -3);
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -6);
    }
    can_fast_fall = false;
    if (window == 7 && window_timer >= 4) {
        can_move = true;
    }
    else can_move = false;
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2 || window == 3) {
        fall_through = 1;
    }
    if (window == 3){
        if (!free) {
            destroy_hitboxes();
            free = true;
            vsp = -6;
            hsp = 5*spr_dir;
            window = 7;
            window_timer = 0;
        }
        if (has_hit && !hitpause || hsp == 0 && free && !hitpause) {
            destroy_hitboxes();
            window = 4;
            window_timer = 0;
        }
        if (window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH)){
            if (times_through < 3){
                times_through++;
                window_timer = 0;
            }
            else {
                window = 8;
                window_timer = 0;
            }
        }
    }
    if (window == 4) {
            if (window_timer == 1) {
                vsp = -8;
                hsp = -3*spr_dir;
            }
    }
    if (window == 6 && window_timer == get_window_value(attack, 6, AG_WINDOW_LENGTH)) {
            set_state ( PS_IDLE_AIR );
        }
    if (window == 7 && window_timer == get_window_value(attack, 7, AG_WINDOW_LENGTH)) {
        set_state( PS_PRATFALL );
    }
}

//i hate dust. i dont want it building up in my home. sooner or later you'll have an army of dust bunnies, plotting to take over.
if (attack == AT_DATTACK){
    if (window == 2 || window == 3){
        if (window_timer == 1 || window_timer == 5){
            spawn_dust_fx( x-30*spr_dir, y-27, sprite_get("sparkle"), 9 );
        }
    }
}
if (attack == AT_DSPECIAL && window == 3){
    if (window_timer == 1 || window_timer == 5){
        spawn_dust_fx( x, y-27, sprite_get("sparkle"), 9 );
    }
}
if (attack == AT_FSPECIAL){
    if (window > 1 && window < 6){
        if (window_timer == 1 || window_timer == 5){
            spawn_dust_fx( x-30*spr_dir, y-27, sprite_get("sparkle"), 9 );
        }
    }
}

if (attack == AT_USPECIAL){
    if (window > 3 && window < 7){
        if (window_timer == 2 || window_timer == 8){
            spawn_dust_fx( x-15*spr_dir, y-27, sprite_get("sparkle"), 9 );
        }
    }
}

if (attack == AT_USPECIAL_2){
    if (window == 4){
        if (window_timer == 3){
            spawn_dust_fx( x+80*spr_dir, y-30, sprite_get("sparkle"), 9 );
        }
        if (window_timer == 7){
            spawn_dust_fx( x+50*spr_dir, y-80, sprite_get("sparkle"), 9 );
        }
        if (window_timer == 12){
            spawn_dust_fx( x-10*spr_dir, y-70, sprite_get("sparkle"), 9 );
        }
    }
    if (window == 5){
        if (window_timer == 2){
            spawn_dust_fx( x-30*spr_dir, y-20, sprite_get("sparkle"), 9 );
        }
        if (window_timer == 6){
            spawn_dust_fx( x+10*spr_dir, y+30, sprite_get("sparkle"), 9 );
        }
        if (window_timer == 11){
            spawn_dust_fx( x+50*spr_dir, y+20, sprite_get("sparkle"), 9 );
        }
    }
}

//up special
if (attack == AT_USPECIAL){
    can_fast_fall = false;
    if (window > 5 || window == 1) {
        can_move = true;
    }
    else can_move = false;
    if (window == 1) {
        times_through = 0;
        vsp = vsp*0.6;
        hsp = hsp*0.6;
    }
    if (window == 3 && window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH)) {
        set_attack( AT_USPECIAL_2 );
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
        window = 1;
        window_timer = 0;
    }
    if (window == 4) {
        if (window_timer == 1){
            spr_dir = turnlock;
        }
        
        vsp = -8
        hsp = 6*turnlock;
        if (window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH)){
            if (times_through < 1){
                times_through++;
                window_timer = 0;
            }
            else {
                window = 5;
                window_timer = 0;
            }
        }
    }
}

if (attack == AT_USPECIAL_2){
    can_move = false;
    can_fast_fall = false;
    if (window == 2) {
        turnlock = spr_dir;
    }
    if (window == 5 && window_timer == get_window_value(attack, 5, AG_WINDOW_LENGTH)) {
        set_attack( AT_USPECIAL );
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
        window = 4;
        window_timer = 0;
        x += 94*spr_dir;
        y += 5;
    }
}

//oh boy here we go - - - -

//failsafes for bonking a wall/enemies suddenly dying
if (attack == AT_NSPECIAL ){
    can_fast_fall = false;
    if (window == 4){
        fall_through = 1;
        if (window_timer > 5 && vsp == 0.52 && hsp == 0 && !hitpause || state_timer > 45) {
            set_state( PS_HITSTUN );
            sound_play(sound_get("rvx_whoops"));
        }
    }
}
if (attack == AT_UTHROW || attack == AT_DTHROW ){
    can_fast_fall = false;
    if (window == 3){
        fall_through = 1;
        if (window_timer > 5 && vsp == 0.52 && hsp == 0 && !hitpause || state_timer > 45) {
            set_state( PS_HITSTUN );
            sound_play(sound_get("rvx_whoops"));
        }
    }
}
if (attack == AT_FTHROW || attack == AT_NTHROW){
    can_fast_fall = false;
    if (window == 3){
        fall_through = 1;
        if (window_timer > 1 && hsp == 0 && !hitpause || state_timer > 45) {
            set_state( PS_HITSTUN );
            sound_play(sound_get("rvx_whoops"));
        }
    }
}

//reset values
if (attack == AT_NSPECIAL){
    if (window == 1 && window_timer == 1){
        grabbedx = 0;
        grabbedy = 0;
        diagx = 0;
        diagy = 0;
        grabbed = 0;
        dingdong = 0;
    }
    //what grab we doin
    if (window == 1 && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)) {
        if (spr_dir == 1 && left_down && !right_down) {
            spr_dir = -1;
        }
        if (spr_dir == -1 && right_down && !left_down) {
            spr_dir = 1;
        }
        if (up_down && !down_down) {
            if (!left_down && !right_down){
                set_attack( AT_UTHROW );
                hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                window = 0;
                window_timer = 0;
            }
            else {
                set_attack( AT_FTHROW );
                hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                window = 0;
                window_timer = 0;
            }
        }
        else if (free && down_down && !up_down){
            if (!left_down && !right_down){
                set_attack( AT_DTHROW );
                hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                window = 0;
                window_timer = 0;
            }
            else {
                set_attack( AT_NTHROW );
                hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                window = 0;
                window_timer = 0;
            }
        }
    }
    //end of what grab we doin
    if (window == 3 && window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH)) {
        set_state( PS_HITSTUN_LAND )
    }
    if (window == 4) {
        if (window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH)){
            free = true;
            window_timer = 0;
        }
        if (dingdong == 1 && !hitpause) {
            destroy_hitboxes();
            set_attack( AT_NSPECIAL_2 );
            hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
            window = 1;
            window_timer = 0;
            vsp = -8;
            hsp = -3*spr_dir;
        }
    }
}
if (attack == AT_UTHROW || attack == AT_DTHROW || attack == AT_FTHROW || attack == AT_NTHROW){
    if (window == 2 && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)) {
        set_state( PS_HITSTUN_LAND );
    }
    if (window == 3){
        if (window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH)){
            free = true;
            window_timer = 0;
        }
    }
        if (dingdong == 1 && !hitpause) {
            destroy_hitboxes();
            set_attack( AT_NSPECIAL_2 );
            hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
            window = 1;
            window_timer = 0;
            vsp = -8;
            hsp = -3*spr_dir;
        }
}