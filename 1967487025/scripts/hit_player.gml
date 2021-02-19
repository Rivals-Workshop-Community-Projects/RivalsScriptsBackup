if (!meter_activated && hit_player_obj != self && !za_wurdo)
	meter_current += round(my_hitboxID.damage * (1 + strong_charge / 100));


if (meter_current >= meter_max) {
	meter_current = meter_max; 
}


if (attack == AT_FSPECIAL && has_hit_player && hit_player_obj.hitstun > 0){
    if (grabbedid == noone) && (window == 3 || window == 4 || window == 5 || window == 6) {
        		hit_player_obj.grabbed = 1;
        		grabbedid = hit_player_obj;
				grabbedid.ungrab = 0;
    }
    attack_end();
    if (window == 3) {
    	destroy_hitboxes();
    	window = 4;
    	window_timer = 0;
    	spr_angle = 0;
    }
}

if attack == AT_USTRONG || attack == AT_FSTRONG && my_hitboxID.hit_priority == 9 || attack == AT_DSTRONG && my_hitboxID.hit_priority == 10 {
	var cfx_x = floor((my_hitboxID.x + hit_player_obj.x) / 2);
	var cfx_y = floor((my_hitboxID.y + hit_player_obj.y - char_height) / 2);
	var cfx = spawn_hit_fx(cfx_x, cfx_y, chaos_heavy);
	cfx.depth -= 100;
} else if attack == AT_NSPECIAL && my_hitboxID.damage == 12 || meter_activated && (attack == AT_NAIR && my_hitboxID.hit_priority == 2 || attack == AT_FAIR || attack == AT_FTILT) {
	var cfx_x = floor((my_hitboxID.x + hit_player_obj.x) / 2);
	var cfx_y = floor((my_hitboxID.y + hit_player_obj.y - char_height) / 2);
	var cfx = spawn_hit_fx(cfx_x, cfx_y, chaos_med);
	cfx.depth -= 100;
} else if runeM && attack == AT_NSPECIAL_2 {
	var cfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - char_height / 2, chaos_heavy);
	cfx.depth -= 100;
}

if attack == AT_DSTRONG {
	hit_player_obj.y = ease_linear(hit_player_obj.y, y, 1, 4);
	hit_player_obj.x = ease_linear(hit_player_obj.x, x, 1, 4);
}

if (meter_activated || runeB) && attack == AT_NAIR {
	hit_player_obj.y -= ((hit_player_obj.y - y) > 0)?8:-8;
	hit_player_obj.x -=	((hit_player_obj.x - x) > 0)?6:-6;
}

if runeN && attack == AT_FTILT && meter_activated && !za_wurdo {
	if get_player_damage(hit_player_obj.player) > 20 {
		var player_damage = clamp(get_player_damage(player), 0, 300);
		var opponent_damage = clamp(get_player_damage(hit_player_obj.player), 0, 160);
		var kill_chance = 1 + 200 * (opponent_damage - 20) / (300 - 20) + 20 * (player_damage / 300);
	}
	else var kill_chance = 1;
	if get_gameplay_time() % 100 < kill_chance {
		create_deathbox(
			hit_player_obj.x, // x
			hit_player_obj.y - hit_player_obj.char_height / 2, // y
			10, // w
			10, // h
			hit_player_obj.player, // player
			true, // free
			0, // shape
			3, // lifespan
			1 // bg_type
		);
		hit_player_obj.hitstop = 0;
	}
}
