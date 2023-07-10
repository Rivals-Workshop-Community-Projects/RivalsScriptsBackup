if get_training_cpu_action() != CPU_FIGHT exit;
var is_attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;

is_lasering = 0;

if !ai_recovering && !(attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_FSTRONG || attack == AT_UAIR) && laser_timer >= 0{
    special_down = 1;
    is_lasering = 1;
}

if !is_lasering && !move_cooldown[AT_DSPECIAL] && random_func_2(34, 10 - temp_level, 1) == 0{
    down_down = 1;
    special_down = 1;
}
if is_attacking && attack == AT_DSPECIAL{
    special_down = 1;
    if point_distance(skystrike_pos[0], 0, ai_target.x, 0) < point_distance(skystrike_pos[0] + spr_dir, 0, ai_target.x, 0) special_down = 0;
}

if laser_timer > 200 close_up_attacks = [AT_USTRONG];
else close_up_attacks = [AT_USTRONG, AT_UAIR];

if is_attacking && attack == AT_USTRONG && window == 4 && window_timer >= 8 && ai_target.x > x - 110 && ai_target.x < x + 110 && ai_target.y >= y - 80{
    attack_pressed = 1;
    down_strong_pressed = 1;
}