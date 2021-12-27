if(my_hitboxID.attack == AT_USPECIAL){
	if(my_hitboxID.hbox_num == 1){
		obj_article2.state = 2
		obj_article2.state_timer = 0
	}
}

if(my_hitboxID.attack == AT_FSPECIAL){
	fspecial_can_attack = true
}

if(my_hitboxID.attack == AT_DTILT && attack == AT_DTILT){
	if(window == 2 || window == 3){
	window = 5
	window_timer = 0
	}
}

if(my_hitboxID.attack == AT_DSTRONG){
	if(my_hitboxID.hbox_num == 1 ||
	my_hitboxID.hbox_num == 2 ||
	my_hitboxID.hbox_num == 3 ||
	my_hitboxID.hbox_num == 4 ||
	my_hitboxID.hbox_num == 5){
        grabbedid = hit_player_obj;
        hit_player_obj.grabbed = 1;
		grabbedid.ungrab = 0;
	}
}

if(waterCharges < 3){
	if(my_hitboxID.attack == AT_USPECIAL){
		if(my_hitboxID.hbox_num == 2){
			waterLevel += 40
		}
	}
	if(my_hitboxID.attack == AT_DSPECIAL){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 5
			saw_blade.multi_hits += 1
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 15
		}
	}
	if(my_hitboxID.attack == AT_FTILT){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 20
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 15
		}
	}
	if(my_hitboxID.attack == AT_DTILT){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 5
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 10
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 10
		}
	}
	if(my_hitboxID.attack == AT_FSPECIAL){
		if(my_hitboxID.hbox_num == 1){ //1st
			waterLevel += 9
		}else if(my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num ==  3){ // 2nd upwards/normal
			waterLevel += 12
		}else if(my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6){ //2nd downwards
			waterLevel += 4
		}else if(my_hitboxID.hbox_num == 7 || my_hitboxID.hbox_num == 8){ // 3rd upwards/normal
			waterLevel += 15
		}else if(my_hitboxID.hbox_num == 9 || my_hitboxID.hbox_num == 10 || my_hitboxID.hbox_num == 11){ //3rd downwards
			waterLevel += 5
		}
	}
	if(my_hitboxID.attack == AT_NAIR){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 20
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 20
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 12
		}else if(my_hitboxID.hbox_num == 4){
			waterLevel += 12
		}
	}
	if(my_hitboxID.attack == AT_FAIR){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 10
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 6
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 6
		}else if(my_hitboxID.hbox_num == 4){
			waterLevel += 6
		}else if(my_hitboxID.hbox_num == 5){
			waterLevel += 10
		}
	}
	if(my_hitboxID.attack == AT_BAIR){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 18
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 25
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 8
		}
	}
	if(my_hitboxID.attack == AT_UAIR){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 15
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 20
		}
	}
	if(my_hitboxID.attack == AT_DAIR){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 18
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 23
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 30
		}
	}
	if(my_hitboxID.attack == AT_UTILT){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 15
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 15
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 40
		}
	}
	if(my_hitboxID.attack == AT_JAB){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 10
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 5
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 3
		}else if(my_hitboxID.hbox_num == 4){
			waterLevel += 3
		}else if(my_hitboxID.hbox_num == 5){
			waterLevel += 3
		}else if(my_hitboxID.hbox_num == 6){
			waterLevel += 3
		}else if(my_hitboxID.hbox_num == 7){
			waterLevel += 15
		}
	}
	if(strongAttack == false){
		if(my_hitboxID.attack == AT_USTRONG){
			if(my_hitboxID.hbox_num == 1){
				waterLevel += 9
			}else if(my_hitboxID.hbox_num == 2){
				waterLevel += 5
			}else if(my_hitboxID.hbox_num == 3){
				waterLevel += 5
			}else if(my_hitboxID.hbox_num == 4){
				waterLevel += 5
			}else if(my_hitboxID.hbox_num == 5){
				waterLevel += 5
			}else if(my_hitboxID.hbox_num == 6){
				waterLevel += 5
			}else if(my_hitboxID.hbox_num == 7){
				waterLevel += 7
			}
		}
		if(my_hitboxID.attack == AT_FSTRONG){
			if(my_hitboxID.hbox_num == 1){
				waterLevel += 10
			}else if(my_hitboxID.hbox_num == 2){
				waterLevel += 25
			}else if(my_hitboxID.hbox_num == 3){
				waterLevel += 25
			}else if(my_hitboxID.hbox_num == 4){
				waterLevel += 9
			}
		}
		if(my_hitboxID.attack == AT_DSTRONG){
			if(my_hitboxID.hbox_num == 1 ||
			my_hitboxID.hbox_num == 2 ||
			my_hitboxID.hbox_num == 3 ||
			my_hitboxID.hbox_num == 4 ||
			my_hitboxID.hbox_num == 5){
				waterLevel += 8
			}else if(my_hitboxID.hbox_num == 6){
				waterLevel += 12
			}
		}
	}
	if(my_hitboxID.attack == AT_DATTACK){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 15
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 7
		}
	}
}

if(attack == AT_NSPECIAL){
	if(waterCharges < 3){
	waterCharges += 1
	}
	stupid_hit_var = true
}

if(attack == AT_DATTACK){
	if(window == 2 && window_timer < 10){
		window_timer = 10
	}
}

combatTimer = 40
