//// INFERNAL ENERGY



if get_player_color(player) == 7{ 

	
	if get_gameplay_time() % 20 == 16 {
	 sound_stop(sound_get("isa1"));
	 sound_stop(sound_get("isa2"));
	 sound_stop(sound_get("isa3"));
	 sound_stop(sound_get("isa4"));
	 sound_stop(sound_get("isa5"));
	 sound_play(sound_get("isa6"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 20 == 5 {
     sound_stop(sound_get("isa1"));
	 sound_stop(sound_get("isa2"));
	 sound_stop(sound_get("isa3"));
	 sound_stop(sound_get("isa4"));
	 sound_stop(sound_get("isa5"));
	 sound_play(sound_get("isa5"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 20 == 14 {
     sound_stop(sound_get("isa1"));
	 sound_stop(sound_get("isa2"));
	 sound_stop(sound_get("isa3"));
	 sound_stop(sound_get("isa4"));
	 sound_stop(sound_get("isa5"));
	 sound_play(sound_get("isa3"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 20 == 3 {
     sound_stop(sound_get("isa1"));
	 sound_stop(sound_get("isa2"));
	 sound_stop(sound_get("isa3"));
	 sound_stop(sound_get("isa4"));
	 sound_stop(sound_get("isa5"));
	 sound_play(sound_get("isa2"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 20 == 12 {
     sound_stop(sound_get("isa1"));
	 sound_stop(sound_get("isa2"));
	 sound_stop(sound_get("isa3"));
	 sound_stop(sound_get("isa4"));
	 sound_stop(sound_get("isa5"));
	 sound_play(sound_get("isa2"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 20 == 1 {
     sound_stop(sound_get("isa1"));
	 sound_stop(sound_get("isa2"));
	 sound_stop(sound_get("isa3"));
	 sound_stop(sound_get("isa4"));
	 sound_stop(sound_get("isa5"));
	 sound_play(sound_get("isa1"),false,noone,0.66);
	}
	

	

}

if introhit = 0 {
	introhit = 1
}
intro = 1

if infernal2 < 300{
	if my_hitboxID.type == 1 {
		if rank < 4{
	     if infernal2 < 102 infernal2 = min(102,infernal2 + 5 + my_hitboxID.damage*4)
		}
		if rank >= 4 && rank < 6 {
	     if infernal2 < 202 infernal2 = min(202,infernal2 + 5 + my_hitboxID.damage*4)
		}
		else if rank == 6{
	    infernal2 += 5 + my_hitboxID.damage*4
		}
	    if my_hitboxID.attack == AT_NAIR {
	    move_cooldown[AT_USPECIAL_GROUND] = 30
	    }
	} else {
		
	    if rank < 4{
	     if infernal2 < 102 infernal2 = min(102,infernal2 + my_hitboxID.damage*3)
		}
		if rank >= 4 && rank < 6 {
	     if infernal2 < 202 infernal2 = min(202,infernal2 + my_hitboxID.damage*3)
		}
		else if rank == 6{
	    infernal2 += my_hitboxID.damage*3
		}
	    if my_hitboxID.attack == AT_NAIR {
	    move_cooldown[AT_USPECIAL_GROUND] = 30
	    }
	    
		if my_hitboxID.damage <= 2 && move_cooldown[AT_USPECIAL_GROUND] == 0 {
	    	move_cooldown[AT_USPECIAL_GROUND] = 5
		}
	    if my_hitboxID.damage > 2 && my_hitboxID.damage <= 6 && move_cooldown[AT_USPECIAL_GROUND] == 0 {
			move_cooldown[AT_USPECIAL_GROUND] = 8	
		}
		if my_hitboxID.damage > 6 && move_cooldown[AT_USPECIAL_GROUND] == 0 {
			move_cooldown[AT_USPECIAL_GROUND] = 12
		}
		
	    if my_hitboxID.attack == AT_NAIR {
	    move_cooldown[AT_USPECIAL_GROUND] = 30
	    }
	    
	}
}

///
if my_hitboxID.attack == AT_UTILT {
      sound_play(asset_get("sfx_clairen_tip_strong"),false,noone,1,0.8);
      sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.6,0.6);
}

if my_hitboxID.attack == AT_EXTRA_3 && my_hitboxID.sound_effect == asset_get("sfx_burnapplied"){
	hit_player_obj.grenadehit = 60
}

if my_hitboxID.attack == AT_DAIR && my_hitboxID.sound_effect == sound_get("exp2"){
	hit_player_obj.grenadehit = 60
}

if my_hitboxID.attack == AT_FAIR {
     sound_play(asset_get("sfx_clairen_tip_strong"),false,noone,1,0.8);
      if djumps > 0{
      	rankm += 50
      	sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.6,0.6);
      	with hit_player_obj {
      	take_damage( player, -1 , 3)
      	}
      	fx = spawn_hit_fx((my_hitboxID.x + hit_player_obj.x)/2,(my_hitboxID.y + hit_player_obj.y)/2 - 15,306)
      	fx.pause = 8
      }
}

if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 4 {
     sound_play(asset_get("sfx_clairen_tip_strong"),false,noone,1,0.8);
     if djumps > 0{
     	rankm += 50
     	sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.6,0.6);
     	with hit_player_obj {
      	take_damage( player, -1 , 3)
      	}
     	fx = spawn_hit_fx((my_hitboxID.x + hit_player_obj.x)/2,(my_hitboxID.y + hit_player_obj.y)/2 - 15,306)
      	fx.pause = 8
     }
}

if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num >= 5 {
     sound_play(asset_get("sfx_clairen_tip_strong"),false,noone,1,0.8);
     if djumps > 0{
     	rankm += 50
     	sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.6,0.6);
     	with hit_player_obj {
      	take_damage( player, -1 , 3)
      	}
     	fx = spawn_hit_fx((my_hitboxID.x + hit_player_obj.x)/2,(my_hitboxID.y + hit_player_obj.y)/2 - 15,306)
      	fx.pause = 8
     }
}

if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 2 {
     sound_play(asset_get("sfx_clairen_tip_strong"),false,noone,1,0.8);
     sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.6,0.6);
     fx = spawn_hit_fx((my_hitboxID.x + hit_player_obj.x)/2,(my_hitboxID.y + hit_player_obj.y)/2 - 15,306)
     fx.pause = 8
}

if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 3 {
     sound_play(asset_get("sfx_clairen_tip_strong"),false,noone,0.4,1);
     sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.8,1);
}

if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 4 {
     sound_play(asset_get("sfx_clairen_tip_strong"),false,noone,1,1);
     sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.6,1);
     rankm += 50
}

/// UAIR
if my_hitboxID.attack == AT_UAIR {
 hit_player_obj.y -= 20   
}


///

/// USTRONG ACID RAIN
if my_hitboxID.attack == AT_EXTRA_3 && my_hitboxID.hbox_num == 3 {
    
    move_cooldown[AT_USTRONG] = 40
create_hitbox(AT_EXTRA_3 , 6 ,hit_player_obj.x   , hit_player_obj.y - 400 );

create_hitbox(AT_EXTRA_3 , 4 ,hit_player_obj.x   , hit_player_obj.y - 200 );
create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x - random_func(12, 100, true)  , hit_player_obj.y - 200 - random_func(10, 100, true));
create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x + random_func(13, 100, true)  , hit_player_obj.y - 200 - random_func(11, 100, true));
  create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x - random_func(10, 100, true) - 50  , hit_player_obj.y - 300 - random_func(12, 100, true));
        create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x + random_func(11, 100, true) + 50  , hit_player_obj.y - 300 - random_func(13, 100, true));
}

if my_hitboxID.attack == AT_EXTRA_3 && my_hitboxID.hbox_num == 4 {
    
    move_cooldown[AT_USTRONG] = 40



create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x - random_func(12, 100, true)  , hit_player_obj.y - 200 - random_func(10, 100, true));
create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x + random_func(13, 100, true)  , hit_player_obj.y - 200 - random_func(11, 100, true));
 create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x - random_func(10, 100, true) - 50  , hit_player_obj.y - 100 - random_func(12, 100, true));
        create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x + random_func(11, 100, true) + 50  , hit_player_obj.y - 100 - random_func(13, 100, true));
 
}

if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 8{
	sound_play(sound_get("slice"),false,noone,1,0.8);
	sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,1);
	fx = spawn_hit_fx( my_hitboxID.x , my_hitboxID.y - 32 , 306 )
	fx2 = spawn_hit_fx( my_hitboxID.x , my_hitboxID.y - 32 , 305 )
	fx.pause = 10
	fx2.pause = 6
	
}

if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 7{
	sound_stop(asset_get("sfx_ori_energyhit_heavy"));
	sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,0.6,1.4);
	fx2 = spawn_hit_fx( my_hitboxID.x , my_hitboxID.y - 15 , 305 )
	fx2.pause = 6
}	
////

if my_hitboxID.attack == AT_DATTACK {
	if hit_player_obj.state_cat == SC_HITSTUN && my_hitboxID.hbox_num < 4{
		hit_player_obj.x += floor((x + 80*spr_dir - hit_player_obj.x)/2)
		hit_player_obj.y += floor((y - hit_player_obj.y + 30)/4)
	}
}

if my_hitboxID.attack == AT_NAIR {
	if hit_player_obj.state_cat == SC_HITSTUN && my_hitboxID.hbox_num == 1{
		hit_player_obj.x += floor((x + 40*spr_dir - hit_player_obj.x)/6)
		hit_player_obj.y += floor((y - hit_player_obj.y - 60)/6)
	}
	if hit_player_obj.state_cat == SC_HITSTUN && my_hitboxID.hbox_num == 2{
		hit_player_obj.x += floor((x - 50*spr_dir - hit_player_obj.x)/5)
		hit_player_obj.y += floor((y - hit_player_obj.y - 10)/5)
	}
	if hit_player_obj.state_cat == SC_HITSTUN && my_hitboxID.hbox_num == 3{
		hit_player_obj.x += floor((x + 50*spr_dir - hit_player_obj.x)/3)
		hit_player_obj.y += floor((y - hit_player_obj.y - 15)/3)
	}
}

if my_hitboxID.attack == AT_NAIR && window >= 8 {
	if hit_player_obj.state_cat == SC_HITSTUN && my_hitboxID.hbox_num < 8{
		hit_player_obj.x += floor((x + 10*spr_dir - hit_player_obj.x)/3)
		hit_player_obj.y += floor((y - hit_player_obj.y)/3)
	}
}



if my_hitboxID.attack == AT_DSPECIAL {
state_timer = 10
sound_play(sound_get("bonk"),false,noone,0.6,1);
 
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

    hit_player_obj.y += floor((y - hit_player_obj.y - 30)/6)
    hit_player_obj.x += 5*spr_dir
    if my_hitboxID.hbox_num == 9{
    	hit_player_obj.x -= 12*spr_dir
    	hit_player_obj.y -= 12
    }
    if my_hitboxID.hbox_num == 11{
    	hit_player_obj.y += 12
    }

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


///BFG
if my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 8 {
	BFGhit = true
}
///SAS
if my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 11  {
	Laserhit = true
}
rankm += my_hitboxID.damage*20
if rank == 0 && rankm < 120 {
	rankm += 100
}
inactive = 120


   