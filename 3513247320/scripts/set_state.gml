if(state == PS_WALL_JUMP || state_cat == SC_HITSTUN || !free && !standingonrush || state == PS_DEAD || state == PS_RESPAWN){
    move_cooldown[AT_USPECIAL] = 0;
}
sound_stop(fstrong_sfx);
if(prev_state == PS_ATTACK_GROUND && attack == AT_DTILT){
    hsp = clamp(hsp, -air_max_speed, air_max_speed);
    old_hsp = clamp(old_hsp, -air_max_speed, air_max_speed);
}