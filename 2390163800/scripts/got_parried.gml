if attack == AT_DTILT {
    state = PS_PRATFALL;
}


if my_hitboxID.attack == AT_FSPECIAL_2 {
sound_play(sound_get("PARRY"));
attack_end();
set_state(PS_PRATLAND);
was_parried = 1;
 }