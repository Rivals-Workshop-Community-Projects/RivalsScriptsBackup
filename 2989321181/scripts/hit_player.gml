if (my_hitboxID.attack == AT_TAUNT && !deathTimer){
    if (!down_down && hit_player_obj.url != url){
        if (hit_player_obj.x < x && !hit_player_obj.has_hit)
            old_hsp = -old_hsp + 1;

        if (hit_player_obj.x >= x && !hit_player_obj.has_hit)
            old_hsp = -old_hsp - 1;

        if (!hit_player_obj.has_hit)
        old_vsp = -2;
    }
    if (!has_rune("J") && (!has_rune("K") || (has_rune("K") && get_player_damage(player) != 0)) && (!has_rune ("O") || (has_rune("O") && beyTimer > 1)))
        beyTimer = clamp(beyTimer - 60, 1, 31600);
    if (has_rune ("J")){
        if (has_rune("G"))
            beyTimer = clamp(beyTimer+120, 0, 31600);
        else
            beyTimer = clamp(beyTimer+120, 0, 10800);
    }
    if (get_player_color(player) != 22)
    sound_play(sound_get("bb-clang"), false, noone, 0.25, 0.9 + clangRandom);
    else
    sound_play(sound_get("bb-FamilyGuy"))
}

if (hit_player_obj.has_hit)
    hit_player_obj.has_hit = false;