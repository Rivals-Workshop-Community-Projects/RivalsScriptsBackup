
/*if attack == AT_NSPECIAL && move_cooldown[AT_NSPECIAL_2] == 0 {
    if gold_obj != 0 {
        attack = AT_NSPECIAL_2
    }
}*/ 
if attack == AT_NSPECIAL {
    if free {
        attack = AT_NSPECIAL_AIR
    }
    else {
    attack = AT_NSPECIAL_2
    }
}
if attack == AT_DSPECIAL && free {
    attack = AT_DSPECIAL_AIR
}

// ==================== GRAFFITI STUFF  ======================
if attack == AT_TAUNT && get_synced_var(player) == true {
    //attack = AT_TAUNT_2;
}
if attack == AT_TAUNT && shield_down && move_cooldown[AT_TAUNT] == 0{
    if get_player_color( player) == 16 {
    sound_play(sound_get("sfx_taunt"))
    attack = AT_EXTRA_2
    move_cooldown[AT_TAUNT] = 60
    } else {
    sound_play(sound_get("boom"))
    attack = AT_EXTRA_1
    move_cooldown[AT_TAUNT] = 280
    }
}
// ===========================================================
//keeps fspec/dspec interactions in check
hsp = clamp(hsp, -12, 12)

