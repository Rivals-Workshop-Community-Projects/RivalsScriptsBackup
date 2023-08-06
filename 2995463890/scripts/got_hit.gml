if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND and attack == AT_NSPECIAL_2 and window == 2 {
    bullet_obj.destroyed = true;
}

used_dspecial = false;
move_cooldown[AT_DSPECIAL] = 0;