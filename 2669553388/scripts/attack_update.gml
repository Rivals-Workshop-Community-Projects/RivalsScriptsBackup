// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Taunt
if (attack == AT_TAUNT){
	if taunt_down && window == 1 && window_timer == 12 {
		window_timer = 0;
	}
}

//DAttack gatling
if (attack == AT_DATTACK) {
	if window == 2 && window_timer < 4 && has_hit_player {
		can_ustrong = true;
	} else {
		can_ustrong = false;
	}
}

//UAir stuff
if (attack == AT_UAIR){
    if window == 2 && window_timer = 3 {
	vsp = clamp(vsp, -100, -3);
	}
}

//USpecial stuff
if (attack == AT_USPECIAL){
	if window == 4 {
		if (8 > window_timer && has_hit_player && !hitpause && hit_player_obj.super_armor == 0){
			hit_player_obj.hsp = lerp(hit_player_obj.hsp,hsp,0.5);
			hit_player_obj.vsp = lerp(hit_player_obj.vsp,vsp,0.5);
			hit_player_obj.x = lerp(hit_player_obj.x,x,0.1);
			hit_player_obj.y = lerp(hit_player_obj.y,y,0.1);
		}
	}

	can_fast_fall = false;
	can_wall_jump = true;
    if window < 6 {
	vsp = clamp(vsp, -100, 0);
	} 
	if window > 3 && vsp < 1 {
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 9);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 4);
	} else {
	reset_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER);
	reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
	}
	if window == 6 {
		if window_timer == 1 {
			destroy_hitboxes();
		}
	}
}

//FSpecial stuff
if (attack == AT_FSPECIAL){
	can_fast_fall = false;
    if window < 4 {
	vsp = clamp(vsp, -100, 1);
	hsp = clamp(hsp, -2, 2);
	}
}

//NSpecial aiming
if (attack == AT_NSPECIAL) and (3 >= window) {
	if up_down {
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 1.5);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -10);
	}
	else if down_down {
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -2);
	}
	else {
		reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED);
	}
}

//FSpecial cooldown and armor
if (attack == AT_FSPECIAL) {
	if (window == 2) and (window_timer > 4) {
		super_armor = 1;
	} else {
		super_armor = 0;
	}
	if (window == 3) and (window_timer == 1) {
		move_cooldown[AT_FSPECIAL] = 45;
	}
}

//NSpecial cooldown
if (attack == AT_NSPECIAL) and (window == 3) and (window_timer == 1) {
    move_cooldown[AT_NSPECIAL] = 45;
}

//DSpecial cooldown
if (attack == AT_DSPECIAL) and (window == 3) and (window_timer == 1) {
    move_cooldown[AT_DSPECIAL] = 430;
}