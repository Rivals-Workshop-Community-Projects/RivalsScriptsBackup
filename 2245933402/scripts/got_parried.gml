///

if (my_hitboxID.attack == AT_DSPECIAL) {
    create_hitbox(AT_FSPECIAL , 2 , x + 20*spr_dir  , y - 40);
         spawn_hit_fx (x + 20*spr_dir  , y - 40, 253)
         sound_play(asset_get("sfx_abyss_explosion"));
}

if (my_hitboxID.attack == AT_DATTACK) {

    my_hitboxID.hitbox_timer = 0;

    
}


hit_player_obj.parry_cooldown = 0