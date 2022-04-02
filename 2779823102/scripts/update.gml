//
if move_cooldown[AT_EXTRA_1] = 1{
    sound_play(sound_get("bruh"),false,noone,1, 1 - phaseh/50)
    move_cooldown [AT_DTILT] = 0 
    sound_stop(sound_get("obam"))
    sound_stop(sound_get("CC"))
    sound_stop(sound_get("olaugh"))
    sound_play(sound_get("RI"),false,noone,.8,.8)
    with (pHitBox) {
        if player_id = other.id {
            if hbox_num > 4 destroyed = true 
             vfxd = spawn_hit_fx(x,y - 50,13)
             vfxd.pause = 9
             vfxd.depth = -6
        }
    }
    shield = -450
    vfxb = spawn_hit_fx(x,y - 50,306)
    vfxb.image_xscale = 1.4
    vfxb.image_yscale = 1.4
    vfxb.pause = 9
    vfxb.depth = -6
    
}


if move_cooldown[AT_NSPECIAL] <= 0 {
	hurtboxID.sprite_index= sprite_get("obahurt");
} else {
	hurtboxID.sprite_index = asset_get("empty_sprite");
}


//print(shield)
//print(move_cooldown[AT_NSPECIAL] )
if get_gameplay_time() < 120 {
    hsp /= 2
    vsp /= 2
    if get_gameplay_time() == 4 {
        sound_play(sound_get("intro"))
    }
}

if ending <= 0 {
if phaseh == 10 {
    phaseh = 9999
    sound_play(sound_get("perish"),false,noone,1,0.6)
}
if phaseh = 9999 {
    angle += 10 - random_func(1,21,true)
    move_cooldown[AT_EXTRA_2] += 2
}
total = time+stock+style

if initi = true {
    spr_dir = 1
    create_hitbox(AT_DAIR,1,x,y-50)
    create_hitbox(AT_DAIR,3,x,y-50)
    create_hitbox(AT_DAIR,5,x,y-50)
    spr_dir = -1
    create_hitbox(AT_DAIR,2,x,y-50)
    create_hitbox(AT_DAIR,4,x,y-50)
    create_hitbox(AT_DAIR,6,x,y-50)
    
    initi = false
}

if get_gameplay_time()  > 14400 {
	time -= 0.05
}

with oPlayer {
    if self != other {
      if (state == PS_RESPAWN) && state_timer == 1 {
        with other{ sound_play(sound_get("bruh"),false,noone,.95) }
       other.stock -= floor(250*4/instance_number(oPlayer))	
      }
    }
}

if ending = -1 {
    	sound_play(sound_get("Death"))
		sound_play(sound_get("RI"))
	sound_play(sound_get("SpaceCut"))
		sound_play(asset_get("sfx_bird_nspecial"))
		sound_play(asset_get("sfx_spin"),false,noone,2,0.5)
		
	     with (asset_get("pHitBox")) {
          destroyed = true;
        }
            with (asset_get("oPlayer")) {
            	set_player_stocks(player, 3);
        	    hitpause = true
        	    hitstop = 600
        	    hitstop_full = 600
        	    old_hsp = 0
        	    old_vsp = 0
        	}
        	
        	ending = 600
}

if phase > 130 && phaseh < 10 {
	
    canhalo = 1
    
    phaseh += 1
    
    if phaseh >= 4 && phaseh < 9 {
        shieldg = 5
    } 
    if phaseh >= 9 {
        shieldg = 7
    }
    
    if phaseh < 4 {
        shieldg = 3
    }
    
    
    gone = spawn_hit_fx(x,y - 124,hbgone)
    gone.depth = -6
    hue += random_func(5,100,true)
	if hue>255 {
		hue = 0;
	}
	//make hue shift every step + loop around
	color_rgb=make_color_rgb(255, 100, 50);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 

	
    
    phase = 0
    heathdecay = 0
    shadechange = true
    
    sound_play(sound_get("fspec3"),false,noone,.9,1)
    shield = -30
    vfx = spawn_hit_fx(x,y - 50,304)
        vfx.pause = 9
        vfx.depth = -6
}

init_shader()

if phaseh == 8 {
   
}
init_shader()
if angle > 360 or angle < -360 {
    angle = 0
}

has_airdodge = false 
has_walljump = false 

if shield < 0 && state_cat != SC_HITSTUN && !free {
    if free {
        state = PS_PRATFALL
    } else {
        state = PS_PRATLAND
    }
}

if phase > heathdecay heathdecay += 0.25
if !instance_exists(hit_player_obj)  or hit_player_obj == self{
    var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id	
}

if shield < 0 {
    if shield == -30 {
        move_cooldown[AT_NSPECIAL] = 60
        shake_camera(6,6)
        sound_play(sound_get("olaugh"),false,noone,.8,1 - phaseh/50) 
        sound_play(sound_get("hcine"),false,noone,.3,.75)
        vfx = spawn_hit_fx(x,y - 50,304)
        vfx.pause = 9
        vfx.depth = -6
        if shieldg < 3 shieldg = 3
    }
    
    if shield > -30 {
        if angle > 0 angle --
        if angle > 0 angle --
        if angle < 0 angle ++
        if angle < 0 angle ++
    }
    shield ++
if get_player_damage(player) != 50 {

phase += floor(get_player_damage(player)*5/instance_number(oPlayer))
 set_player_damage(player, 0)
}
angle -= hsp*2

} else {
	
	hitpause = false 
    hitstop = 0
    invincible = false 
    invince_time = 0
    	  
    if shield == 0 {
    	with oPlayer { 
    	  hitpause = false 
    	  hitstop = 0
    	  invincible = false 
    	  invince_time = 0
    	}
    shield = shieldg    
    spr_dir = 1
    create_hitbox(AT_DAIR,1,x,y-50)
    create_hitbox(AT_DAIR,3,x,y-50)
    create_hitbox(AT_DAIR,5,x,y-50)
    spr_dir = -1
    create_hitbox(AT_DAIR,2,x,y-50)
    create_hitbox(AT_DAIR,4,x,y-50)
    create_hitbox(AT_DAIR,6,x,y-50)
    
       move_cooldown[AT_DSPECIAL] = 45 
       move_cooldown[AT_USPECIAL] = 90
        vsp -= 20
        move_cooldown[AT_NSPECIAL] = 60
    vfx = spawn_hit_fx(x,y - 50,306)
    vfx.pause = 9
    vfx.depth = -6
    angle = floor(angle/2)
       sound_play(sound_get("olaugh"),false,noone,.8,1 - phaseh/40) 
       sound_play(sound_get("handout"),false,noone,.3,.75)
    }
    
    vsp -= 0.5
    hsp += (hit_player_obj.x - x )/400
    vsp += (hit_player_obj.y - 200 - y)/300
  soft_armor = 999    
  set_player_damage(player, 0)   
  hsp /= 1.2
  vsp /= 1.2
  if angle > 0 angle --
  if angle < 0 angle ++
}


can_attack = false 
can_special = false 
can_tech = false 
can_shield = false 

if phase <= 9999 && state == PS_DEAD or state == PS_RESPAWN {
    visible = true 
    state = PS_IDLE_AIR
    vsp -= 6
    shield = -30
    vfx = spawn_hit_fx(x,y - 50,306)
    vfx.pause = 9
    vfx.depth = -6
    take_damage(player,-1,25)
}

///direct hlaser
if oattack == 1 {
    if move_cooldown[AT_DSPECIAL] == 0 move_cooldown[AT_DSPECIAL] = 100 
    if move_cooldown[AT_USPECIAL] == 0 move_cooldown[AT_USPECIAL] = 100
    oattack = 0 
		var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id	
	
	create_hitbox(AT_DTILT,1,room_width/2 - 420*spr_dir, floor(hit_player_obj.y) - 40)
}

///direct vlaser
if oattack == 2 {
   if move_cooldown[AT_DSPECIAL] == 0 move_cooldown[AT_DSPECIAL] = 100 
   if move_cooldown[AT_USPECIAL] == 0 move_cooldown[AT_USPECIAL] = 100
    oattack = 0 
		var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id	
	

    create_hitbox(AT_DTILT,3,floor(hit_player_obj.x), room_height/2 - 200)
    
}

///random hlaser		
if oattack == 3 {
   if move_cooldown[AT_DSPECIAL] == 0 move_cooldown[AT_DSPECIAL] = 100 
   if move_cooldown[AT_USPECIAL] == 0move_cooldown[AT_USPECIAL] = 100
    oattack = 0 
    
    create_hitbox(AT_DTILT,1,room_width/2 - 420*spr_dir, room_height/2 - 200 + random_func(1,350,true))
}

///random vlaser	
if oattack == 4 {
    if move_cooldown[AT_DSPECIAL] == 0 move_cooldown[AT_DSPECIAL] = 100 
    if move_cooldown[AT_USPECIAL] == 0 move_cooldown[AT_USPECIAL] = 100
    oattack = 0 
    
    create_hitbox(AT_DTILT,3,room_width/2 - 400 + random_func(1,800,true), room_height/2 - 200)
}

///fist
if oattack == 5 {
    if move_cooldown[AT_DSPECIAL] == 0 move_cooldown[AT_DSPECIAL] = 100 
    if move_cooldown[AT_USPECIAL] == 0 move_cooldown[AT_USPECIAL] = 100
    oattack = 0 
		var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id	
	
	create_hitbox(AT_DTILT,5,floor(hit_player_obj.x), room_height/2 - 100)
	sound_play(sound_get("handout"),false,noone,.8,.75)
}

///point
if oattack == 6 {
    if move_cooldown[AT_DSPECIAL] == 0 move_cooldown[AT_DSPECIAL] = 80 
    if move_cooldown[AT_USPECIAL] == 0 move_cooldown[AT_USPECIAL] = 80
    oattack = 0 
		var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id	
	
	create_hitbox(AT_DTILT,7,floor(hit_player_obj.x) + 120 - random_func(1,241,true), floor(hit_player_obj.y) + 60 - random_func(2,181,true))
	sound_play(sound_get("handout"),false,noone,.8,.8)
}

//grab
if oattack == 7 {
	move_cooldown[AT_NSPECIAL_2] += 290
    if move_cooldown[AT_DSPECIAL] == 0 move_cooldown[AT_DSPECIAL] = 220 
    if move_cooldown[AT_USPECIAL] == 0 move_cooldown[AT_USPECIAL] = 220
    oattack = 0 
    create_hitbox(AT_DTILT,9,room_width/2 - 720*spr_dir + 60 - random_func(1,121,true), room_height/2 - 300)
}

///gun
if oattack == 8 {
    if move_cooldown[AT_DSPECIAL] == 0 move_cooldown[AT_DSPECIAL] = 220 
    if move_cooldown[AT_USPECIAL] == 0 move_cooldown[AT_USPECIAL] = 220
    oattack = 0 
		var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id	
	sound_play(sound_get("SGL"),false,noone,.8,.8)
	create_hitbox(AT_DTILT,12,room_width/2 - 300*spr_dir, floor(hit_player_obj.y) - 40)
}

///sword
if oattack == 9 {
    if move_cooldown[AT_DSPECIAL] == 0 move_cooldown[AT_DSPECIAL] = 160 
    if move_cooldown[AT_USPECIAL] == 0 move_cooldown[AT_USPECIAL] = 160
    oattack = 0 
		var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id	
	

    create_hitbox(AT_DTILT,14,floor(hit_player_obj.x), room_height/2 - 60)
    sound_play(asset_get("sfx_ice_on_player"),false,noone,1,.6)
    sound_play(sound_get("flash"),false,noone,.7,1.2)
}

/// obamium
if oattack == 10 {
    if move_cooldown[AT_DSPECIAL] == 0 move_cooldown[AT_DSPECIAL] = 20 
    if move_cooldown[AT_USPECIAL] == 0 move_cooldown[AT_USPECIAL] = 20
    oattack = 0 
    create_hitbox(AT_DTILT,18,room_width/2 - 400 + random_func(1,800,true), room_height/2 - random_func(2,100,true))
    sound_play(sound_get("flash"),false,noone,1,1.4)
    sound_stop(sound_get("obam"))
    sound_play(sound_get("obam"),false,noone,.65,1)
}

//Chao Control
if oattack == 11 {
    oattack = 0 
    move_cooldown[AT_NSPECIAL_2] = 600
    move_cooldown[AT_DSPECIAL] = 220
    move_cooldown[AT_USPECIAL] = 220
    move_cooldown[AT_DTILT] = 160 
    
    sound_stop(sound_get("obam"))
    sound_play(sound_get("CC"),false,noone,1,.95)
    sound_play(sound_get("CC"),false,noone,.6,.8)
}

if move_cooldown[AT_DTILT] > 0 {
    
if move_cooldown[AT_DTILT] = 120 {
    with (pHitBox) {
        if player_id = other.id && attack != AT_DAIR {
            destroyed = true 
        }
    }
    sound_play(sound_get("flash"),false,noone,1,1.4)
    sound_play(asset_get("sfx_spin"),false,noone,.8,.35) 
    sound_play(asset_get("sfx_spin"),false,noone,.8,.35) 
    sound_play(asset_get("sfx_spin"),false,noone,.8,.6) 
    shake_camera(6,6)
    with oPlayer {
        if self != other {
            vfx = spawn_hit_fx(x,y - 44,306)
        vfx.pause = 9
        vfx.depth = -6
            old_hsp = hsp 
            old_vsp = vsp
            hitpause = true 
            hitstop = 5
        }
    }
}

if move_cooldown [AT_DTILT] == 80 {
    sound_play(sound_get("olaugh"),false,noone,.8,1) 
    sound_play(sound_get("obam"),false,noone,.4,1) 
}

if move_cooldown [AT_DTILT] < 80 && move_cooldown[AT_DTILT] > 60 && get_gameplay_time()%2 == 0 {
    create_hitbox(AT_DTILT,18,room_width/2 - 400 + random_func(1,800,true), room_height/2 - random_func(2,100,true))
     sound_play(sound_get("obam"),false,noone,.4,1) 
}
   if move_cooldown [AT_DTILT] == 1 {
       vfx = spawn_hit_fx(x,y - 44,306)
           vfx.pause = 9
           vfx.depth = -6
           sound_play(sound_get("flash"),false,noone,1,1)
   } else if move_cooldown[AT_DTILT] < 120 {
       with oPlayer {
           if self != other {
            hsp = old_hsp 
            vsp = old_vsp 
            hitpause = true 
            hitstop = 5
           }
       }
   }
}


///////

///logic
if move_cooldown[AT_EXTRA_1] > 0 { 
	 vsp += (hit_player_obj.y - 300 - y)/400
    if move_cooldown[AT_UAIR] == 0 {
       if phaseh > 3 {
       	if move_cooldown[AT_EXTRA_1] % 160 == 30 {
       		spr_dir = -1
       		create_hitbox(AT_DTILT,1,x - 50, y )
       		move_cooldown[AT_DSPECIAL] += 45
       		move_cooldown[AT_USPECIAL] += 45
        }
        if move_cooldown[AT_EXTRA_1] % 160 == 20 {
        	create_hitbox(AT_DTILT,3,x, y + 40)
        }
        if move_cooldown[AT_EXTRA_1] % 160 == 10 {
        	spr_dir = 1
        	create_hitbox(AT_DTILT,1,x + 50,y )
        }
        if move_cooldown[AT_EXTRA_1] % 200 <= 30 && move_cooldown[AT_EXTRA_1] % 8 == 0 {
        	create_hitbox(AT_DTILT,3,x + 100 - random_func(5,101,true) , y + 40)
        }
       }
        
       if phaseh >= 7 {
        if move_cooldown[AT_EXTRA_1] % 160 == 60 {
        	sound_play(sound_get("SGL"),false,noone,1,1)
        	sound_play(sound_get("SGL"),false,noone,.6,1)
        	move_cooldown[AT_DSPECIAL] += 45
       		move_cooldown[AT_USPECIAL] += 45
        } 
        if move_cooldown[AT_EXTRA_1] % 160 <= 8*3 && move_cooldown[AT_EXTRA_1] % 8 == 0 {
        	create_hitbox(AT_DTILT,20,x + 80*spr_dir,y + 60)
        	create_hitbox(AT_DTILT,21,x - 80*spr_dir,y + 60)
        	create_hitbox(AT_DTILT,22,x + 80*spr_dir,y - 60)
        	create_hitbox(AT_DTILT,23,x - 80*spr_dir,y - 60)
        	sound_play(sound_get("SGF"),false,noone,.65,1)
        }	
        
       }
    }
}


if shield > 0 {
switch phaseh {
    
    case 0 :
    if move_cooldown[AT_DSPECIAL] == 0 && oattack == 0{
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%2 {
            case 0 :
            spr_dir*=-1
            oattack = 1
            break; 
            case 1 :
            spr_dir*=-1
            oattack = 1
            break;
        }
    }
    break;
    
    case 1 :
    if move_cooldown[AT_DSPECIAL] == 0 && oattack == 0{
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%2 {
            case 0 :
            oattack = 1
            break; 
            case 1 :
            oattack = 2
            break;
        }
    }
    break;
    
    case 2 :
    
    if move_cooldown[AT_DSPECIAL] == 0 && oattack == 0{
        move_cooldown[AT_USPECIAL] += 30
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%2 {
            case 0 :
            oattack = 5
            spr_dir*=-1
            break; 
            case 1 :
            spr_dir*=-1
            oattack = 5
            break;
        }
    }
    
    if move_cooldown[AT_USPECIAL] == 0 && oattack == 0{
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%2 {
            case 0 :
            oattack = 5
            spr_dir*=-1
            break; 
            case 1 :
            oattack = 5
            spr_dir*=-1
            break;
        }
    }
    
    break;
    
    case 3 :
    
    if move_cooldown[AT_DSPECIAL] == 0 && oattack == 0{
        move_cooldown[AT_USPECIAL] += 30
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%2 {
            case 0 :
            spr_dir*=-1
            oattack = 1
            break; 
            case 1 :
            oattack = 2
            break;
        }
    }
    
    if move_cooldown[AT_USPECIAL] == 0 && oattack == 0{
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%2 {
            case 0 :
            oattack = 4
            break; 
            case 1 :
            oattack = 3
            break;
        }
    }
    
    break;
    
    case 4 :
    
    if move_cooldown[AT_DSPECIAL] == 0 && oattack == 0{
        move_cooldown[AT_USPECIAL] += 30
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%2 {
            case 0 :
            oattack = 4
            break; 
            case 1 :
            spr_dir*=-1
            oattack = 3
            break;
        }
    }
    
    if move_cooldown[AT_USPECIAL] == 0 && oattack == 0{
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%2 {
            case 0 :
            spr_dir*=-1
            oattack = 5
            break; 
            case 1 :
            spr_dir*=-1
            oattack = 5
            break;
        }
    }
    
    break;
    
    case 5 :
    
    if move_cooldown[AT_DSPECIAL] == 0 && oattack == 0{
        move_cooldown[AT_USPECIAL] += 30
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%3 {
            case 0 :
            spr_dir*=-1
            oattack = 6
            break; 
            case 1 :
            oattack = 6
            break;
            case 3 :
            spr_dir*=-1
            oattack = 1
            break;
        }
    }
    
    if move_cooldown[AT_USPECIAL] == 0 && oattack == 0{
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%2 {
            case 0 :
            spr_dir*=-1
            oattack = 6
            break; 
            case 1 :
            spr_dir*=-1
            oattack = 1
            break;
        }
    }
    
    break;
    
    case 6 :
    
    if move_cooldown[AT_DSPECIAL] == 0 && oattack == 0{
        move_cooldown[AT_USPECIAL] += 30
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%2 {
            case 0 :
            spr_dir*=-1
            oattack = 7
            break; 
            case 1 :
            spr_dir*=-1
            oattack = 3
            break;

        }
    }
    
    if move_cooldown[AT_USPECIAL] == 0 && oattack == 0{
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%2 {
            case 0 :
            spr_dir*=-1
            oattack = 1
            break; 
            case 1 :
            spr_dir*=-1
            oattack = 1
            break;
        }
    }
    
    break;
    
    case 7 :
    
    if move_cooldown[AT_DSPECIAL] == 0 && oattack == 0{
        move_cooldown[AT_USPECIAL] += 30
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%2 {
            case 0 :
            spr_dir*=-1
            oattack = 8
            break; 
            case 1 :
            spr_dir*=-1
            oattack = 9
            break;

        }
    }
    

    
    break;
    
    case 8 :
    
    if move_cooldown[AT_DSPECIAL] == 0 && oattack == 0{
        move_cooldown[AT_USPECIAL] += 30
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%3 {
            case 0 :
            spr_dir*=-1
            oattack = 10
            break; 
            case 1 :
            spr_dir*=-1
            oattack = 6
            break;
            case 2 :
            oattack = 2
            break;

        }
    }
    
    if move_cooldown[AT_USPECIAL] == 0 && oattack == 0{
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%3 {
            case 0 :
            spr_dir*=-1
            oattack = 10
            break; 
            case 1 :
            spr_dir*=-1
            oattack = 6
            break;
            case 2 :
            oattack = 4
            break;
        }
    }
    
    break;
    
    case 9 :
    
    if move_cooldown[AT_NSPECIAL_2] == 0 && move_cooldown[AT_EXTRA_1] == 0 {
    	oattack = 11
    }
    if move_cooldown[AT_DSPECIAL] == 0 && oattack == 0{
        move_cooldown[AT_USPECIAL] += 30
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%3 {
            case 0 :
            spr_dir*=-1
            oattack = 1
            break; 
            case 1 :
            oattack = 2
            break;
            case 2 :
            oattack = 5
            break;
        }
    }
    
    if move_cooldown[AT_USPECIAL] == 0 && oattack == 0{
        attackchoosing += get_gameplay_time()%2 + 1
        switch attackchoosing%3 {
            case 0 :
            spr_dir*=-1
            oattack = 2
            break; 
            case 1 :
            spr_dir*=-1
            oattack = 4
            break;
            case 2 :
            oattack = 7
            break;
        }
    }
    
    break;
}

}
} else {
    
    if ending > 0 {
	ending -= 1
	hitpause = true 
	hitstop = 5

	

	
	if ending == 520 {
		sound_play(sound_get("RI"),false,noone,1,1.2)
		shake_camera(2,4)
	}
	
	if ending == 500 {
		sound_play(sound_get("RI"),false,noone,1,1.2)
		shake_camera(2,4)
	}
	
	if ending == 480 {
		sound_play(sound_get("RI"),false,noone,1,1.2)
		shake_camera(2,4)
	}
	
	if ending == 460 {
	    sound_play(sound_get("RI"),false,noone,1,1.2)
	}
		
	
	if ending == 400 {
		sound_play(sound_get("RI"))
    	sound_play(sound_get("SpaceCut"))
    	shake_camera(4,12)
    	
    	if total < 800 {
		   sound_play(sound_get("rankd"))
	    }
	    
	    if total >= 800 && total < 1200{
	    	sound_play(sound_get("rankc"))
	    }
    
	    if total >= 1200 && total < 1600{
	    	sound_play(sound_get("rankb"))
	    }
    
	    if total >= 1600 && total < 2000{
	    	sound_play(sound_get("ranka"))
	    }
    
	    if total >= 2000 && total < 2400{
	    	sound_play(sound_get("ranks"))
	    }
	    
	    if total >= 2400 && total < 2800{
	      sound_play(sound_get("rankss"))
	    }
	    
	    if total >= 2800 {
	    	sound_play(sound_get("ranksss"))
	    }
	    
	  }


	if ending == 200 {
		set_player_stocks(player, 1);
		end_match();
	}
}
    
    
}