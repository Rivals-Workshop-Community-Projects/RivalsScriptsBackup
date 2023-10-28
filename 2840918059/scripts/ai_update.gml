//Charged Specials
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
	if (BAR >= 5){
		special_down = true;
	}
}


//Jump Cancels
if (ai_recovering){
	if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2 || attack == AT_DAIR){
		jump_pressed = true;
	}
}
