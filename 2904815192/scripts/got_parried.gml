//got_parried.gml

if (my_hitboxID.attack == AT_NSPECIAL){
	killDice = true;
	diceParried = 20;
}

if (my_hitboxID.attack == AT_DSPECIAL){
	//print(my_hitboxID.propertyNumber);
	var propertyBelongingToHitbox = my_hitboxID.propertyNumber;
	if (propertyBelongingToHitbox == 1){
		with(property1){
			if (numberOfHouses != 0){
				numberOfHouses = 0;
			} else {
				player_id.currCash += 100;
				state = 5;
				state_timer = 0;
			}
		}
	} else if (propertyBelongingToHitbox == 2){
		with(property2){
			if (numberOfHouses != 0){
				numberOfHouses = 0;
			} else {
				player_id.currCash += 100;
				state = 5;
				state_timer = 0;
			}
		}
	} else if (propertyBelongingToHitbox == 3){
		with(property3){
			if (numberOfHouses != 0){
				numberOfHouses = 0;
			} else {
				player_id.currCash += 100;
				state = 5;
				state_timer = 0;
			}
		}
	}
}