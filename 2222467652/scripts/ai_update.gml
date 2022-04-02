if (ai_recovering){
    if (state == PS_FIRST_JUMP || state == PS_IDLE_AIR || state == PS_WALL_JUMP) && (!has_airdodge && move_cooldown[AT_USPECIAL] >= 1){
        jump_down = true;
    }
    if (state == PS_TUMBLE && djumps < max_djumps){
        set_state(PS_DOUBLE_JUMP);
        djumps += 1;
        vsp = djump_speed * -1;
    }
}

if (state == PS_PARRY && get_training_cpu_action() == CPU_JUMP){
    set_attack(AT_NSPECIAL);
}