		//the "pseudo-dynamic" system
		//holy hecka heck

		var wdw_amt = get_attack_value(attack, AG_NUM_WINDOWS);
		var wdw_len = get_window_value(attack, window, AG_WINDOW_LENGTH);
		var item = get_attack_value(attack, AG_PD_ITEM);
		var mlport = (get_attack_value(attack, AG_PD_ML_PORT))?-1:1
		var x_store = x + (get_attack_value(attack, AG_PD_LOC_X) * spr_dir * mlport);
		var y_store = y + get_attack_value(attack, AG_PD_LOC_Y);
		var r_store = (get_attack_value(attack, AG_PD_ROT) * spr_dir * mlport);
		if (window > 1){
			for (var i = 1; i < window; i += 1){
				x_store += get_window_value(attack, i, AG_RIGHT) * spr_dir * mlport;
				x_store -= get_window_value(attack, i, AG_LEFT) * spr_dir * mlport;
				y_store += get_window_value(attack, i, AG_DOWN)
				y_store -= get_window_value(attack, i, AG_UP);
				r_store += get_window_value(attack, i, AG_ROTATE) * spr_dir * (mlport*-1);
			}
		}
		var up = get_window_value(attack, window, AG_UP);
		var down = get_window_value(attack, window, AG_DOWN);
		var left = get_window_value(attack, window, AG_LEFT) * spr_dir * mlport;
		var right = get_window_value(attack, window, AG_RIGHT) * spr_dir * mlport;
		var rotate = get_window_value(attack, window, AG_ROTATE) * spr_dir * (mlport*-1);
		var dir = ((get_window_value(attack, window, AG_DIR)>=0)?1:-1) * spr_dir * mlport;
		var x_adv = lerp(x_store, x_store - left + right, window_timer/wdw_len)
		var y_adv = lerp(y_store, y_store - up + down, window_timer/wdw_len)
		var r_adv = lerp(r_store, r_store + rotate, window_timer/wdw_len)
		
		draw_sprite_ext( item, item_cell, x_adv, y_adv, dir*2, 2, r_adv, -1, 1 )
		
		//