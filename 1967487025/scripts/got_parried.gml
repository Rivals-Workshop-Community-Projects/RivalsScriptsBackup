// got_parried.gml
if (my_hitboxID.attack == AT_NSPECIAL) {
    if runeL && my_hitboxID.hbox_num == 3 {
        my_hitboxID.spr_dir = 1;
        my_hitboxID.proj_angle = point_direction(x, floor(y - char_height / 2), my_hitboxID.x, my_hitboxID.y);
        my_hitboxID.hsp = lengthdir_x(20, my_hitboxID.proj_angle);
        my_hitboxID.vsp = lengthdir_y(30, my_hitboxID.proj_angle);
        my_hitboxID.kb_angle = my_hitboxID.proj_angle;
    }
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
}


if my_hitboxID.type == 2 meter_current -= 7;
else meter_current -= 10;
if meter_current < 0 meter_current = 0;
