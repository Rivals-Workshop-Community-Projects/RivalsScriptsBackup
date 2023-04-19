if attack == AT_DSPECIAL{
    if!has_rune("M") move_cooldown[AT_DSPECIAL] = 200;
    if(has_rune("A")){
        enemy_dir = point_direction(x, y, best.x, best.y);
        hsp = sin(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8;
        vsp = cos(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8;
    }
}
