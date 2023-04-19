if note_pointer != -1 and ((state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) and attack == AT_NSPECIAL) {
    note_pointer = -1;
}

sound_stop(dattack_sfx[0]);
sound_stop(dattack_sfx[1]);