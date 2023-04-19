if !free{
    pratcancel = 0;
    set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get(string(plate) + string(39)));
    set_attack(AT_UTHROW);
    hurtboxID.sprite_index = sprite_get("got_parried_hurt");
}