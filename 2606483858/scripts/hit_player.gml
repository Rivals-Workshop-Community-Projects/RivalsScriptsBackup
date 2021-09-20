if my_hitboxID.attack == AT_FSTRONG{
    sound_play(asset_get("sfx_blow_heavy2"))
}
if my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 4{
    sound_play(asset_get("sfx_blow_heavy2"))
}
if my_hitboxID.attack == AT_DSTRONG{
    sound_play(asset_get("sfx_blow_heavy2"))
}
if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 3{
    sound_play(asset_get("sfx_blow_heavy2"))
}
if my_hitboxID.attack == AT_NAIR{
    old_vsp = -5;
}
if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 2{
    old_vsp = -5;
}
if((my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_UAIR) && my_hitboxID.hbox_num == 2){
    sick_existance = spawn_hit_fx(x,y-80,sick_fx);
    sick_existance.spr_dir = 1;
    sick_existance.depth = depth - 6;
}

//Grabbing opponent
if (my_hitboxID.attack == AT_FSPECIAL && mic_grab == false){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        //Initiates the Mic grab (sets the variables)
	        if (my_hitboxID.hbox_num == 1){
				set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
		        mic_grab = true;
		        mic_timer = 120;	//Total decision time
	            window = 5;
	            window_timer = 1;
	        }
	        
	  }
}

//USpecial
if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1){
	//Saves the player that was hit
	stored_player = hit_player_obj.player;
	arrow_hit = true;
	arrow.state_timer = -40;
	//If I was hit, change this
	if (hit_player_obj = my_hitboxID.player_id && hit_player_obj.prev_state != PS_HITSTUN){
		arrow_myself = true;
	}
}
else {
	arrow_hit = false;
}