//hitbox
//hitbox_update.gml
if (attack == AT_DSPECIAL){
    with (asset_get("obj_article1")){
        if (place_meeting(x, y, other)){
            if (player_id.player == other.player){
                with (other){
                    if (explode_timer < 0){
                        spawn_hit_fx(floor(x),floor(y) - 5,301);
                        sound_play(asset_get("sfx_blow_weak1"));
                        vsp = -7;
                        explode_timer = 25;
                    }
                }
            }
        }
    }
}


if (attack == AT_DSPECIAL){
    if (explode_timer > 0){
        enemies = 1;
        explode_timer--;
    }
    if (explode_timer == 0){
        sound_play(asset_get("sfx_abyss_explosion_big"));
        spawn_hit_fx(floor(x),floor(y) - 5,143);
        create_hitbox(AT_DSPECIAL, 2, x, y - 10);
        destroyed = true;
    }
}