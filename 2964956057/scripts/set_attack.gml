has_grab = 0;
grabp = noone;
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);

if free && special_pressed && down_down{
    attack = AT_DSPECIAL_AIR;
}
if attack == AT_DSPECIAL_AIR && window == 3 && window_timer == 12{
    attack = AT_DSPECIAL;
}

if !free && taunt_pressed && down_down{
    attack = AT_TAUNT_2;
}