//got_parried

if my_hitboxID.attack == AT_JAB{
    azelf_jab_parried = true;
}
if my_hitboxID.attack == AT_NSPECIAL{
    if my_hitboxID.hbox_num == 1{
        was_parried = true;
    }
}
if my_hitboxID.attack == AT_FSPECIAL{
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
    my_hitboxID.vsp *= 1.5;
    my_hitboxID.proj_angle += 180;
    if my_hitboxID.hit_effect = 112 image_index = 2;
    else image_index = 1;
}