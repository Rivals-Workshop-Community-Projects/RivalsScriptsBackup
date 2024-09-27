// code for kamehameha






	
if (my_hitboxID.attack == AT_DAIR && window == 3)
{
     has_dair_hit = true;
}

if (Reved = true ) 
{
    take_damage(hit_player_obj.player,player, 2);
}

if (my_hitboxID.attack == AT_DSPECIAL){
    if (my_hitboxID.hbox_num == 1){
        take_damage(player, -6, -6)
    }
}

if (my_hitboxID.attack == AT_USPECIAL_GROUND){
    if (my_hitboxID.hbox_num == 1){
                set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 5);
                 window = 4;
                 timer = 120


    }
}
if (my_hitboxID.attack == 49){
	if (my_hitboxID.hbox_num == 1){
		hit_player_obj.state = PS_HITSTUN;
	    hit_player_obj.state_timer = 1;
	    hit_player_obj.hitpause = true;
	    hit_player_obj.hitstop = 150;
	}
}
if (my_hitboxID.attack == 49){
	if (my_hitboxID.hbox_num == 2){
		hit_player_obj.state = PS_HITSTUN;
	    hit_player_obj.state_timer = 1;
	    hit_player_obj.hitpause = true;
	    hit_player_obj.hitstop = 150;
	}
}

if (my_hitboxID.attack == 49){
	if (my_hitboxID.hbox_num == 3){
		hit_player_obj.state = PS_HITSTUN;
	    hit_player_obj.state_timer = 1;
	    hit_player_obj.hitpause = true;
	    hit_player_obj.hitstop = 30;
	}
}

