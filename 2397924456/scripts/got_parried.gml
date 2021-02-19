legion.target_health = max(legion.legion_health - 15 * legion.health_ratio, 1);

if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 2) my_hitboxID.hitbox_timer = 0;