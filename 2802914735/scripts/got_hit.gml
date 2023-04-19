//a
if (has_touched_grass or (attack == AT_DSPECIAL && (prev_state == PS_ATTACK_AIR or prev_state == PS_ATTACK_GROUND))) && enemy_hitboxID.type != 2 { //lose dspecial boost on hit
    has_touched_grass = false;
    move_cooldown[AT_DSPECIAL] = dspecial_base_cooldown;
}
dspecial_failed = false;
pratphobia = false;