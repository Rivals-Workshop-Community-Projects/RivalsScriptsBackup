///





if attack == AT_FSPECIAL && hbox_num == 1 {
	
	if hitbox_timer == 2 && player_id.move_cooldown[AT_JAB] != 0 {
		vsp = 7 - random_func(2,2,true)
		hsp = (7 - random_func(1,14,true))*spr_dir
		create_hitbox(AT_FSPECIAL,1,x,y)
	}


	var firepar1 = hit_fx_create( sprite_get( "firepar1" ), 20);
    if get_gameplay_time() % 5 = 0 {
	spawn_hit_fx( x , y + 50 - random_func(13, 20, true) , firepar1 )
	 }
	 
	 if has_rune("J") && player_id.fireon >= 1 {
		spr_dir = (player_id.hit_player_obj.x > x?1:-1)
		

		if x > player_id.hit_player_obj.x {
			hsp -= 0.1
		} else {
			hsp += 0.1
		}
		
		if y - 40 > player_id.hit_player_obj.y {
			if vsp > -2 {
			vsp -= 0.2
			}
		} else {
				if vsp < 2 {
			vsp += 0.2
				}
		}
	
}

	
}

if attack == AT_USPECIAL && hbox_num == 11  {
	can_hit_self = true
	with player_id { 
		other.x += floor((x - other.x) / 12)
		other.y += floor((y - other.y) / 12)
	}
	
	var firepar1 = hit_fx_create( sprite_get( "firepar1" ), 20);
    if get_gameplay_time() % 2 = 0 {
	spawn_hit_fx( x + 10 - random_func(1, 20, true), y + 60 - random_func(13, 40, true) , firepar1 )
	}
	
}

if attack == AT_FSPECIAL && hbox_num >= 2 && hbox_num < 9  {

if y > room_height {
	destroyed = 1
}
player_id.move_cooldown[AT_FSPECIAL] = 6
player_id.move_cooldown[AT_EXTRA_3] = 10

if hsp != 0 or vsp < 0{
vsp /= 1.1
}
if  hbox_num == 3 {
	if hitbox_timer < 20 {
		hit_priority = 0
	} else {
		hit_priority = 3
	}
}

if player_id.attacking = true && player_id.attack == AT_NSPECIAL && player_id.window > 2 &&  player_id.fireon < 3{
	
		
if x < player_id.x + 30 and x > player_id.x - 30

and y < player_id.y + 60 and y > player_id.y - 120{
	
	player_id.move_cooldown[AT_NSPECIAL] = 0
	spr_dir = player_id.spr_dir

	with player_id {
		set_attack(AT_DAIR)
		window = 5
		vsp = -12
	}


	if hsp < 2 and hsp > -2 {	
			shake_camera(2,4)
		sound_play(asset_get("sfx_burnapplied"))
		sound_play(sound_get("RI2"))
	hsp = 16*spr_dir
	vsp = -2
		}
		
                    kb_value = 8
					hitpause = 12
					hitpause_growth = 0.5
					hit_priority = 5	
	
}

}

if player_id.attacking = true && player_id.attack == AT_NSPECIAL && player_id.window > 2 &&  player_id.fireon == 3{
	spr_dir = player_id.spr_dir
			player_id.move_cooldown[AT_NSPECIAL] = 0
	                kb_value = 8
					hitpause = 12
					hitpause_growth = 0.5
					hit_priority = 5
	var firepar1 = hit_fx_create( sprite_get( "firepar1" ), 20);
	spawn_hit_fx( x , y + 60 - random_func(13, 40, true) , firepar1 )
	
	with player_id {
		other.x += floor((x - other.x) / 12)
		other.y += floor((y - other.y) / 12)
    }

	
}


if has_rune("J") && player_id.fireon >= 1 {
		spr_dir = (player_id.hit_player_obj.x > x?1:-1)
		

		if x > player_id.hit_player_obj.x {
			hsp -= 0.45
		} else {
			hsp += 0.45
		}
		
		if y > player_id.hit_player_obj.y - 40  {
			if vsp > -2 {
			vsp -= 0.1
			}
		} else {
				if vsp < 2 {
			vsp += 0.1
				}
		}
	
}
	
if (place_meeting(x+hsp, y, asset_get("par_block"))) && !has_rune("J") {
   hsp = 0	
}

			  if (place_meeting(x + hsp, y + vsp, asset_get("par_block"))) {
                 y -= 5
                 vsp -= 0.6
             } 
             
             if free {
             	vsp += 0.06
             }
             

with oPlayer{
	if clone continue
	var heal_player = instance_place(x, y, other)
	if (heal_player != noone) {
	
    	if  url != other.player_id.url && state == PS_AIR_DODGE {
			other.destroyed = 1
			sound_play(asset_get("sfx_burnapplied"))
			other.player_id.move_cooldown[AT_EXTRA_3] = 5
        }
        
	    if  url == other.player_id.url {
	    	
	    	if state == PS_AIR_DODGE && state_timer > 15 {
	    		move_cooldown[AT_TAUNT_2] = 0
	    		set_attack(AT_DAIR)
					window = 5
					vsp = -12
					hsp = dohsp
	    	}
	    	
	    	
	        if ((state == PS_AIR_DODGE and state_timer > 2) or state == PS_PRATFALL or
		(attacking and ((attack == AT_USPECIAL && window > 5) or (attack == AT_DSPECIAL && vsp > 2)
		))){
			



			other.hitbox_timer = 0
			shake_camera(2,4)
		if move_cooldown[AT_TAUNT_2] = 0 {		
		sound_play(asset_get("sfx_burnapplied"))
		sound_play(sound_get("RI2"))
					spawn_hit_fx(other.x - 10*spr_dir ,other.y - 10, ffireh)
		}
		
				if state == PS_PRATFALL or  player != other.player{
				    other.destroyed = true
				    set_attack(AT_DAIR)
					window = 5
					vsp = -12
				}
				
				if state == PS_AIR_DODGE {
					x = (x + other.x)/2
					y = (y + other.y)/2
					state_timer = 15
					window_timer = 15
					has_airdodge = false
					dohsp = hsp
					other.hsp = hsp*1.2
					other.vsp = vsp*1.5 - 2	
				}
				
				
				if (attacking && attack != AT_DSPECIAL)  {	
					other.hsp = hsp*1.2
					other.vsp = vsp*1.5 - 2	
					set_attack(AT_DAIR)
					window = 5
					vsp = -12
					if attacking {
					hsp = 0
					other.hsp = 16*spr_dir
					other.vsp = -2
					}
					move_cooldown[AT_USPECIAL] = 0
					move_cooldown[AT_NSPECIAL] = 0
					other.hitbox_timer = 0
				}
				
				
	
				if attacking && attack == AT_DSPECIAL {
					vsp = -8
				    dspecon = 1
					other.destroyed = true
				}
				
				other.kb_value = 8
					other.hitpause = 12
					other.hitpause_growth = 0.5
					other.hit_priority = 5

		
      }
	    }
   }    
    
}


if kb_value = 8 {
  
	sprite_index = sprite_get("ffires2")
} else {
	if (hitbox_timer == 1 or hitbox_timer % 10 = 0) {
	create_hitbox(AT_FSPECIAL,9,x,y)
	}
	var firepar1 = hit_fx_create( sprite_get( "firepar1" ), 20);
    if get_gameplay_time() % 2 = 0 {
	spawn_hit_fx( x + 10 - random_func(1, 20, true), y + 60 - random_func(13, 40, true) , firepar1 )
	}
}
   
  if hsp > 3 or hsp < -3{
	var firepar1 = hit_fx_create( sprite_get( "firepar1" ), 20);
	
    if get_gameplay_time() % 3 = 0 {
	spawn_hit_fx( x , y + 60 - random_func(13, 40, true) , firepar1 )
	 }
	 
  }
	
}


if attack == AT_TAUNT && hbox_num == 1 {
	

    
	var tauntpar1 = hit_fx_create( sprite_get( "tauntpar1" ), 24);
    if get_gameplay_time() % 12 = 0 {
	spawn_hit_fx( x  + 10 - random_func(13, 20, true) , y - 0 , tauntpar1 )
	 }
	
}



if attack == AT_EXTRA_3 && hbox_num > 1 {
	
	if player_id.attacking && player_id.attack == AT_TAUNT && player_id.window == 7 && player_id.window_timer == 1 {
		hitbox_timer += 30
	}
	

	
if !free {
	if has_rune("G"){
		if player_id.attacking && player_id.attack == AT_DSPECIAL &&  player_id.window == 2 && player_id.free == false{
			destroyed = true
			create_hitbox(AT_FSPECIAL, 4, x, y)
			spawn_hit_fx(x,y + 10,305)
		}
	hitbox_timer += 1
	} 
	y += 2
	hitbox_timer -= 1
}

if hitbox_timer > 300 {
	destroyed = true
}

if free {
	if hitbox_timer <= 2 {
	 y += 5
	}
	
	if hitbox_timer == 2 {
	hitbox_timer = 99999
	}

	
}	

}