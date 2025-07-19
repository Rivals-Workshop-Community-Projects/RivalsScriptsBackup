//
draw_x = 0;
draw_y = 0;
spr_angle = 0;
switch(state) {
    case PS_ATTACK_AIR: case PS_ATTACK_GROUND:
        switch(attack) {
            case AT_USPECIAL:
                // Hitbox Trail
                if (window == 4 && window_timer == 0 && !hitpause) {
                    var hitbox, dist = point_distance(uspec_start_x, uspec_start_y, x, y), dir = point_direction(uspec_start_x, uspec_start_y, x, y), i;
                    for (i = 0; i < dist; i += 30) {
                        hitbox = create_hitbox(attack, 1, x, y);
                        hitbox.x_pos = uspec_start_x - x + lengthdir_x(i, dir);
                        hitbox.y_pos = uspec_start_y - y + lengthdir_y(i, dir) - 32;
                    }
                }
                if (window >= 4) {
                    hurtboxID.sprite_index = hurtbox_spr;
                    var temp_angle = -angle_difference(spr_dir == 1 ? 0 : 180, uspec_dir)
                    draw_x = lengthdir_x(16*spr_dir, -angle_difference(90, uspec_dir));
                    draw_y = -12 + min(lengthdir_y(32*spr_dir, -temp_angle), 0);
                    spr_angle = temp_angle;
                }
                break;
        }
        break;
}