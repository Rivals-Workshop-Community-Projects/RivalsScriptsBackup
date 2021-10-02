if (attack == AT_UTILT && random_func( 1, 5, true ) == 2){
    if (-1 < hatdeathdrawvsp){
        hatdeathdrawvsp = -1;
    }
    if (hatdeathdrawheight > 0){
        hatdeathdrawheight = 0;
    }
}

if (attack == AT_FAIR || attack == AT_BAIR) && (left_strong_pressed || right_strong_pressed) && (has_rune("I")){
    attack = AT_FSTRONG;
    if (left_strong_pressed){
        spr_dir = -1;
    }
    if (right_strong_pressed){
        spr_dir = 1;
    }
}

if (attack == AT_FSTRONG){
    if (has_rune("F")){
        attack = AT_EXTRA_1;
    }
}

if (attack == AT_UAIR || attack == AT_FAIR) && (dattack_timer > 0 && vsp >= -2){
    vsp = -2;
}

if (attack == AT_DAIR || attack == AT_BAIR) && (dattack_timer > 0 && vsp >= -4){
    vsp = -4;
}

if (attack == AT_USPECIAL || attack == AT_NSPECIAL) && (get_player_color(player) == alt_goose && move_cooldown[attack] <= 0){
    if (untitled_goose_egg_type == 1){
        set_character_color_slot(6, 99, 162, 255, 1);
        set_article_color_slot(6, 99, 162, 255, 1);
        untitled_goose_egg_type = 2;
    } else {
        set_character_color_slot(6, 255, 241, 0, 1);
        set_article_color_slot(6, 255, 241, 0, 1);
        untitled_goose_egg_type = 1;
    }
}

if (attack == AT_TAUNT && "superTrue" in self){
    if (superTrue == 1){
        superTrue = 0;
        //rof_super_active = 450;
        attack = AT_FTHROW;
    }
}
if (get_stage_data(SD_ID) != 53463 && get_stage_data(SD_ID) != 06021 && get_stage_data(SD_ID) != 75518){
    user_event(13);
}

if (attack == AT_TAUNT && get_player_color(player) == alt_infamous){
    attack = 42;
}

if (attack == AT_TAUNT && get_player_color(player) == alt_gold){
    attack = 43;
}

if (attack == AT_TAUNT) && (get_player_color(player) == alt_goose || get_player_color(player) == alt_wario || get_player_color(player) == alt_waluigi || bird_luigi_2_taunt){
    attack = 44;
}

if (attack == AT_TAUNT && get_player_color(player) == alt_gooigi){
    attack = 45;
}

if (attack == AT_TAUNT && get_player_color(player) == alt_archen){
    attack = 46;
}

if (attack == AT_TAUNT && get_player_color(player) == alt_nes){
    attack = 47;
    nes_taunt_win_timer = 0;
    nes_taunt_x = 0;
    nes_taunt_y = 0;
    nes_taunt_vsp = 0;
}

if (attack == AT_TAUNT && get_player_color(player) == alt_builder){
    if (!turned_into_a_goomba){
        sound_play(sound_get("3W_SePm_CreateWoodbox"));
        spawn_hit_fx(x - spr_dir * 4, y - 36, 144);
    }
    turned_into_a_goomba = true;
}

if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
    if (has_rune("N")){
        rune_N_abyss_strongtype = attack;
        attack = AT_FSTRONG_2;
    }
}

if (attack == AT_DSPECIAL){
    dspecial_start_free = free;
}

if (attack == AT_DATTACK){
    if (down_down){
        attack = AT_DTILT;
    }
}