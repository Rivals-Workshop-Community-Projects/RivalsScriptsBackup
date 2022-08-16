///
move_cooldown[AT_NSPECIAL_2] = 0
//if (my_hitboxID.attack == AT_DSTRONG or my_hitboxID.attack == AT_FSPECIAL) && my_hitboxID.hbox_num == 2 {
//	hit_player_obj.x += floor(hit_player_obj.hitstop*spr_dir)
//    hit_player_obj.grenadehit = floor(hit_player_obj.hitstop) 
//       
//}

if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 3 {
            	sound_play(asset_get("sfx_absa_kickhit"));
            	sound_play(asset_get("sfx_abyss_explosion"));
           	my_hitboxID.destroyed = true 
           	spawn_hit_fx (my_hitboxID.x , my_hitboxID.y , 253)
}
            
            
if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num <= 2 {
    sound_play(asset_get("sfx_icehit_medium1"));
}


if (my_hitboxID.attack == AT_BAIR or my_hitboxID.attack == AT_UTILT) && my_hitboxID.type == 1 {
    sound_play(asset_get("sfx_blow_medium2"));
}


if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 3 {
    sound_play(asset_get("sfx_icehit_medium1"));
    spawn_hit_fx (hit_player_obj.x, hit_player_obj.y - 40, 303)
}

if my_hitboxID.attack == AT_NSPECIAL && hit_player_obj.free = false {
	hit_player_obj.x += 6 * spr_dir
}

if my_hitboxID.attack == AT_NSPECIAL {
	hit_player_obj.x += 2 * spr_dir
}

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 {
    move_cooldown[AT_FTILT] = 2
    shake_camera(2,2)
}

if ostyle == 3 {
if my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num <= 5 && gun = 0{
	if nbullet < 5 {
    nbullet += 2
	}
}


if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num <= 2{
	bbullet = 2 
}

if my_hitboxID.attack == AT_JAB && gun = 0{
	if nbullet < 5 {
    nbullet += 2
	}
}

if my_hitboxID.attack == AT_FAIR or my_hitboxID.attack == AT_FTILT {
	if bbullet <= 0 {
		sound_play(sound_get("SGL"));
	}
	bbullet = 1
}

if my_hitboxID.attack == AT_UAIR  {
	if bullet ==  0 {
		sound_play(sound_get("SGL"));
	}
	bullet = 1 
}

if my_hitboxID.attack == AT_DTILT  {
	if dbullet ==  0 {
		sound_play(sound_get("SGL"));
		sound_play(sound_get("GL"));
	}
	dbullet = 1
}

}


if ostyle == 1 {
	


if my_hitboxID.damage > 3 {
	     spawn_hit_fx (hit_player_obj.x  + (random_func(1, 36, true))*spr_dir, hit_player_obj.y - 30 - random_func(2, 66, true) , 113)
	
	
	if my_hitboxID.kb_scale >= .7 {
    	
         with hit_player_obj {
                 take_damage( player, -1 , 2)
         }	
         
		 sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,.5 + my_hitboxID.damage/10 , 1.6 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/130 , 1) )
		 
    	
    } else {
    	
    	with hit_player_obj {
                 take_damage( player, -1 , 1)
         }	
         
		    sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,.4 + my_hitboxID.damage/10 , 1.6 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/130 , 1) )
		 
    	
    }
	   	 
}


}