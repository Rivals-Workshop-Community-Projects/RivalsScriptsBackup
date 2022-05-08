if(attack == AT_DSPECIAL && has_rune("A")){
    enemy_dir = point_direction(x, y, player_id.best_target.x, player_id.best_target.y);
    hsp = sin(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8;
    vsp = cos(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8;
}