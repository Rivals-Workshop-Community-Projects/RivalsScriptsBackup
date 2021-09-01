
if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if gunname >= 0 && gunname <= 3 && infernal2 < 100 {
	move_cooldown[AT_NSPECIAL] = 2
}


if gunname >= 4 && gunname <= 7 && infernal2 < 200 {
	move_cooldown[AT_NSPECIAL] = 2
}


if gunname >= 8 && infernal2 < 300 {
	move_cooldown[AT_NSPECIAL] = 2
}

if triggered > 1 && !hitpause{
	triggered -= 1
	
	if triggered % 60 == 0 {
		take_damage(player,-1,-1)
	}
}

if triggered = 1 {
		sound_play(asset_get("sfx_ori_grenade_aim"),false, noone, 0.6);

triggered = 0
}

if gainlockout > 0 {
	gainlockout -= 1
}


		
		
 	if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
 		attacking = true 
 	} else {
 		attacking = false
 	}

set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 6 * spr_dir);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_HSPEED, -6 * spr_dir);

if(get_gameplay_time() == 1){

inx = x
iny = y
	
}

if(get_gameplay_time() == 2){

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
			
if x < shortest_id.x {			
if shortest_id.url == "1913869515" or shortest_id.url == "2069283406" or shortest_id.url == "1997619532" 
or shortest_id.url == "2085832560" or shortest_id.url == "2108469290" or shortest_id.url == "2047413648"
or shortest_id.url == "2154720280" or shortest_id.url == "2136624834"
{
create_hitbox(AT_EXTRA_1 , 20 , shortest_id.x , shortest_id.y );   		
}
}

}


if hit_player_obj != self {
if introtimer = 1 {
	        visible = true
		  spawn_hit_fx( x, y, lighten)
	x = inx + (42 * introhit)
	y = iny
	introtimer = 0
	hitpause = 0
	spawn_hit_fx( x, y, exp2)
	
	if introhit = 1 {
		sound_play(asset_get("sfx_abyss_explosion"),false, noone, );
		sound_play(sound_get("exp2"),false, noone, 2);
		hsp = -8
		vsp = 0
		spr_dir = 1
		
	}
	
	if introhit = -1 {
		hsp = 8
		vsp = 0
		spr_dir = -1
	}
	
}

	

if intro = 1 && instance_number(oPlayer) == 2 {

if (hit_player_obj.url == "1913869515" or hit_player_obj.url == "2069283406" or hit_player_obj.url == "1997619532" 
or hit_player_obj.url == "2085832560" or hit_player_obj.url == "2108469290" or hit_player_obj.url == "2047413648"
or hit_player_obj.url == "2154720280" or hit_player_obj.url == "2136624834")
&&  hit_player_obj.introtimer != 0{
	
take_damage( player, -1 , -1 )
	/// Zetta Alex Mayu Katie Saji Uza Nolan Elice
if introtimer = -1{
	introtimer = 300
	
}

if get_gameplay_time() % 3 == 0 {
        spawn_hit_fx( x, y , smoke1 )
}

if get_gameplay_time() % 20 == 0 {

        spr_dir *= -1
}

if introtimer > 1 && get_gameplay_time() % 20 == 0  {
	set_state (PS_DOUBLE_JUMP)
}

if introhit == 1 {
	if get_gameplay_time() % 20 = random_func(10, 20, true) {
	  sound_play(asset_get("sfx_quick_dodge"),false, noone, 0.6);	
      sound_play(sound_get("RI"),false, noone, 0.8);
	  spawn_hit_fx( x, y, lighten)
	}
	
	if get_gameplay_time() % 20 = 10 {
		spawn_hit_fx( x, y, 302)
		sound_play(sound_get("SGL"),false, noone, 0.6);
		sound_play(asset_get("sfx_quick_dodge"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 15 {
		spawn_hit_fx( x, y, 305)
		sound_play(sound_get("RI2"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 20 {
visible *= -1
draw_indicator *= -1			
		spawn_hit_fx( x, y, exp1)
		sound_play(asset_get("sfx_swipe_weak1"),false, noone, 0.6);
	}
}

if introhit == -1 {
	if get_gameplay_time() % 20 = random_func(10, 20, true) - 10 {
	  sound_play(asset_get("sfx_roll"),false, noone, 0.6);	
	   sound_play(sound_get("exp2"),false, noone, 0.8);
	  spawn_hit_fx( x, y , darken )	
	}
	if get_gameplay_time() % 20 = 0 {
		spawn_hit_fx( x, y, 302)
		sound_play(sound_get("SGL"),false, noone, 0.6);
		sound_play(asset_get("sfx_roll"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 0 {
		spawn_hit_fx( x, y, 305)
		sound_play(sound_get("RI2"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 0 {
		spawn_hit_fx( x, y, exp1)
		sound_play(asset_get("sfx_swipe_weak2"),false, noone, 0.6);
	}
}



if get_gameplay_time() % 10 = 0 && introtimer > 1 {
hsp = (room_width/2 - x + 100  - random_func(1, 200, true)) / 7
vsp = (room_height/2 - y - 80  - random_func(2, 160, true)) / 7
}

if introtimer > 0 {
	
		 with (asset_get("oPlayer")) {
	if (player != other.player) {
		
		if hitpause {
		with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
    }
	}
    
    
	}
	
   }
   
				with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
			}
	introtimer -= 1
	
	
	 if introhit = -1 {
	if get_gameplay_time() % 3 = 0 {
		spawn_hit_fx( x, y , darken )	
	}
	}
}

}

}
}


////////////

if gunname == 0 {

}


if droptime > 0 {
	droptime -= 1

}





///FEATURING 

if get_player_color(player) == 7 {

if get_gameplay_time() == 15 {
	
	sound_play(sound_get("isa2"));
}


if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 {
	
 if get_player_color(player) == 7{
     
     if get_gameplay_time() % 7 == 6 {
	 sound_play(sound_get("isa6"));
	}
	
	if get_gameplay_time() % 7 == 5 {
	 sound_play(sound_get("isa5"));
	}
	
	if get_gameplay_time() % 7 == 4 {
	 sound_play(sound_get("isa3"));
	}
	
	if get_gameplay_time() % 7 == 3 {
	 sound_play(sound_get("isa2"));
	}
	
	if get_gameplay_time() % 7 == 2 {
	 sound_play(sound_get("isa2"));
	}
	
	if get_gameplay_time() % 7 == 1 {
	 sound_play(sound_get("isa1"));
	}
	
}
     
 }
 
 



if attack == AT_TAUNT && (window == 1 or window == 4) && window_timer == 1 {
if get_gameplay_time() % 7 == 6 {
	 sound_play(sound_get("isa6"));
	}
	
	if get_gameplay_time() % 7 == 5 {
	 sound_play(sound_get("isa5"));
	}
	
	if get_gameplay_time() % 7 == 4 {
	 sound_play(sound_get("isa3"));
	}
	
	if get_gameplay_time() % 7 == 3 {
	 sound_play(sound_get("isa2"));
	}
	
	if get_gameplay_time() % 7 == 2 {
	 sound_play(sound_get("isa2"));
	}
	
	if get_gameplay_time() % 7 == 1 {
	 sound_play(sound_get("isa1"));
	}
	
}
}

if get_gameplay_time() <= 120 && hunter == 0 and taunt_pressed && get_player_color(player) == 1{
	hunter = 1
	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
	sound_play(sound_get("Dintro"));
	set_victory_theme(sound_get("Dwin"));

}



if get_gameplay_time() <= 120 && Vrank == 0 and taunt_pressed && get_player_color(player) != 1{
	Vrank = 1
	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
    sound_play(sound_get("rankc")) 	
}


 if get_player_color(player) == 1 && hunter == 1 {
 	
 	if prevstyle != style {
 		prevstyle = style
 		spawn_hit_fx( x, y - 30, stylec )
 		
 		if style == 1 {
 			sound_play(sound_get("DSw"));
 		}
 		if style == 2 {
 			sound_play(sound_get("DGu"));
 		}
 		if style == 3 {
 			sound_play(sound_get("DTr"));
 		}
 		if style == 4 {
 			sound_play(sound_get("DRo"));
 		}
 		
 		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
 		
 	} 
 	
 	if state == PS_WAVELAND && state_timer == 6 {
 		style = 1
 	}
 	
 	if state == PS_PARRY or state == PS_TECH_GROUND or state == PS_WALL_TECH {
 		style = 4
 	}
 	
 	if state == PS_AIR_DODGE or state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD 
 	or state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD or state == PS_DOUBLE_JUMP{
 		style = 3
 	}
 	
 	
 	if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR && !hitpause {
 		if attack == AT_DSPECIAL&& window == 3 && window_timer == 6{
 				sound_play(sound_get("DN"));
 		}
 		
 		if attack == AT_TAUNT && window == 1 && window_timer == 1{
 				sound_play(sound_get("DT1"));
 		}
 		
 		if attack == AT_TAUNT && window == 7 && window_timer == 1{
 				sound_play(sound_get("DT2"));
 		}
 		
 		if attack == AT_DATTACK{
 			if window == 2 && window_timer == 1{
 				sound_play(sound_get("DDa1"));
 			}
 			
 			if window == 4 && window_timer == 1 && grind <= 1{
 				sound_play(sound_get("DDa2"));
 			}
 		}
 		if attack == AT_NSPECIAL {
 			style = 4
 		}
 		
 		if attack == AT_DSPECIAL  or attack == AT_FTILT or attack == AT_FSTRONG
 		or attack == AT_NAIR or (attack == AT_JAB && window == 7) or attack == AT_USTRONG or attack == AT_UAIR 
 		or attack == AT_EXTRA_1 or attack == AT_EXTRA_2 or attack == AT_DTILT or (attack == AT_DAIR && window < 5 && window_timer > 2){
 			style = 2
 		}
 		
 		if attack == AT_DSTRONG or (attack == AT_DAIR && window > 5) or attack == AT_BAIR or attack == AT_FAIR 
 		or attack == AT_UTILT or (attack == AT_JAB && window == 1) or attack == AT_DATTACK or (attack == AT_USPECIAL && window_timer > 2){
 			style = 1
 		} 
 		
 		if attack == AT_FSPECIAL {
 			style = 3
 		}
 		
 		
 	}


 
 	
}
 
 	
 	


///

if state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR {
  drops = 0
	
}

if state_cat == SC_HITSTUN && faces != 0 {
	spr_dir = faces
}

if state == PS_IDLE{
	faces = 0
}

if get_gameplay_time() <= 40 && intro != 1 {
	draw_indicator = false 
	set_attack (AT_TAUNT)
	window = 20
	window_timer = 0
}

if (!free) {
	move_cooldown[AT_USPECIAL] = 0 
	move_cooldown[AT_UAIR] = 0 
	move_cooldown[AT_BAIR] = 0 
	
};
if (state == PS_WALL_JUMP) {
	move_cooldown[AT_USPECIAL] = 0
};

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
   
if state_timer == 1 {
    	sound_play(asset_get("sfx_quick_dodge"));
}
	 
	 if state_timer < 9{
	     hsp = -0.5 * spr_dir
	 }
	 
	 if state_timer >= 9 and state_timer < 12 {
	     hsp = -30 * spr_dir
	 }
	 if state_timer >= 4 and state_timer < 12 {
	     draw_indicator = false
	 }
	  
	 if state_timer > 12 {
	     hsp = 0
	     draw_indicator = true
	 }
	 
}

if state == PS_AIR_DODGE {
	
	if state_timer < 1{ 
	oldx = x
	oldy = y
	}
	 if state_timer < 7 and state_timer > 1{
	     x = oldx
	 }
	 
	  if state_timer < 7  and state_timer > 1{
	     y = oldy
	 }
	 
	  if state_timer >= 6 and state_timer < 15 {
	     draw_indicator = false
	 }
	 
	 if state_timer > 15 {
	     draw_indicator = true
	 }
	
}


if state == PS_DOUBLE_JUMP {
	if state_timer == 1{
		spawn_hit_fx( x, y, djumpfx )

	}
}

/// INFERNAL ENERGY


if infernal2 > 301{
	 if get_player_color(player) == 1 && hunter == 1 {
	 	sound_play(sound_get("Dmax"));
	 }	
	spawn_hit_fx( x , y - 30, 306 )
	sound_play(sound_get("RI"));
	sound_play(sound_get("exp1"));
	infernal2 = 300
}




if infernal2 < 100 {
     move_cooldown[AT_NSPECIAL] = 2
}

if infernal2 >= 100 && infernal2 < 198 {
	
		 if get_gameplay_time() % 4 == 0 && !hitpause {
		spawn_hit_fx( x - ((20 - random_func(11, 50, true)) * spr_dir) , y - 16 - random_func(12, 66, true) , dairs3 )
	}


}

if infernal2 >= 198 && infernal2 < 300 {
	
		 if get_gameplay_time() % 4 == 0 && !hitpause {
		spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 16 - random_func(12, 66, true) , smoke1 )
	}

		
	if get_gameplay_time() % 4 == 1 && !hitpause {
		spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 16 - random_func(12, 66, true) , smoke2 )
	}
	
		

}

if infernal2 >= 300 {
	 if get_gameplay_time() % 4 == 0 && !hitpause {
		spawn_hit_fx( x - ((25 - random_func(1, 50, true)) * spr_dir) , y - 16 - random_func(12, 66, true) , smoke1 )
	}

		
	if get_gameplay_time() % 4 == 1 && !hitpause {
		spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 16 - random_func(12, 66, true) , smoke2 )
	}
	
	if get_gameplay_time() % 6 == 1 && !hitpause {
		spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 16 - random_func(12, 66, true) , dairs3 )
	}
	
		
}


if gunname >= 1 && gunname <= 3 && infernal2 >= 100 {
		 if get_gameplay_time() % 2 == 0 && !hitpause {
 spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 16 - random_func(12, 66, true) , ustrongs2 )
	 }
}

if gunname >= 4 && gunname <= 7 && infernal2 >= 200 {
			 if get_gameplay_time() % 2 == 0 && !hitpause {
 spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 16 - random_func(12, 66, true) , ustrongs2 )
	 }
}


if gunname >= 8 && infernal2 >= 300 {
			 if get_gameplay_time() % 2 == 0 && !hitpause {
 spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 16 - random_func(12, 66, true) , ustrongs2 )
	 }
}




if get_player_color(player) == 8 {
	outline_color = [19, 15, 28]
   if visible {  
   	if !hitpause {
	if get_gameplay_time() % 40 == 0 {
   	set_color_profile_slot(get_player_color(player),0, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 40 == 26{
	set_color_profile_slot(get_player_color(player),0, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 40 == 13 {
	set_color_profile_slot(get_player_color(player),0, 160, 195, 250 );	
	}
	
		if get_gameplay_time() % 60 == 0 {
   	set_color_profile_slot(get_player_color(player),3, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 60 == 40{
	set_color_profile_slot(get_player_color(player),3, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 60 == 20 {
	set_color_profile_slot(get_player_color(player),3, 160, 195, 250 );	
	}
   	}
   	
   	if hitpause {
	if get_gameplay_time() % 8 == 0	 {
   	set_color_profile_slot(get_player_color(player),0, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 8 == 6{
	set_color_profile_slot(get_player_color(player),0, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 8 == 3{
	set_color_profile_slot(get_player_color(player),0, 160, 195, 250 );	
	}
   	}
	}
    init_shader();	 
}




//////////
/// setstock 





if rankm >= 0 && !hitpause {

	inactive -= 1
	
    if inactive < 0 {
	rankm -= 1
	}
	
	
	if inactive < -120 {
		rankm -= 1
	}
	

	
}



if rank > 0  {

if infernal2 < 300 {
	infernal2 += 0.02 * rank
}

if rankm <= 0 {
	if rank == 1 {
		if hunter == 1 or Vrank = 1  {
	   sound_play(sound_get("rankd"),false,noone,1) 
	    prevrank = rank 
		}
    } else {
    	 prevrank = rank 
    }
    
 rankm += 120
 rank -= 1
 
}

}

if rank < 6  {
	

	
   if rankm >= 240 {
   	move_cooldown[AT_FSTRONG_2] = 10
   	spawn_hit_fx(x - 30,y - 64,swordhit )
   	 rankm -= 120
     rank += 1
     
if hunter == 1 or Vrank = 1 {
     switch rank {
     	case 1 :
     	sound_stop(sound_get("rankd")) 	
     	if rank > prevrank {
     	sound_play(sound_get("rankc"),false,noone,0.8) 	
     	prevrank = rank
     	}
     	break;
     	
     	case 2 :
     	if rank > prevrank {
     	sound_stop(sound_get("rankc")) 	
     	sound_play(sound_get("rankb"),false,noone,0.8) 
     	prevrank = rank
     	}
     	break;
     	
     	case 3 :
     	if rank > prevrank {
     	sound_stop(sound_get("rankb")) 	
     	sound_play(sound_get("ranka"),false,noone,0.8) 
     	prevrank = rank
     	}
     	break;
     
        case 4 :
        if rank > prevrank {
     	sound_stop(sound_get("ranka")) 	
     	sound_play(sound_get("ranks"),false,noone,0.8) 
     	prevrank = rank
        }
        
     	 if hitpause {
     		hitstop += 4
     		hit_player_obj.hitstop += 4
     	}
     	
     	    spawn_hit_fx(x,y,lighten)
     		sound_play(sound_get("RI"),false,noone,0.7)
     	
     	break;
     	
     	case 5 :
     	if rank > prevrank {
     	sound_stop(sound_get("ranks")) 	
     	sound_play(sound_get("rankss"),false,noone,0.8) 
     	prevrank = rank
     	}
     	break;
     	
     
        case 6 :
        if rank > prevrank {
     	sound_stop(sound_get("rankss")) 	
     	sound_play(sound_get("ranksss"),false,noone,0.8) 
     	prevrank = rank
        }
     	break;
     		
     }
   }
   
}
   
} else {
   if rankm >= 240 {	
   	 rankm -= 2
   }
}

