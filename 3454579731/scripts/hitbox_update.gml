if (attack == AT_DSPECIAL && hbox_num == 1){
    if (collision_circle(x, y, 30, player_id.cannon, false, true) && player != player_id.player && cannon.state != 3){
        player_id.cannon.fucking_dies = true;
        destroyed = true;
    }
    if (hitbox_timer == length - 1){
        spawn_hit_fx(x, y-16, 14);
    }
}

if (attack == AT_NSPECIAL && hbox_num == 1){
    if (player_id.cannonball.double_fired){
        damage = 15;
        kb_value = 8;
        if (player_id.cannonball.vsp <= -4){
            kb_angle = 90;
        }
        //kb_angle = darctan2(player_id.cannonball.vsp, player_id.cannonball.hsp);
    }
}

if (attack == AT_USPECIAL && hbox_num == 1){
    if (has_hit){
    for (var i = 0; i < 20; i++) can_hit[i] = false;
    }
}

