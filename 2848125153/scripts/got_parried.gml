//

if(hit_player_obj != self){
	if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.dicenum != 0 || my_hitboxID.attack != AT_NSPECIAL){
		if(current_money >= 5000 && my_hitboxID.type == 1 && (my_hitboxID.type == 1 && (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num > 2 || my_hitboxID.attack != AT_JAB))){
			current_money -= 1000;
		}
		if(current_money >= 500 && (my_hitboxID.type == 1 && (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num > 2 || my_hitboxID.attack != AT_JAB) || my_hitboxID.type == 2)){
			sound_play(sound_get("money_pickup2"),false,noone,2)
			sound_play(sound_get("money_pickup3"),false,noone,2)
			var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 7-random_func(0, 14, true);money.vsp = -3-random_func(1, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;;
			current_money -= 500;
			if(current_money >= 500){
				var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 7-random_func(1, 14, true);money.vsp = -3-random_func(2, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;;
				current_money -= 500;
			}
			if(current_money >= 500){
				var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 7-random_func(2, 14, true);money.vsp = -3-random_func(3, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;;
				current_money -= 500;
			}
			if(/*my_hitboxID.type == 1*/ my_hitboxID.damage > 6){
				if(current_money >= 500){
					var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 7-random_func(3, 14, true);money.vsp = -3-random_func(4, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;;
					current_money -= 500;
				}
				if(current_money >= 500){
					var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 7-random_func(4, 14, true);money.vsp = -3-random_func(5, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;;
					current_money -= 500;
				}
				if(current_money >= 500){
					var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 7-random_func(5, 14, true);money.vsp = -3-random_func(6, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;;
					current_money -= 500;
				}
			}
		}
		
		if(current_money < 0){
		    current_money = 0;
		}
	}
	if(my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_BAIR){
		var angle3 = point_direction(my_hitboxID.x, my_hitboxID.y, x, y - 45);
		my_hitboxID.hsp = lengthdir_x(-24, angle3);
	    my_hitboxID.vsp = lengthdir_y(-24, angle3);
	}
	if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num <= 3){
		my_hitboxID.destroying = true;my_hitboxID.was_parried2 = true;
	}
}