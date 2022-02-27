/* 
*                       --------- update.gml ---------
*  This file is called every frame regardless of what your character is doing.
*  Any code that affects gameplay and needs to run while the character is attacking
*  should be placed in this file.
*
*  If you want to change things about attacks, use attack_update.gml
*  If you want to change things about hitboxes, use hitbox_update.gml
*
*-----------------------------------------------------------------------------*/

//dashgrabs - - - -
if (state == PS_DASH_STOP || state == PS_DASH_TURN) {
    if !(up_down || down_down || left_down || right_down) {
    can_attack = true;
    if (attack_pressed) {
        set_attack( AT_JAB );
        }
    }
    else {
        can_attack = false;
    }
}

if (state == PS_DASH_STOP || state == PS_DASH) {
    dashstopping = 1;
}

if (dashstopping == 1) {
    if (free || state_cat == SC_HITSTUN || state_cat == SC_GROUND_NEUTRAL || state == PS_DASH_TURN){
        dashstopping = 0;
    }
}

//soap turning begone - -
if (state == PS_DASH_STOP) || (state == PS_DASH) {
    ground_friction = 4.7;
}
else {
    ground_friction = .4;
}

if (state == PS_DASH_TURN && hsp > 0) {
    hsp -= .3;
}
if (state == PS_DASH_TURN && hsp < 0) {
    hsp += .3;
}

//walljump sound
if (state == PS_WALL_JUMP && state_timer == 1){
    sound_play(sound_get("ris_lilgrab"));
}

//abyss stuff
if (state == PS_SPAWN) {
    if ( get_match_setting( SET_RUNES ) == 1 ) {
        abyssmode = 1;
    }
}

// sometimes heals damage when obtaining an exp rock in abyss mode
if ( xp_timer == 2 ) {
    if ( random_func(0, 8, true) == 1 ) {
        take_damage( player, -1, -1 );
}
}