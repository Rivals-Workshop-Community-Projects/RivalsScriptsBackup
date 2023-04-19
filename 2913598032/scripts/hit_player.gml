if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
    with (my_hitboxID) {
        player_id.wheel = instance_create(x, y, "obj_article2");
    }
} 

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 3) {
    spawn_hit_fx(wheel.x - 6, wheel.y, vfx_actimp);
}

