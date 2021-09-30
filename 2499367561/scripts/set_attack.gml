//set_attack

if(attack == AT_TAUNT && state_timer < 1 && down_down){
    attack = AT_TAUNT_2
}

if(attack == AT_TAUNT && state_timer < 1 && up_down){
    attack = AT_EXTRA_3
    sound_play(sound_get("wolves"))
    pillardraw = 1
}


if special_pressed && !free && joy_pad_idle{
    attack = AT_EXTRA_1
    state = PS_ATTACK_GROUND
}