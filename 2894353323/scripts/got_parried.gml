//#region Local Variables
//prevents the grab ID from staying
if (my_grab_id != noone) my_grab_id = noone;


//multihit projectile hit count resets on parry
if (my_hitboxID.type == 2 && my_hitboxID.multihit_amount > 0 && my_hitboxID.proj_hit_count < my_hitboxID.multihit_amount)
{
    my_hitboxID.proj_hit_count = 0;
    my_hitboxID.hitbox_timer = 0;
}
//#endregion

if (my_hitboxID.attack == AT_FSTRONG_2 && my_hitboxID.hbox_num == 1) was_parried = true;
if (my_hitboxID.attack == AT_USTRONG_2 && my_hitboxID.hbox_num == 1) was_parried = true;
if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 1) {
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
}
if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 2) {
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
}
if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 4) {
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
}
if (my_hitboxID.attack == AT_NSPECIAL && (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3)) {
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
}
if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 1) {
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
}
if (my_hitboxID.attack == AT_NSPECIAL_AIR && my_hitboxID.hbox_num == 1) {
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.vsp = get_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED);
    my_hitboxID.hsp *= -1.5;
    was_parried = true;
}
if (my_hitboxID.attack == AT_USPECIAL_2 && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)) {
    was_parried = true;
}
if (my_hitboxID.attack == AT_FSPECIAL_AIR && my_hitboxID.hbox_num == 1) {
    was_parried = true;
}