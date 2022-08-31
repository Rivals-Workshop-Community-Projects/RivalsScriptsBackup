///#args attack // this line makes code editors not freak out for some reason
if (attack == AT_DSPECIAL && free) {
    attack = AT_DSPECIAL_AIR;
}

if (attack == AT_TAUNT && move_cooldown[AT_TAUNT] == 0 && voices) {
    sound_stop(sfx_voice_taunt1);
    sound_play(sfx_voice_taunt1);
}

switch (attack) {
    case AT_JAB:
    case AT_FTILT:
    case AT_NSPECIAL:
    case AT_FSPECIAL:
        if (attack_down && special_down && bigiron) {
            attack = AT_NSPECIAL_2;
        }
        break;
}