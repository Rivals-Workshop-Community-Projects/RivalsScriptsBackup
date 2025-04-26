if state == PS_FIRST_JUMP and get_player_color(player) == 8 {
    is_gold_jump_right = !is_gold_jump_right
    //print("alternating")
}

if (state == PS_IDLE_AIR) and (prev_state == PS_ATTACK_GROUND or prev_state == PS_ATTACK_AIR) and (attack == AT_NSPECIAL) {
    move_cooldown[AT_NSPECIAL] = 110;
    has_performed_hop = true;
}