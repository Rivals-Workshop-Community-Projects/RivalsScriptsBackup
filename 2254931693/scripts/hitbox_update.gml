//hitbox_update


if (attack = AT_FSPECIAL && (hbox_num = 1) && hitbox_timer = 3){
    x_pos = x_pos + 20;
}


if (player_id.frog_exists = 1 && (player_id.frog.state != PS_ATTACK_GROUND && player_id.frog.state != PS_ATTACK_AIR) && attack = AT_FSPECIAL){
    if (point_distance(x, y, player_id.frog.x, player_id.frog.y ) < 70){
        player_id.frog.state = PS_TUMBLE;
        player_id.frog.state_timer = 0;
    }
}
