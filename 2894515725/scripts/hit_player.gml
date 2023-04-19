//

enum _ {
    PS_NA, // not applicable
    PS_PULLING, // pulling perch
    PS_HANGING, // hanging from perch
    PS_GRAPPLING, // grappling to object
}

if (!instance_exists(my_hitboxID)) {
    return;
}

if my_hitboxID.attack == AT_NAIR {
    attack_end();
    trigger_b_reverse();
    // hsp = spr_dir * 2;
    // vsp = 0;
    set_attack(AT_EXTRA_1);
    do_a_fast_fall = false;
}

if my_hitboxID.attack == AT_EXTRA_1 {
    has_hit_id.old_hsp += old_hsp * 0.7;
    has_hit_id.old_vsp -= abs(old_vsp * 0.1);
}

if my_hitboxID.attack == AT_FTILT && ftilt_boost{
    old_hsp += spr_dir*10;
    ftilt_boost = false;
}

if my_hitboxID.attack == AT_FSPECIAL_AIR && my_hitboxID.hbox_num == 2 && shotgun_spark_charge < shotgun_spark_fullcharge * .9 {
    shotgun_spark_charge = min(shotgun_spark_charge + shotgun_spark_fullcharge * 0.3, shotgun_spark_fullcharge * 0.9);
}