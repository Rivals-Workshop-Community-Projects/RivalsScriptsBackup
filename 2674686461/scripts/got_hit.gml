//a
if spr_angle != 0 {
    spr_angle = 0;
}

if state == PS_ATTACK_GROUND && (attack == AT_FSTRONG or attack == AT_USTRONG or attack == AT_DSTRONG) {
    meteor_armor = false;
}