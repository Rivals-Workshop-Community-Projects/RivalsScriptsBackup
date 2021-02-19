///

if hhalo > 0{
	

	hhalo = 180


if my_hitboxID.attack != AT_EXTRA_2 {	
	var halodmg = floor(my_hitboxID.damage / 2)
with hit_player_obj {
		take_damage( player, -1 , halodmg)
}		


spawn_hit_fx (hit_player_obj.x - (10 * spr_dir), hit_player_obj.y - 40, 303)

if my_hitboxID.damage > 4 {
sound_play(sound_get("RI2"));
}

}	
}

if introhit = 0 {
	introhit = 1
}

intro = 1
lockontime = 180

if (my_hitboxID.attack == AT_NSPECIAL or my_hitboxID.attack == AT_FSPECIAL)  && hit_player_obj != self{
    sound_play(sound_get("slice"));
    lockon = 1
    
 		if get_gameplay_time() % 4 <= 1 {   
   with hit_player_obj {
		take_damage( player, -1 , 1 )
}
}

}

if my_hitboxID.attack == AT_DSPECIAL  {
    lockon = 1
}


if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2  {
    lockon = 1
}

if my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 3  {
    ustronghit = 1
}


if my_hitboxID.attack == AT_EXTRA_1 {
    lockon = 1
}

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1  {
    window = 3
    window_timer = 0
}

if my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_USTRONG or my_hitboxID.attack == AT_BAIR {
   lockon = 1
}

if my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num != 2 {
    lockon = 1
} 


if my_hitboxID.attack == AT_FSPECIAL && hhalo > 0 {
   create_hitbox(AT_NSPECIAL , 1 , x - (20 * spr_dir) , y - 90 );
   create_hitbox(AT_NSPECIAL , 2 , x - (30 * spr_dir) , y - 100 );
   create_hitbox(AT_NSPECIAL , 3 , x - (40 * spr_dir) , y - 110 );
   
   
}





   with (asset_get("oPlayer")) {
	if (player != other.player) {
             	if "ai_target" in self {
             		if url != "2108469290" {
                   move_cooldown[AT_DSPECIAL] = 60
                   move_cooldown[AT_FSPECIAL] = 60
                   if move_cooldown[AT_USPECIAL] < 30{
                   move_cooldown[AT_USPECIAL] = 30
                   }
                   move_cooldown[AT_NSPECIAL] = 60
				   move_cooldown[AT_DTILT] = 60
				   move_cooldown[AT_UTILT] = 60
				   move_cooldown[AT_FTILT] = 60
				   move_cooldown[AT_JAB] = 60
				   move_cooldown[AT_DATTACK] = 60
				   move_cooldown[AT_DSTRONG] = 60
				   move_cooldown[AT_FSTRONG] = 60
				   move_cooldown[AT_USTRONG] = 60
				   move_cooldown[AT_BAIR] = 60
				   move_cooldown[AT_FAIR] = 60
				   move_cooldown[AT_NAIR] = 60
				   move_cooldown[AT_UAIR] = 60
				   move_cooldown[AT_DAIR] = 60
             	}
             	}
					
				}
			}
        
        