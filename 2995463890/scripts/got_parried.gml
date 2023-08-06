switch (my_hitboxID.attack) {
    case AT_NSPECIAL:
        if (my_hitboxID.hbox_num == 1) {
            var new_dir = point_direction(x, y-(char_height/2), my_hitboxID.x, my_hitboxID.y)
            my_hitboxID.hsp = lengthdir_x(30, new_dir)
            my_hitboxID.vsp = lengthdir_y(30, new_dir)
            my_hitboxID.proj_angle = new_dir;
            my_hitboxID.draw_xscale = -1
            my_hitboxID.bullet_state = PS_DEAD;
            my_hitboxID.hitbox_timer = 1;
            
            if my_hitboxID == bullet_obj bullet_obj = noone;            
        }
    break;
    case AT_FSPECIAL:
        if (my_hitboxID.hbox_num == 2) {
            hitbox_timer = 0;
            my_hitboxID.puddle.hsp *= -1;
            my_hitboxID.puddle.vsp *= -1;
        }
    break;
    case AT_DSPECIAL:
        if (my_hitboxID.hbox_num == 1){
            puddle_cooldown = 180;
        }
        if (my_hitboxID.hbox_num == 2) {
            hitbox_timer = 0;
            my_hitboxID.puddle.hsp *= -1;
            my_hitboxID.puddle.vsp *= -1;
        }
}