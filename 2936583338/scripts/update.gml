if (ska_j_bounce == 0){
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -7);
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
}

if (ska_j_bounce == 1){
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -4);
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
}

if (ska_j_bounce == 2){
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, 0);
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
}

if (ska_j_bounce >= 2){
	ska_j_bounce = 2;
}

if (!free){
	ska_j_bounce = 0;
}

if (attack == AT_NSPECIAL && window == 1 && window_timer >= 14 && special_down){
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 5);
}

if (attack == AT_NSPECIAL && window == 1 && window_timer >= 14 && !special_down){
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 3);
}

if (!free || state == PS_WALL_JUMP){
	move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_FSPECIAL] = 0;
}