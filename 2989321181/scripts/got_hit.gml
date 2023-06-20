if (!has_rune ("O") || (has_rune("O") && beyTimer > 1)){
    if (!super_armor){
        if (has_rune("F"))
            beyTimer = clamp(beyTimer - enemy_hitboxID.damage*5, 1, 31600);
        else
            beyTimer = clamp(beyTimer - enemy_hitboxID.damage*20, 1, 31600);
    }
    else{
        if (has_rune("F"))
            beyTimer = clamp(beyTimer - enemy_hitboxID.damage, 1, 31600);
        else
            beyTimer = clamp(beyTimer - enemy_hitboxID.damage*5, 1, 31600);
    }
}

hit_player_obj.grabbed_player_obj = noone;
hit_player_obj.has_hit = false;