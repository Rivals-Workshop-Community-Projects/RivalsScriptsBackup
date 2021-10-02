if (ai_recovering) && (state == PS_FIRST_JUMP || state == PS_IDLE_AIR || state == PS_WALL_JUMP) && (djumps >= max_djumps && !has_airdodge && move_cooldown[AT_USPECIAL] > 1){
    jump_down = true;
}

if (state == PS_PARRY && get_training_cpu_action() == CPU_JUMP){
    set_attack(AT_NSPECIAL);
}