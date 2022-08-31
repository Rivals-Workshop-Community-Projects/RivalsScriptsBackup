var hit_att = my_hitboxID.attack;
var hit_num = my_hitboxID.hbox_num;

if (hit_att == AT_FSTRONG && hit_num == 1) {
	if (grabbed_id == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.clone) {
		hit_player_obj.grabbed = 1;
		magic_charge();
		grabbed_id = hit_player_obj;
		grabbed_id.ungrab = 0;
		//print("HIT");
		window = 6;
		window_timer = 0;
		destroy_hitboxes();
	}
}

if (hit_att == AT_DSTRONG && hit_num == 1) {
	if (grabbed_id == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.clone) {
		hit_player_obj.grabbed = 1;
		magic_charge();
		grabbed_id = hit_player_obj;
		grabbed_id.ungrab = 0;
		//print("HIT DSTRONG");
		window = 6;
		window_timer = 0;
		destroy_hitboxes();
	}
}

if (hit_att == AT_USTRONG && hit_num == 1) {
	if (grabbed_id == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.clone) {
		hit_player_obj.grabbed = 1;
		magic_charge();
		grabbed_id = hit_player_obj;
		grabbed_id.ungrab = 0;
		//print("HIT DSTRONG");
		window = 6;
		window_timer = 0;
		destroy_hitboxes();
	}
}

if (hit_att == AT_NSPECIAL && hit_num == 1) {
	if (grabbed_id == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.clone) {
		hit_player_obj.grabbed = 1;
		grabbed_id = hit_player_obj;
		grabbed_id.ungrab = 0;
		//print("HIT DSTRONG");
		if (free) {
			attack_end();
			attack = AT_DTHROW;
			window = 1;
			window_timer = 0;
		}
		else {
			window = 4;
			window_timer = 0;
		}
		destroy_hitboxes();
	}
}

if (hit_att == AT_FTHROW || hit_att == AT_DTHROW || hit_att == AT_NTHROW || hit_att == AT_UTHROW) {
	magic_charge();
}


#define magic_charge()
if (magic_charges < max_magic) {
	magic_charges += 1;
}