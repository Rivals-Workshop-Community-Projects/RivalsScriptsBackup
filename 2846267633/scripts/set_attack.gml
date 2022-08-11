//set_attack

airpin = false;
if (attack == AT_BAIR && (left_strong_pressed || right_strong_pressed)) {
    attack = AT_FSTRONG;
    spr_dir *= -1;
}
if (attack == AT_DAIR && (down_strong_pressed)) {
    attack = AT_DSTRONG;
}
// for some reason the AI does this one without any special instructions
if (attack == AT_UAIR && (up_strong_pressed)) {
    attack = AT_USTRONG;
}

if (attack == AT_USPECIAL) {
    y -= 32;
}

if (super_eligible) {
    super_parried = false;
    attack = AT_EXTRA_1;
    if (joy_pad_idle) spr_dir = super_input_dir;
    else spr_dir = lengthdir_x(1, joy_dir) > 0 ? 1 : -1;
}
