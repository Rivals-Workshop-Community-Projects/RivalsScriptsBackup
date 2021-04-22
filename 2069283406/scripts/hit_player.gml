///
if move_cooldown[AT_DTILT] != 0 {
	with hit_player_obj {
		take_damage( player, -1 , -3 )
	}
}
move_cooldown[AT_NSPECIAL_2] = 0
move_cooldown[AT_NSPECIAL] = 0

if has_rune("L") && move_cooldown[AT_TAUNT_2] == 0 && get_gameplay_time() % 3 <= 1  && my_hitboxID.damage >= 3 && my_hitboxID.type == 1 && my_hitboxID.attack != AT_USPECIAL {
		create_hitbox(AT_FSPECIAL, 3, x, y - 40);
		move_cooldown[AT_TAUNT_2] = 15
		 sound_play(asset_get("sfx_burnapplied"));
}

if has_rune("L") && my_hitboxID.type == 1 && my_hitboxID.attack != AT_USPECIAL && my_hitboxID.damage >= 3 {
		create_hitbox(AT_FSPECIAL, 3, x - 400*spr_dir, 0);
}

if has_rune("M") && my_hitboxID.type == 1 && free && my_hitboxID.attack != AT_USPECIAL && lattack != attack &&  lattacktime < 3{
	lattack = attack
	move_cooldown[AT_FSPECIAL_2] = 20
	lattacktime += 1
} 


if has_rune("N"){
	
	with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
}


	with hit_player_obj{
		if get_player_damage(player) >= 120 {
			
			with other {
					sound_play(sound_get("RZ2"))
 	         	 sound_play(asset_get("sfx_ori_grenade_launch"));
 	         	spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 40, 306 )
 	         	spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 40, lighten )
 	         	shake_camera(10,10)
			}
			other.move_cooldown[AT_USPECIAL_GROUND] = 180
		}
	}
		
} 

if has_rune("N"){
	ndamage = my_hitboxID.damage
	with hit_player_obj {
		take_damage( player, -1 , 1 + floor(other.ndamage/2) )
	}
		
} 


if has_rune("H") && my_hitboxID.attack == AT_FSPECIAL &&  move_cooldown[AT_DSTRONG] == 0{
	
	hitstop += 6
	
		shunpo = random_func(3,3,true)
	    set_attack (AT_DSTRONG)
		window = 4
		window_timer = 1
	    move_cooldown[AT_DSTRONG] = 20
	    sound_play(sound_get("RZ"))
	    spawn_hit_fx(x,y - 40, 305)
		
} 


if fireon < 0 {
	fireon = 0
}

firetimer = 300
intro = 1
if introhit = 0 {
	introhit = 1
}
if my_hitboxID.attack == AT_TAUNT{
    sound_play(asset_get("sfx_ori_taunt2"));
    sound_play(asset_get("sfx_ori_taunt2"));
with (oPlayer) {
  if (id != other.id) {
take_damage( player, -1 , - 10 )
}
}
}

if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 2 {

      fireon = 3
        firerange += 600
    sound_play(sound_get("RI"));
    sound_play(asset_get("sfx_ori_grenade_launch"));
     spawn_hit_fx ( hit_player_obj.x + 5 * spr_dir , hit_player_obj.y + 20 , firepar2 )
}




if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 3 {
 
 hsp = -10   
}

if my_hitboxID.attack == AT_FSPECIAL{


    
    if my_hitboxID.hbox_num == 1 {
    	if fireon < 1 {
    		fireon = 1
    	}
    	if fireon > 1 {
    		fireon += 0.75
    	}
    	
    	if fireon  > 2.5 && firerange < 3 {
    	fireon = 3	
        firerange = 600
     sound_play(sound_get("RI"));
    sound_play(asset_get("sfx_ori_grenade_launch"));
     spawn_hit_fx ( hit_player_obj.x + 5 * spr_dir , hit_player_obj.y + 20 , firepar2 )
    	}
    }
    
    
    
    
    if my_hitboxID.hbox_num >= 2 && my_hitboxID.hbox_num != 9 {
    if firerange < 3 {
        fireon = 3
        firerange = 600
    sound_play(sound_get("RI"));
    sound_play(asset_get("sfx_ori_grenade_launch"));
     spawn_hit_fx ( hit_player_obj.x + 5 * spr_dir , hit_player_obj.y + 20 , firepar2 )
    } else {
    	shake_camera(2,2)
    }
    
    firerange -= 100
  
    spawn_hit_fx ( hit_player_obj.x + 5 * spr_dir , hit_player_obj.y , firepar1 )
    
    }
    
}



if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num >= 2 {

sound_play(asset_get("sfx_burnapplied"));

}

if my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 4 {
    
    vsp = -6
    hsp = 3*spr_dir
    
    set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 0);
    set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 0);
    set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 0);
    set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 0);
    set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 0);
 
 if firerange > 0{
  spawn_hit_fx( floor (hit_player_obj.x + 130 + (0.7*firerange)) , floor(hit_player_obj.y  + 115 - random_func(1, 40, true)) , firepar1 )
    spawn_hit_fx( floor (hit_player_obj.x + 130 + (0.7*firerange)) , floor(hit_player_obj.y  + 75 - random_func(2, 40, true)) , firepar1 )
    spawn_hit_fx( floor (hit_player_obj.x + 130 + (0.7*firerange)) , floor(hit_player_obj.y  + 45 - random_func(3, 40, true)) , firepar1 )
    spawn_hit_fx( floor (hit_player_obj.x + 130 + (0.7*firerange)) , floor(hit_player_obj.y  + 05 - random_func(4, 40, true)) , firepar1 )
    
    
    spawn_hit_fx( floor(hit_player_obj.x - 130 - (0.7*firerange)) , floor(hit_player_obj.y  + 115 - random_func(5, 40, true)) , firepar1 )
    spawn_hit_fx( floor(hit_player_obj.x - 130 - (0.7*firerange)) , floor(hit_player_obj.y  + 75 - random_func(6, 40, true)) , firepar1 )
    spawn_hit_fx( floor(hit_player_obj.x - 130 - (0.7*firerange)) , floor(hit_player_obj.y  + 45 - random_func(7, 40, true)) , firepar1 )
    spawn_hit_fx( floor(hit_player_obj.x - 130 - (0.7*firerange)) , floor(hit_player_obj.y  + 05 - random_func(8, 40, true)) , firepar1 )
 }
 
 if shunpo == 0 {
 set_attack (AT_FAIR)
 window = 2
 window_timer = 0
 y = hit_player_obj.y
  fireon  = -1
 firerange = -100
 }
 

 
 
 if shunpo == 1 {
 set_attack (AT_UAIR)
 old_hsp = 0
 old_vsp = -6
 window = 2
 window_timer = 0
 y = hit_player_obj.y
  fireon = -0.5
 firerange = -100
 }
 
  if shunpo == 2 {
 set_attack (AT_DAIR)
 window = 1
 window_timer = 15
 create_hitbox(AT_DAIR,1,x,y)
 y = hit_player_obj.y
  fireon = -0.5
 firerange = -100
 }
 

}

if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num < 4) or attack == AT_FSTRONG or attack == AT_USTRONG  {
    
    if fireon > 0.5 {
    
        
    fireon = 3
 firerange = 100
 
    spawn_hit_fx( floor (hit_player_obj.x + 110 + (0.7*firerange)) , floor(hit_player_obj.y  + 115 - random_func(1, 40, true)) , firepar1 )
    spawn_hit_fx( floor (hit_player_obj.x + 130 + (0.7*firerange)) , floor(hit_player_obj.y  + 75 - random_func(2, 40, true)) , firepar1 )
    spawn_hit_fx( floor (hit_player_obj.x + 130 + (0.7*firerange)) , floor(hit_player_obj.y  + 45 - random_func(3, 40, true)) , firepar1 )
    spawn_hit_fx( floor (hit_player_obj.x + 110 + (0.7*firerange)) , floor(hit_player_obj.y  + 05 - random_func(4, 40, true)) , firepar1 )
    
    
    spawn_hit_fx( floor(hit_player_obj.x - 110 - (0.7*firerange)) , floor(hit_player_obj.y  + 115 - random_func(5, 40, true)) , firepar1 )
    spawn_hit_fx( floor(hit_player_obj.x - 130 - (0.7*firerange)) , floor(hit_player_obj.y  + 75 - random_func(6, 40, true)) , firepar1 )
    spawn_hit_fx( floor(hit_player_obj.x - 130 - (0.7*firerange)) , floor(hit_player_obj.y  + 45 - random_func(7, 40, true)) , firepar1 )
    spawn_hit_fx( floor(hit_player_obj.x - 110 - (0.7*firerange)) , floor(hit_player_obj.y  + 05 - random_func(8, 40, true)) , firepar1 )

     sound_play(sound_get("RI"));
    sound_play(asset_get("sfx_ori_grenade_launch"));
    
    } else {
    	
    	fireon = 1.5
    } 
    
   
}


if my_hitboxID.attack == AT_NSPECIAL{
    
    if firerange > 0 {
  spawn_hit_fx( floor (hit_player_obj.x + 130 + (0.7*firerange)) , floor(hit_player_obj.y  + 115 - random_func(1, 40, true)) , firepar1 )
    spawn_hit_fx( floor (hit_player_obj.x + 130 + (0.7*firerange)) , floor(hit_player_obj.y  + 75 - random_func(2, 40, true)) , firepar1 )
    spawn_hit_fx( floor (hit_player_obj.x + 130 + (0.7*firerange)) , floor(hit_player_obj.y  + 45 - random_func(3, 40, true)) , firepar1 )
    spawn_hit_fx( floor (hit_player_obj.x + 130 + (0.7*firerange)) , floor(hit_player_obj.y  + 05 - random_func(4, 40, true)) , firepar1 )
    
    
    spawn_hit_fx( floor(hit_player_obj.x - 130 - (0.7*firerange)) , floor(hit_player_obj.y  + 115 - random_func(5, 40, true)) , firepar1 )
    spawn_hit_fx( floor(hit_player_obj.x - 130 - (0.7*firerange)) , floor(hit_player_obj.y  + 75 - random_func(6, 40, true)) , firepar1 )
    spawn_hit_fx( floor(hit_player_obj.x - 130 - (0.7*firerange)) , floor(hit_player_obj.y  + 45 - random_func(7, 40, true)) , firepar1 )
    spawn_hit_fx( floor(hit_player_obj.x - 130 - (0.7*firerange)) , floor(hit_player_obj.y  + 05 - random_func(8, 40, true)) , firepar1 )
    }
    
    if fireon == 3 {
 fireon = -2
 firerange = -100
    }
    
}


if move_cooldown[AT_TAUNT_2] == 0 {
if fireon <= 3 {
    fireon += 0.5
}

if fireon < 3 && my_hitboxID.attack != AT_JAB{
    fireon += 0.5
}
}

if fireon >= 3 && firerange < 300{
    firerange = 100
}

if fireon == 3 && firerange == 100 {
    sound_play(sound_get("RI"));
    sound_play(asset_get("sfx_ori_grenade_launch"));
}

if fireon == 3 && firerange > 0 {
	
    spawn_hit_fx( floor (hit_player_obj.x + 110 + (0.7*firerange)) , floor(hit_player_obj.y  + 115 - random_func(1, 40, true)) , firepar1 )
    spawn_hit_fx( floor (hit_player_obj.x + 130 + (0.7*firerange)) , floor(hit_player_obj.y  + 75 - random_func(2, 40, true)) , firepar1 )
    spawn_hit_fx( floor (hit_player_obj.x + 130 + (0.7*firerange)) , floor(hit_player_obj.y  + 45 - random_func(3, 40, true)) , firepar1 )
    spawn_hit_fx( floor (hit_player_obj.x + 110 + (0.7*firerange)) , floor(hit_player_obj.y  + 05 - random_func(4, 40, true)) , firepar1 )
    
    
    spawn_hit_fx( floor(hit_player_obj.x - 110 - (0.7*firerange)) , floor(hit_player_obj.y  + 115 - random_func(5, 40, true)) , firepar1 )
    spawn_hit_fx( floor(hit_player_obj.x - 130 - (0.7*firerange)) , floor(hit_player_obj.y  + 75 - random_func(6, 40, true)) , firepar1 )
    spawn_hit_fx( floor(hit_player_obj.x - 130 - (0.7*firerange)) , floor(hit_player_obj.y  + 45 - random_func(7, 40, true)) , firepar1 )
    spawn_hit_fx( floor(hit_player_obj.x - 110 - (0.7*firerange)) , floor(hit_player_obj.y  + 05 - random_func(8, 40, true)) , firepar1 )
}








if get_player_color(player) == 5 {
 	
 	
	var hitsp = random_func(20, 5, true) ;
	
	if (hitsp == 0 ){
    	var hit1 = spawn_hit_fx (floor ( hit_player_obj.x + random_func(3, 10, true)), floor (hit_player_obj.y - 30 + random_func(1, 10, true)), shit1 )
    		hit1.depth = -1000

	}
	
  	if (hitsp == 1 ){
    var hit2 = spawn_hit_fx ( floor ( hit_player_obj.x + random_func(3, 10, true)), floor (hit_player_obj.y - 30 + random_func(1, 10, true)), shit2 )
    	hit2.depth = -1000

     }
     
     if (hitsp == 2){
    	var hit3 = spawn_hit_fx (floor ( hit_player_obj.x + random_func(3, 10, true)), floor (hit_player_obj.y - 30 + random_func(1, 10, true)), shit3 )
    		hit3.depth = -1000

     }
     
       	if (hitsp == 3){
 	var hit4 = spawn_hit_fx (floor ( hit_player_obj.x + random_func(3, 10, true)), floor (hit_player_obj.y - 30 + random_func(1, 10, true)), shit4 )
 		hit4.depth = -1000
     }
     
         	if (hitsp == 4){
 	var hit5 = spawn_hit_fx (floor ( hit_player_obj.x + random_func(3, 10, true)), floor (hit_player_obj.y - 30 + random_func(1, 10, true)), shit5 )
 		hit5.depth = -1000
     }
     
 	
 }
 
if fireon > 3 {
	
fireon = 3	
}