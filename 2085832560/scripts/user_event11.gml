//// INFERNAL ENERGY

if my_hitboxID.type == 2 {
  	
   old_hsp = hsp
   old_vsp = vsp
   
}


if get_player_color(player) == 7 && move_cooldown[AT_TAUNT] == 0{ 

	
	if get_gameplay_time() % 20 == 16 {
	 sound_play(sound_get("isa6"));
	 move_cooldown[AT_TAUNT] = 40	
	}
	
	if get_gameplay_time() % 20 == 5 {
	 sound_play(sound_get("isa5"));
	 move_cooldown[AT_TAUNT] = 40	
	}
	
	if get_gameplay_time() % 20 == 14 {
	 sound_play(sound_get("isa3"));
	 move_cooldown[AT_TAUNT] = 10	
	}
	
	if get_gameplay_time() % 20 == 3 {
	 sound_play(sound_get("isa2"));
	 move_cooldown[AT_TAUNT] = 40	
	}
	
	if get_gameplay_time() % 20 == 12 {
	 sound_play(sound_get("isa2"));
	 move_cooldown[AT_TAUNT] = 40	
	}
	
	if get_gameplay_time() % 20 == 1 {
	 sound_play(sound_get("isa1"));
	 move_cooldown[AT_TAUNT] = 40	
	}
	

	

}

if introhit = 0 {
	introhit = 1
}
intro = 1

	if rank >= 4 &&  my_hitboxID.damage > 1 {   
		 sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone, 0.6 + my_hitboxID.damage/20)


		if my_hitboxID.type == 1 && my_hitboxID.attack != AT_TAUNT{
			hitstop += 2
			hit_player_obj.hitstop += 2
		}
	if my_hitboxID.damage > 2 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , 1)
         }	
         
     }

	}

///if my_hitboxID.attack != AT_EXTRA_1 and my_hitboxID.attack != AT_EXTRA_2
///and my_hitboxID.attack != AT_EXTRA_3 and move_cooldown[AT_FSPECIAL_2] == 0{
///	
///if infernal2 < 300{
///
///
///    infernal2 += min(30,floor(my_hitboxID.damage * 2 * (rank/2 + 1)))
///
///if attack != AT_USTRONG and attack != AT_FSTRONG and attack != AT_DSTRONG and attack != AT_USPECIAL and attack != AT_DAIR{
///    move_cooldown[AT_FSPECIAL_2] = 15
///}
///
///}
///
///}

if infernal2 < 300{
	if my_hitboxID.type == 1 {
	infernal2 += min(15,floor(hit_player_obj.hitstop * 3 * (rank/2 + 1)))
	    if my_hitboxID.attack == AT_NAIR {
	    move_cooldown[AT_USPECIAL_GROUND] = 30
	    }
	} else {
		
	    
		if my_hitboxID.damage <= 2 && move_cooldown[AT_USPECIAL_GROUND] == 0 {
			infernal2 += 2
	    	move_cooldown[AT_USPECIAL_GROUND] = 5
		}
	    if my_hitboxID.damage > 2 && my_hitboxID.damage <= 6 && move_cooldown[AT_USPECIAL_GROUND] == 0 {
			infernal2 += 10
			move_cooldown[AT_USPECIAL_GROUND] = 8	
		}
		if my_hitboxID.damage > 6 && move_cooldown[AT_USPECIAL_GROUND] == 0 {
			infernal2 += 20
			move_cooldown[AT_USPECIAL_GROUND] = 12
		}
		
	    if my_hitboxID.attack == AT_NAIR {
	    move_cooldown[AT_USPECIAL_GROUND] = 30
	    }
	    
	}
}

///

if my_hitboxID.attack == AT_FAIR {
      sound_play(asset_get("sfx_clairen_tip_strong"));
    	
}

if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 4 {
     sound_play(asset_get("sfx_clairen_tip_strong"));
}

if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num >= 5 {
     sound_play(asset_get("sfx_clairen_tip_strong"));
}



/// UAIR
if my_hitboxID.attack == AT_UAIR {
    
 hit_player_obj.y -= 20   
}


///

/// USTRONG ACID RAIN
if my_hitboxID.attack == AT_EXTRA_3 && my_hitboxID.hbox_num == 3 {
    
    move_cooldown[AT_USTRONG] = 40
create_hitbox(AT_EXTRA_3 , 6 ,hit_player_obj.x   , hit_player_obj.y - 700 );

create_hitbox(AT_EXTRA_3 , 4 ,hit_player_obj.x   , hit_player_obj.y - 300 );
create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x - random_func(12, 100, true)  , hit_player_obj.y - 300 - random_func(10, 100, true));
create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x + random_func(13, 100, true)  , hit_player_obj.y - 300 - random_func(11, 100, true));
  create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x - random_func(10, 100, true) + 50  , hit_player_obj.y - 400 - random_func(12, 100, true));
        create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x + random_func(11, 100, true) + 50  , hit_player_obj.y - 400 - random_func(13, 100, true));
}

if my_hitboxID.attack == AT_EXTRA_3 && my_hitboxID.hbox_num == 4 {
    
    move_cooldown[AT_USTRONG] = 40



create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x - random_func(12, 100, true)  , hit_player_obj.y - 300 - random_func(10, 100, true));
create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x + random_func(13, 100, true)  , hit_player_obj.y - 300 - random_func(11, 100, true));
 create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x - random_func(10, 100, true) + 50  , hit_player_obj.y - 200 - random_func(12, 100, true));
        create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x + random_func(11, 100, true) + 50  , hit_player_obj.y - 200 - random_func(13, 100, true));
 
}


////


if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 4 {

sound_play(sound_get("slice"));

}

if my_hitboxID.attack == AT_UTILT {

sound_play(sound_get("slice"));
 
}

if my_hitboxID.attack == AT_DSPECIAL {
state_timer = 10
sound_play(sound_get("bonk"),false,noone,1.5,1);
 
}

if my_hitboxID.attack == AT_FAIR {

sound_play(sound_get("slice"));
 
}

if my_hitboxID.attack == AT_USTRONG {
 
 move_cooldown[AT_USTRONG] = 40
 
 uhit = 1   
    
}



//////////GUNS

if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 2 {
     	destroyed = 1
    	create_hitbox(AT_BAIR , 3 , hit_player_obj.x , hit_player_obj.y - 30  );
    	
}


if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 7 {
    var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( hit_player_obj.x , hit_player_obj.y - 32 , exp1 )
		destroyed = 1
        spawn_hit_fx( hit_player_obj.x , hit_player_obj.y - 32 , 306 )
}


if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num >= 9 && my_hitboxID.hbox_num <= 11  {
    	spawn_hit_fx( hit_player_obj.x , hit_player_obj.y - 32 , 303 )

    hit_player_obj.y += floor( (y - 6 -  hit_player_obj.y))

}

if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 13  {
    	sound_play(sound_get("exp1"));
		sound_play(sound_get("gun5"));
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx(  hit_player_obj.x , hit_player_obj.y - 32 , exp1 )
		destroyed = 1
		create_hitbox(AT_EXTRA_1 , 15 , hit_player_obj.x , hit_player_obj.y  );
}

if my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 7  {
	sound_play(sound_get("exp1"));
	sound_play(asset_get("sfx_abyss_explosion"));
			
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( hit_player_obj.x , hit_player_obj.y - 32 , exp1 )
		destroyed = 1
}

if my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 2  {

		var exp2 = hit_fx_create( sprite_get( "exp2" ), 32 );
		spawn_hit_fx( hit_player_obj.x , hit_player_obj.y - 50 , exp2 )
}

if my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num >= 21 {
    
    	create_hitbox(AT_EXTRA_3 , 1 ,x   , y - 10 );
		create_hitbox(AT_EXTRA_3 , 2 ,x   , y - 10 );
	
}


rankm += my_hitboxID.damage*20
if rank == 0 && rankm < 120 {
	rankm += 100
}
inactive = 120


   