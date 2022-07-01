//Up Special 2 PART
if (ai_recovering){
	if (attack == AT_USPECIAL && window > 2){
		special_pressed = true;
	}
}

//Jab Infinite
if (attack == AT_JAB){
	if (window > 1){
		attack_pressed = true;
	}
}