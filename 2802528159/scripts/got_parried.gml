if(!free){
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get(string(plate_state) + "_got_parried"));
if(my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_NSPECIAL_AIR) && my_hitboxID.hbox_num == 2{
    set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 20);
}else{
    set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 40);
}
set_attack(AT_UTHROW);
hurtboxID.sprite_index = sprite_get("got_parried_hurt");
pratcancel = 0;
}
move_cooldown[AT_FSPECIAL] = 70;
move_cooldown[AT_DSPECIAL] = 70;