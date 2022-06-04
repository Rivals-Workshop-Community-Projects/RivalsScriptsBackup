///

if move_cooldown[AT_TAUNT_2] < 115 && my_hitboxID.type == 1{
	move_cooldown[AT_TAUNT_2] = 0
}
//intro = 1
lockontime = 180

if lockon == 0 {
	lockplayer = hit_player_obj
}

/*
if lockon == 1 && my_hitboxID.type == 1 && move_cooldown[AT_FSPECIAL_2] == 0 && lockplayer = hit_player_obj {
	hitstop += 4
	hit_player_obj.hitstop += 4
	sound_stop(sound_get("RI"));
	sound_play(sound_get("RI"));
	//hhalo = 300
	lockon = 0
	spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 30, 306)
var halodmg = floor(my_hitboxID.damage/3)
with hit_player_obj {
		take_damage( player, -1 , 3 + halodmg)
}	

}
*/

if my_hitboxID.type == 1 && hit_player_obj == lockplayer {
move_cooldown[AT_FSPECIAL_2] = 40
}

if hhalo > 0{

if my_hitboxID.type == 1 {

	hitstop += floor(my_hitboxID.hitpause/2)
	hit_player_obj.hitstop += my_hitboxID.hitpause
}

if my_hitboxID.attack != AT_EXTRA_2 {	
	var halodmg = floor(my_hitboxID.damage / 3)
with hit_player_obj {
		take_damage( player, -1 , halodmg)
}		


spawn_hit_fx (hit_player_obj.x - (10 * spr_dir), hit_player_obj.y - 40, 303)

if my_hitboxID.hitstun_factor != 6 {
	
sound_play(sound_get("slice"),false,noone, 0.5 + my_hitboxID.damage/20, 1 - min( (hitpause*hitpause)/150 , .5 ) )
sound_play(sound_get("RI"),false,noone, 0.2 + my_hitboxID.damage/30, 1 - min( (hitpause*hitpause)/150 , .5 ) )


}

}
}

if introhit = 0 {
	introhit = 1
}



if (my_hitboxID.attack == AT_NSPECIAL or my_hitboxID.attack == AT_FSPECIAL)  && hit_player_obj != self{
    sound_play(sound_get("slice"));
    if hhalo <= 0 {
    lockon = 1
    }
   with hit_player_obj {
		take_damage( player, -1 , 1 )
   }
}

if hhalo <= 0 {
if my_hitboxID.attack == AT_DSPECIAL  {
    lockon = 1
}


if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2  {
    lockon = 1
}



if my_hitboxID.attack == AT_EXTRA_1 {
    lockon = 1
}

if my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_USTRONG or my_hitboxID.attack == AT_BAIR or my_hitboxID.attack == AT_DTILT {
   //lockon = 1
}

if my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num != 2 {
    //lockon = 1
} 

if my_hitboxID.attack == AT_EXTRA_3 {
    lockon = 1
} 

if my_hitboxID.attack == AT_EXTRA_2 {
    lockon = 1
} 

}

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1  {
    window = 3
    window_timer = 0
}

if my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 3  {
    ustronghit = 1
}


   with (asset_get("oPlayer")) {
	if (player != other.player) {
             	if "ai_target" in self && "nname" not in self{
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
        
        
        
        