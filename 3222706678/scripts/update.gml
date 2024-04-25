//B - Reversals

//sound_play( sound_get( "step2" ) );

//Rune stuff !
if (state == 25 && state_timer == 1) {
    //set weight to normal with Rune A
    if (has_rune("A")) {
        knockback_adj = 1;
    }
    //make all the meat fly at once with Rune B
    if (has_rune("B")) {
        set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 8);
        set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 8);
        set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 8);
        set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 2);
        
    }
    //get wibbly wobbly with Rune C
    if (has_rune("C")) {
        air_accel = 3;
        air_max_speed = 6;
    }
    //extend sweetspots with Rune D
    if (has_rune("D")) {
        set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 10);
        set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 10);
        set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 15);
        set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 10);
        set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 18);
        set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 10);
    }
    //be flat as Hell with Rune E
    if (has_rune("E")) {
        crouchbox_spr = sprite_get("hurtbox_crouch2");
    }
    //take to the skies with Rune F
    if (has_rune("F")) {
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -1.8);
    }
    //save your fall with Rune G
    if (has_rune("G")) {
        set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 1);
    }
    //be the hurricane with Rune J
    if (has_rune("J")) {
        set_hitbox_value(AT_DTILT, 2, HG_GROUNDEDNESS, 0);
        set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 7);
        set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
        set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
        set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.3);
        set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 194);
        set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
        set_hitbox_value(AT_DTILT, 2, HG_THROWS_ROCK, 0);
        
        set_hitbox_value(AT_UAIR, 3, HG_GROUNDEDNESS, 0);
        set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 3);
        set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0);
        set_hitbox_value(AT_UAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
        set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.3);
        set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 194);
        set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
        set_hitbox_value(AT_UAIR, 3, HG_THROWS_ROCK, 0);
        
        set_hitbox_value(AT_UAIR, 4, HG_GROUNDEDNESS, 0);
        set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 8);
        set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0.3);
        set_hitbox_value(AT_UAIR, 4, HG_HITSTUN_MULTIPLIER, 1);
        set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0.3);
        set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 194);
        set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
        set_hitbox_value(AT_UAIR, 4, HG_THROWS_ROCK, 0);
        
        set_hitbox_value(AT_USPECIAL, 3, HG_GROUNDEDNESS, 0);
        set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 9);
        set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
        set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
        set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.3);
        set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 194);
        set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
        set_hitbox_value(AT_USPECIAL, 3, HG_THROWS_ROCK, 0);
        
    }
    //it's raining meatballs? with Rune K
    if (has_rune("K")) {
        set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 310);
        set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 310);
        set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 310);
    }
    //go crazy, go stupid with Rune M
    if (has_rune("M")) {
        set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 1);
        set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 2);
        set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 12);
        
        set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 2);
        set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 14);
        
        set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 3);
        set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 16);
    }
    //unleash your judgement with Rune N
    if (has_rune("N")) {
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 15); //ONE
        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 12); //TWO
        set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 3);
        set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 280); //TWO (AIR)
        set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
        set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
        set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.6);
        set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8); //THREE
        set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 12); //FOUR
        set_hitbox_value(AT_FSPECIAL, 5, HG_EXTRA_HITPAUSE, 20);
        set_hitbox_value(AT_FSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1.4);
        set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 5); //FIVE
        set_hitbox_value(AT_FSPECIAL, 10, HG_DAMAGE, 15); //FIVE (FINAL)
        set_hitbox_value(AT_FSPECIAL, 10, HG_EXTRA_HITPAUSE, 10);
        set_hitbox_value(AT_FSPECIAL, 11, HG_KNOCKBACK_SCALING, 1.3); //SIX
        set_hitbox_value(AT_FSPECIAL, 13, HG_EFFECT, 0); //EIGHT
        set_hitbox_value(AT_FSPECIAL, 13, HG_EXTRA_HITPAUSE, 120);
        set_hitbox_value(AT_FSPECIAL, 14, HG_EXTRA_HITPAUSE, 120); //EIGHT (AIR)
        set_hitbox_value(AT_FSPECIAL, 15, HG_WIDTH, 999); //NINE
        set_hitbox_value(AT_FSPECIAL, 15, HG_HEIGHT, 999);
    }
}


//enable the EXP Bar if runes are on
if (state == 25) {
    if ( get_match_setting( SET_RUNES ) == 1 ) {
        abyssmode = 1;
    }
}
// sometimes heals damage when obtaining an exp rock in abyss mode
if (xp_timer == 2) {
    if ( random_func(0, 8, true) == 1 ) {
        take_damage( player, -1, -1 );
    }
}

//idle fidgets
if (state == 24) {
//fidget autoset
if (state_timer == 0) { 
    fidget = 1;
}
//fidget set
if (state_timer == 44) { 
    if (random_func( 0, 7, true ) == 6) {
        if (random_func( 1, 2, true ) == 1) {
            fidget = 2;
        } else {
            fidget = 3;
        }
    }
}
//reset fidget
if (state_timer == 91 || state_timer == 182) { 
    fidget = 1;
    state_timer = 0;
}
}

//fast crouching
if (state == 32) {
//fast tocrouch
if (state_timer == 0) { 
    sound_play( sound_get( "crouchto" ) );
    state_timer = 6;
}
//fast uncrouch
if (!down_down) { 
    sound_play( sound_get( "crouchfrom" ) );
    state = 24;
    state_timer = 0;
}
}

//walkturn sounds
if (state == 20) {
//turn sound 1
if (state_timer == 0) {
    sound_play( sound_get( "step1" ) );
}
//turn sound 2
if (state_timer == 5) {
    sound_play( sound_get( "step2" ) );
}
}

//walking
if (state == 26) {
    //start
    if (state_timer == 0) {
        sound_play( sound_get( "step2" ) );
    }
    //footstep 1
    if (state_timer == 15) {
        sound_play( sound_get( "step1" ) );
    }
    //footstep 2
    if (state_timer == 29) {
        sound_play( sound_get( "step2" ) );
    }
    //footstep 3
    if (state_timer == 43) {
        sound_play( sound_get( "step1" ) );
    }
    //footstep 4
    if (state_timer == 58) {
        sound_play( sound_get( "step2" ) );
    }
    //loop
    if (state_timer == 72) {
        sound_play( sound_get( "step1" ) );
        state_timer = 15;
    }
}
//running
if (state == 23) {
    //footstep 1
    if (state_timer == 0) {
        sound_play( sound_get( "step1" ) );
    }
    //footstep 2
    if (state_timer == 8) {
        sound_play( sound_get( "step2" ) );
    }
    //footstep 3
    if (state_timer == 16) {
        sound_play( sound_get( "step1" ) );
    }
    //footstep 4
    if (state_timer == 24) {
        sound_play( sound_get( "step2" ) );
    }
    //dash loop
    if (state_timer == 31) {
        sound_play( sound_get( "step1" ) );
        state_timer = 0;
    }
}

//dash sound
if (state == 22 && state_timer == 0) {
    sound_play( sound_get( "dash" ) );
}
//dash turn sound
if (state == 29 && state_timer == 0) {
    sound_play( sound_get( "dash_stop" ) );
}
//dash stop sound
if (state == 27 && state_timer == 2) {
    sound_play( sound_get( "dash_halt" )) ;
}

//double jumped for falling animation
if (state == 2 && state_timer == 0) {
    djumped = 1;
}
//reset djumped
if (!free && djumped == 1 || state_cat == 46 && djumped == 1) {
    djumped = 0;
}

//walljump sound
if (state == 16 && state_timer == 0) {
    sound_play( sound_get( "land" ) );
}

//rolling sounds
if (state < 37 && state > 32) {
    //step 1
    if (state_timer == 0) {
        sound_play( sound_get( "step2" ) );
    }
    //step 2
    if (state_timer == 8) {
        sound_play( sound_get( "step1" ) );
    }
    //step3
    if (state_timer == 13) {
        sound_play( sound_get( "step2" ) );
    }
}

//play land sound on landing lag
if (state == 19 && state_timer == 0 && !hitpause) {
    sound_play( sound_get( "land" ) );
}

//death sound
if (state == 14 && state_timer == 0) {
    sound_play( sound_get( "death" ) );
}

//reset max_air_speed after uspecial changes it
if (state != 5) {
    air_max_speed = 5.2;
}

//preventing using infinite up specials
if (parachuted == 1) {
    //put it on cooldown
    move_cooldown[AT_USPECIAL] = 5;
    //remove it from cooldown if you get hit or touch the ground
    if (state_cat == 4 || !free || state == 16 || state == 14) {
        parachuted = 0;
        move_cooldown[AT_USPECIAL] = 0;
    }
}

//reset bucket brake
if (nobrakes == 1) {
    if (!free || state == 14) {
        nobrakes = 0;
    }
    if (state_cat == 4 && has_rune("G")) {
        nobrakes = 0;
    }
}

//activate bucket brake during hitstun
if (has_rune("G") && state == PS_HITSTUN && !hitpause && free) {
    if (down_down && special_pressed && oilfill != 0) {
        set_state(PS_ATTACK_AIR);
        attack = AT_DSPECIAL;
        oilfill -= 1;
        oildamage = oildamage * 0.4;
        //empty the tank fully if using Rune I
        if (has_rune("I")) {
            oilfill = 0;
            oildamage = 0;
        }
    }
}

//Rune O's hud element management
if (has_rune("O")) {
    if (move_cooldown[AT_TAUNT] != 0) {
        bellcooldown = 1;
    }
    if (move_cooldown[AT_TAUNT] == 0 && bellcooldown == 1) {
        bellcooldown = 0;
    }
}

    