if(!free){
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get(string(plate_state) + "_got_parried"));
set_attack(AT_UTHROW);
hurtboxID.sprite_index = sprite_get("got_parried_hurt");
pratcancel = 0;
}