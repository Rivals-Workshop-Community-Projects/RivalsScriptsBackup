//hit player

if (my_hitboxID.attack == AT_DAIR && (my_hitboxID.hbox_num == 1 || has_rune("F"))){
    shake_camera(15, 8);
    if (has_rune("M")) {
        hit_player_obj.hitpause = false;
        create_deathbox(
            hit_player_obj.x, // x
            hit_player_obj.y, // y
            100, // w
            100, // h
            hit_player_obj.player, // player
            true, // free
            2, // shape
            3, // lifespan
            2 // bg_type
        );
        sound_play(asset_get("sfx_sand_yell"));
    }
}

if (my_hitboxID.attack == AT_TAUNT && has_rune("O")){
    hit_player_obj.hitpause = false;
    create_deathbox(
            hit_player_obj.x, // x
            hit_player_obj.y, // y
            100, // w
            100, // h
            hit_player_obj.player, // player
            true, // free
            2, // shape
            3, // lifespan
            2 // bg_type
    );
}