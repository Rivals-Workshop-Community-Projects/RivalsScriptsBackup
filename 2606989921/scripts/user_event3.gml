//rune stat adjustments

//=========================================================
//Negative airfriction
air_friction = (msg_rune_flags.antifriction ? -0.07 : 0.07);
//=========================================================
//Antijumping
fast_fall =   (msg_rune_flags.antijump ? -7 : 16);
djump_speed = (msg_rune_flags.antijump ? -7 : (msg_yellow_mode ? 8 : 9) );
//=========================================================
//Negative walking
walk_accel = (msg_rune_flags.antiwalk ? -0.1 : 0.1);
//=========================================================
//Antiroll
roll_forward_max    = (msg_rune_flags.antiroll ? -2.5 : 7);
roll_backward_max   = (msg_rune_flags.antiroll ? -2.5 : 7);
//=========================================================
//High Gravity
max_fall      = (msg_rune_flags.strong_grav ? 7 : 12);
gravity_speed = (msg_rune_flags.strong_grav ? 1.0 : 0.5);
djump_speed  *= (msg_rune_flags.strong_grav ? 1.5 : 1);
jump_speed    = (msg_rune_flags.strong_grav ? 9.5 : 6.5);
short_hop_speed = jump_speed;
//=========================================================
//Bonus Midair jumps
max_djumps = (msg_rune_flags.morejumps ? 4 : 2);
//=========================================================
//SLOW START
if (msg_slowstart_ended)
{
    walk_speed  = (msg_yellow_mode ? 5.25 : 5.55 );
    dash_speed  = (msg_yellow_mode ? 8.15 : 9.25 );
    crawl_speed = (msg_yellow_mode ? 6.5  : 7.2  );
    air_max_speed = 7.5;
}
else
{
    walk_speed  = (msg_yellow_mode ? 3    : 3.15 );
    dash_speed  = (msg_yellow_mode ? 5.75 : 6.25 );
    crawl_speed = (msg_yellow_mode ? 4.5  : 5    );
    air_max_speed = 5;
}
//=========================================================
//Turbo-weekdays
var turboweek = [
    msg_rune_flags.turbo_ff,
    false,
    msg_rune_flags.turbo_tt,
    msg_rune_flags.turbo_ss,
    msg_rune_flags.turbo_tt,
    msg_rune_flags.turbo_ff,
    msg_rune_flags.turbo_ss,
]
msg_rune_flags.turbo_weekday = turboweek[msg_stored_weekday]
                           && !get_match_setting(SET_TURBO);
//=========================================================
//Break Airdodge
air_dodge_type = msg_rune_flags.antidodge ? "Cooltrainer♀" : "melee";
//=========================================================
//"Not Very Effective"
damage_scaling = msg_rune_flags.not_very_effective ? 0.5 : 1;
//=========================================================
//Grid-affecting runes
setup_rune_on_move(AT_FTILT, msg_rune_flags);
setup_rune_on_move(AT_USTRONG, msg_rune_flags);
setup_rune_on_move(AT_NAIR, msg_rune_flags);
setup_rune_on_move(AT_DAIR, msg_rune_flags);
setup_rune_on_move(AT_USPECIAL, msg_rune_flags);
//=========================================================
//NSPECIAL Clone duration
msg_nspecial_clone_duration = 60 * (msg_rune_flags.nspecial_longerclones ? 30 : 12);
//=========================================================


//=========================================================

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define setup_rune_on_move(target_attack, rune_flags) // Version 0
    switch (target_attack)
    {
    //=========================================================
        case AT_DATTACK:
        //DATTACK persistent armor
        msg_rune_dattack_persistent_armor = rune_flags.dattack_armored;
        break;
    //=========================================================
        case AT_FTILT:
        //NTILT Verticality
        set_window_value(AT_FTILT, 2, AG_WINDOW_VSPEED_TYPE, !rune_flags.ntilt_verticality);
        break;
    //=========================================================
        case AT_UTILT:
        //UTILT Stuck Tipper
        set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, rune_flags.utilt_stuck ? 3 : 1);
        set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, rune_flags.utilt_stuck ? -1 : 1);
        break;
    //=========================================================
        case AT_DTILT:
        //Extreme Offedge
        set_attack_value(AT_DTILT, AG_USES_CUSTOM_GRAVITY, rune_flags.dtilt_platform ? 1 : 0);
        set_window_value(AT_DTILT, 1, AG_WINDOW_VSPEED_TYPE, rune_flags.dtilt_platform ? 2 : 0);
        set_window_value(AT_DTILT, 2, AG_WINDOW_VSPEED_TYPE, rune_flags.dtilt_platform ? 2 : 0);
        set_window_value(AT_DTILT, 3, AG_WINDOW_VSPEED_TYPE, rune_flags.dtilt_platform ? 2 : 0);
        set_window_value(AT_DTILT, 4, AG_WINDOW_VSPEED_TYPE, rune_flags.dtilt_platform ? 2 : 0);
        set_window_value(AT_DTILT, 5, AG_WINDOW_VSPEED_TYPE, rune_flags.dtilt_platform ? 2 : 0);
        break;
    //=========================================================
        case AT_FSTRONG:
        //Burnconsume
        set_num_hitboxes(AT_FSTRONG, rune_flags.fstrong_burnconsume ? 2 : 1);
        set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, rune_flags.fstrong_burnconsume ? 3 : 0);
        set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, rune_flags.fstrong_burnconsume ? 0: 10);

        //Critical
        set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, rune_flags.fstrong_critical ? 32 : 8);
        set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, rune_flags.fstrong_critical ? 1 : 2);
        set_window_value(AT_FSTRONG, 2, AG_WINDOW_VSPEED_TYPE, rune_flags.fstrong_critical ? 1 : 0);
        set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, rune_flags.fstrong_critical ? 1 : 4);
        set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, rune_flags.fstrong_critical ? 3 : 8);
        set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, rune_flags.fstrong_critical ? 31 : 17);

    //=========================================================
        case AT_DSTRONG:
        //Burn
        set_hitbox_value(AT_DSTRONG, 4, HG_EFFECT, rune_flags.dstrong_firefang ? 1 : 0);
    //=========================================================
        case AT_USTRONG:
        //Bouncy Coins
        set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, rune_flags.ustrong_coin_bounce ? 2 : 0);
        //Rehitting Coins
        set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE,  rune_flags.ustrong_repeating ? 0 : 2);
        set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, rune_flags.ustrong_repeating ? 0 : 5);
        set_hitbox_value(AT_USTRONG, 3, HG_HIT_LOCKOUT,    rune_flags.ustrong_repeating ? 2 : 3);
        //Black Hole signal
        set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, rune_flags.ustrong_blackhole ? true : false);
        break;
    //=========================================================
        case AT_NAIR:
        //NAIR Poison
        set_hitbox_value(AT_NAIR, 1, HG_EFFECT, rune_flags.nair_poison ? 10 : 0);
        set_hitbox_value(AT_NAIR, 3, HG_EFFECT, rune_flags.nair_poison ? 10 : 0);
        //NAIR loses the two extra hits
        set_hitbox_value(AT_NAIR, 2, HG_WINDOW, rune_flags.nair_nofollowup ? noone : 2);
        set_hitbox_value(AT_NAIR, 3, HG_WINDOW, rune_flags.nair_nofollowup ? noone : 3);
        //NAIR's main hit is only during landing
        set_hitbox_value(AT_NAIR, 1, HG_WINDOW, rune_flags.nair_landinglag ? 0 : 2);
        set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, rune_flags.nair_landinglag ? 12 : 1);
        break;
    //=========================================================
        case AT_FAIR:
        //FAIR Variable Angle (just as a signal, see hit_player)
        set_hitbox_value(AT_FAIR, 1, HG_ANGLE, rune_flags.fair_angled ? 70 : 75);
        //FAIR Victim-sum damage (just as a signal, see hit_player)
        set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, rune_flags.fair_sumdamage ? 6 : 2);
        //FAIR reversal
        set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, rune_flags.fair_reversed ? 0.6 : -0.6);
        break;
    //=========================================================
        case AT_DAIR:
        //Cloning rock (serves as a signal)
        set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, rune_flags.dair_cloning ? 0 : 1);
        //Plummet rock
        set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, rune_flags.dair_plummet ? 2 : 10);
        set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, rune_flags.dair_plummet ? 2 : 6);
        //Bury rock
        set_hitbox_value(AT_DAIR, 2, HG_EFFECT, rune_flags.dair_bury ? 15 : 0);
        set_hitbox_value(AT_DAIR, 3, HG_EFFECT, rune_flags.dair_bury ? 15 : 0);
    //=========================================================
        case AT_BAIR:
        //Mirrorport (serves as a signal)
        set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, rune_flags.bair_mirrorport ? 4 : 6);
        break;
    //=========================================================
        case AT_UAIR:
        //Tipper
        set_num_hitboxes(AT_UAIR, rune_flags.uair_tipper ? 2 : 1);
        break;
    //=========================================================
        case AT_FSPECIAL:     // Water Gun or Gust (Chargeable)
        case AT_FSPECIAL_2:   // Bubblebeam or Ember
        case AT_FSPECIAL_AIR: // Hydro Pump or Hydro Cannon
        case AT_FTHROW:       // Fissure

        //Elemental Charging
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, rune_flags.fspecial_elemental ? asset_get("sfx_bird_sidespecial")
                                                                                      : asset_get("sfx_watergun_fire"));
        set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, rune_flags.fspecial_elemental ? noone : 4);
        set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, rune_flags.fspecial_elemental ? 4 : noone);

        set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, rune_flags.fspecial_elemental ? asset_get("sfx_zetter_fireball_fire")
                                                                                        : asset_get("sfx_bubblespray"));
        set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, rune_flags.fspecial_elemental ? 3 : noone);

        //Hydro Cannon
        set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, rune_flags.fspecial_hydro_cannon ? noone : 3);
        set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, rune_flags.fspecial_hydro_cannon ? 3 : noone);
        break;
    //=========================================================
        case AT_USPECIAL:
        //USPECIAL no-pratfall
        set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, rune_flags.uspecial_noprat ? 0 : 7);

        //USPECIAL backwards
        var reverse_uspec = rune_flags.uspecial_reversed && free;
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_GOTO, reverse_uspec ? 4 : 0);
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_GOTO, reverse_uspec ? 2 : 0);
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, reverse_uspec ? 8 : 18);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO, reverse_uspec ? 6 : 0);
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, reverse_uspec ? 0.9 : 1.2);

        //USPECIAL Charging
        set_attack_value(AT_USPECIAL, AG_STRONG_CHARGE_WINDOW, rune_flags.uspecial_charged ? 1 : 153);
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -15);
        break;
    //=========================================================
    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion