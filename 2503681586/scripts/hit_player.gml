//
/*
if my_hitboxID.attack == AT_FSPECIAL {
	y -= 4
}
*/

/* Hitting Bubbleless Clownfish doesn't do hitpause
if my_hitboxID.attack == AT_DAIR && hit_player_obj.is_nana && hit_player_obj.player == player && hit_player_obj.clownState == 1 {
	hitstop = 0
	hit_player_obj.hitstop = 0
}
*/


/*Grab Code (when adding new grabs look in)
hit_player.gml
update.gml
*/
if  (
	(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) 
	|| (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 3)
	|| (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 3)
	//|| (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 && special_down) //FSPECIAL GRAB (No Worky)
) && (hit_player_obj.state_cat == SC_HITSTUN || hit_player_obj.is_nana)
{
	/* FSPECIAL GRAB (No Worky)
	if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 && special_down && !jump_pressed && !jump_down) {
		fspecialDidHold = 1
	}
	*/
	destroy_hitboxes()
	attack_end()
	shouldThrow = 1
	anemoneGrab = hit_player_obj
}



