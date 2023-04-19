if attack == AT_USPECIAL {
    started_attack_free = false;
}
var angle = enemy_hitboxID.kb_angle;
hsp_buffer += enemy_hitboxID.spr_dir * lengthdir_x(orig_knock,angle);
vsp_buffer += lengthdir_y(orig_knock,angle);

shotgun_loaded_when -= 500;
perchstun = 0;
in_perchstun = 0;


if (shotgun_spark_charge > shotgun_spark_fullcharge || shotgun_firing ) {
    shotgun_backfired_hasnt_hit = true;
    shotgun_firing = false;
}

shotgun_spark_charge = 0;

if (enemy_hitboxID.player_id == id && enemy_hitboxID.attack == AT_FSPECIAL_2) {
    shotgun_backfired_hasnt_hit = false;
}