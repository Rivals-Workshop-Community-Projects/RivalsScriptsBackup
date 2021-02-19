if(my_hitboxID.attack == AT_USPECIAL){
	if(my_hitboxID.hbox_num == 1){
		obj_article2.state = 2
		obj_article2.state_timer = 0
	}
}

if(attack == AT_FSPECIAL){
	if(free){
		if(window == 2){
		can_jump = true
		}
	}
}

if(attack == AT_DTILT){
	if(window == 2 || window == 3){
	window = 5
	window_timer = 0
	}
}

if(waterCharges < 3){
	if(my_hitboxID.attack == AT_FTILT){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 14
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 11
		}
	}
	if(my_hitboxID.attack == AT_DTILT){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 5
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 9
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 9
		}
	}
	if(my_hitboxID.attack == AT_FSPECIAL && !free){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 9
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 10
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 11
		}
	}
	if(my_hitboxID.attack == AT_NAIR){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 14
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 14
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 9
		}else if(my_hitboxID.hbox_num == 4){
			waterLevel += 9
		}
	}
	if(my_hitboxID.attack == AT_FAIR){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 7
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 4
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 4
		}else if(my_hitboxID.hbox_num == 4){
			waterLevel += 4
		}else if(my_hitboxID.hbox_num == 5){
			waterLevel += 8
		}
	}
	if(my_hitboxID.attack == AT_BAIR){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 17
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 20
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 7
		}
	}
	if(my_hitboxID.attack == AT_UAIR){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 11
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 12
		}
	}
	if(my_hitboxID.attack == AT_DAIR){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 16
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 11
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 21
		}
	}
	if(my_hitboxID.attack == AT_UTILT){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 11
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 11
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 25
		}
	}
	if(my_hitboxID.attack == AT_JAB){
		if(my_hitboxID.hbox_num == 1){
			waterLevel += 8
		}else if(my_hitboxID.hbox_num == 2){
			waterLevel += 5
		}else if(my_hitboxID.hbox_num == 3){
			waterLevel += 2
		}else if(my_hitboxID.hbox_num == 4){
			waterLevel += 3
		}else if(my_hitboxID.hbox_num == 5){
			waterLevel += 2
		}else if(my_hitboxID.hbox_num == 6){
			waterLevel += 3
		}else if(my_hitboxID.hbox_num == 7){
			waterLevel += 12
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
				waterLevel += 7
			}else if(my_hitboxID.hbox_num == 2){
				waterLevel += 12
			}else if(my_hitboxID.hbox_num == 3){
				waterLevel += 11
			}else if(my_hitboxID.hbox_num == 4){
				waterLevel += 9
			}
		}
		if(my_hitboxID.attack == AT_DSTRONG){
			if(my_hitboxID.hbox_num == 1){
				waterLevel += 5
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
				waterLevel += 8
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
}

if(attack == AT_DATTACK){
	if(window == 2 && window_timer < 10){
		window_timer = 10
	}
}

combatTimer = 40
