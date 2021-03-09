/*
if (instance_exists(mycat)) {
    if (my_hitboxID.hbox_num >= mycat.window_hitbox_min && my_hitboxID.hbox_num <= mycat.window_hitbox_max) {
        var a = get_hitbox_angle(my_hitboxID);
        if (mycat.spr_dir == -1)
            a += 180;
            
        hit_player_obj.orig_knock = a % 360;
        mycat.has_hit = true;
    }
}
*/