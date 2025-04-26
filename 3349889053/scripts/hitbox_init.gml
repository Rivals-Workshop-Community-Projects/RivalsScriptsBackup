if attack == AT_FSPECIAL{
    grounded = false
    turn_cooldown = 0;
    projectile_direction = (player_id.spr_dir == -1)*180
    projectile_speed = 0;
    rising_timer = -1;
    rising_max_time = 20;
    rising_end_position = 0;
    turn_failsafe_timer = 0;
    turn_failsafe_max = 4;
    turn_failsafe = 0;
    
    turn_cost = 5; // 5 frames are shaved off the total time when it turns
}