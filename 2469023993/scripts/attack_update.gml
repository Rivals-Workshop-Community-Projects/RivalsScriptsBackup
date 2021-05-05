//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FSPECIAL) {
    if (window == 2 && has_hit_player == true && hitpause == false) {
        window = 4;
        window_timer = 0;
    }
    
    if (window == 3 && window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH) && has_hit_player == false && !free) {
        iasa_script();
        set_state(PS_IDLE);
    }
	
	if (window == 3 && window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH) && has_hit_player == false && free) {
        iasa_script();
        set_state(PS_IDLE_AIR);
    }
}

if (attack == AT_DSPECIAL) {
    can_fast_fall = false;
	can_move = false;
    if (window == 3 && window_timer == get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH) && has_hit_player == false) {
        iasa_script();
        set_state(PS_IDLE);
    }
}

if (window == 1 && attack == AT_DSPECIAL) super_armor = false;
if (window == 2 && attack == AT_DSPECIAL) super_armor = true;
if (window == 3 && attack == AT_DSPECIAL) super_armor = false;
if (window == 4 && attack == AT_DSPECIAL && window_timer > 10) super_armor = false;
	

if (window == 2 && attack == AT_USPECIAL && window_timer < 20) super_armor = true;
if (window == 2 && attack == AT_USPECIAL && window_timer > 20) super_armor = false;
	
if (attack == AT_DSPECIAL){
	move_cooldown[AT_DSPECIAL] = 20;
	move_cooldown[AT_NSPECIAL] = 20;
	move_cooldown[AT_FSTRONG] = 15;
	move_cooldown[AT_DSTRONG] = 15;
	move_cooldown[AT_USTRONG] = 15;
}

if (attack == AT_USPECIAL){
	move_cooldown[AT_USPECIAL] = 25;
}

if (attack == AT_NSPECIAL){
	can_fast_fall = false;
	can_wall_jump = false;
	can_jump = false;
	move_cooldown[AT_NSPECIAL] = 60;
	move_cooldown[AT_DSPECIAL] = 15;
	move_cooldown[AT_FSTRONG] = 15;
	move_cooldown[AT_DSTRONG] = 15;
	move_cooldown[AT_USTRONG] = 15;
}

if (attack == AT_FSPECIAL){
	used_fspecial = true;
	can_jump = false;
	can_fast_fall = false;
}

if (attack == AT_FSPECIAL){
	if (window == 4){
		can_move = false;
	}
}

if (attack == AT_USPECIAL){
	can_wall_jump = true;
	can_fast_fall = false;
}

if (attack == AT_FSTRONG){
	move_cooldown[AT_FSTRONG] = 15;
	move_cooldown[AT_DSTRONG] = 15;
	move_cooldown[AT_USTRONG] = 15;
	move_cooldown[AT_NSPECIAL] = 20;
	move_cooldown[AT_DSPECIAL] = 15;
}

if (attack == AT_DSTRONG){
	move_cooldown[AT_FSTRONG] = 15;
	move_cooldown[AT_DSTRONG] = 15;
	move_cooldown[AT_USTRONG] = 15;
	move_cooldown[AT_NSPECIAL] = 20;
	move_cooldown[AT_DSPECIAL] = 15;
}

if (attack == AT_USTRONG){
	move_cooldown[AT_FSTRONG] = 15;
	move_cooldown[AT_DSTRONG] = 15;
	move_cooldown[AT_USTRONG] = 15;
	move_cooldown[AT_NSPECIAL] = 20;
	move_cooldown[AT_DSPECIAL] = 15;
}
if (attack == AT_USPECIAL){
    if (window == 2){
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= 0;
            vsp *= 0;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
		if swift_mode = false{
			var max_speed = 3.75;
		}
		if swift_mode = true{
			var max_speed = 4.5;
		}
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
		if (window == 2 && window_timer > 45 && shield_pressed || window_timer > 45 && attack_pressed || window_timer > 45 && special_pressed){
            window = 3;
			window_timer = 2;
			sound_play(sound_get("shadowrefresh"))
        }
    }
}


if swift_mode = false{
	var max_speed = 3.75;
}
if attack == AT_TAUNT_2 {
	if window == 1 {
        if window_timer == 1 && down_down && training{
			user_event(0);
			move_cooldown[AT_TAUNT] = 666;
		}
	}
}

if (attack == AT_FSPECIAL){
	if (window < 4 && has_walljump){
		can_wall_jump = true;
	}
}