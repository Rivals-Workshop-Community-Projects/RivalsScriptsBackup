///

if my_hitboxID.attack == AT_NAIR && !isyellow{
hit_player_obj.x += ((x + (35 * spr_dir)) - hit_player_obj.x) / 2
		hit_player_obj.y += ((y + 10) - hit_player_obj.y) / 2
}

if my_hitboxID.attack == AT_DTILT && !isyellow{
hit_player_obj.x += ((x + (60 * spr_dir)) - hit_player_obj.x) / 2
		hit_player_obj.y += ((y + 10) - hit_player_obj.y) / 2
}

if my_hitboxID.attack == AT_NSPECIAL && !isyellow{
     inkshield_buildup += 15
}

if inkshield > 0 && my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_FSPECIAL && !isyellow && inkshield < 300 {
   inkshield += my_hitboxID.damage * 8
}

if inkshield < 0 && my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_FSPECIAL && !isyellow {
   inkshield_buildup += my_hitboxID.damage * 8
}


if my_hitboxID.attack == AT_DAIR && !isyellow{
hit_player_obj.y += 14
if hit_player_obj.y > room_height/2 + 300 {
	if x > room_height/2 {
	hit_player_obj.x += 10
	} else {
	hit_player_obj.x -= 10	
	}
}


}


zettachoose = 0
alexchoose = 0
sajichoose = 0
mayuchoose = 0
akaichoose = 0
       //create_hitbox(AT_NSPECIAL, 8, x, y - 40 )
       
       ink += my_hitboxID.damage*5

if my_hitboxID.type == 1 && my_hitboxID.damage >= 3 && inkshield > 0 {
       
            if get_gameplay_time() % 10 = random_func(6,10,true) {
                create_hitbox(AT_DSPECIAL, 1, x + 200 - random_func(1,400,true), y - 14)
                hitstop = 33
            }
            
            if get_gameplay_time() % 10 = random_func(7,10,true) {
                create_hitbox(AT_DSPECIAL, 4, x + 200 - random_func(1,400,true), y - 14)
                hitstop = 33
            }
            
            if get_gameplay_time() % 10 = random_func(8, 10,true) {
                create_hitbox(AT_DSPECIAL, 3, x + 200 - random_func(1,400,true), y - 14)
                hitstop = 33
            }
            
            if get_gameplay_time() % 10 = random_func(9,10,true) {
                create_hitbox(AT_DSPECIAL, 2, x + 200 - random_func(1,400,true), y - 14)
                hitstop = 33
            }
            
            if get_gameplay_time() % 10 = random_func(10,10,true) {
                create_hitbox(AT_DSPECIAL, 5, x + 200 - random_func(1,400,true), y - 14)
                hitstop = 33
            }
            
}

if my_hitboxID.type == 1 && my_hitboxID.damage >= 3 {
       
            if get_gameplay_time() % 30 = random_func(1,30,true) {
                create_hitbox(AT_DSPECIAL, 1, x + 200 - random_func(1,400,true), y - 14)
                hitstop = 33
            }
            
            if get_gameplay_time() % 30 = random_func(2,30,true) {
                create_hitbox(AT_DSPECIAL, 4, x + 200 - random_func(1,400,true), y - 14)
                hitstop = 33
            }
            
            if get_gameplay_time() % 30 = random_func(3,30,true) {
                create_hitbox(AT_DSPECIAL, 3, x + 200 - random_func(1,400,true), y - 14)
                hitstop = 33
            }
            
            if get_gameplay_time() % 30 = random_func(4,30,true) {
                create_hitbox(AT_DSPECIAL, 2, x + 200 - random_func(1,400,true), y - 14)
                hitstop = 33
            }
            
            if get_gameplay_time() % 30 = random_func(5,30,true) {
                create_hitbox(AT_DSPECIAL, 5, x + 200 - random_func(1,400,true), y - 14)
                hitstop = 33
            }
            
       if hitstop == 33 {
       	sound_play(sound_get("counterhit")) 	
    	sound_play(asset_get("sfx_bird_downspecial")) 
    	sound_play(asset_get("sfx_orca_absorb")) 
    	invincible = true
    	invince_time = 43
       }
            
}



            