/// ALL THE RUNE BS IN HERE

if state == PS_PRATFALL && state_timer < 25 && vsp < 0 {
	sprite_index = sprite_get("walljump")
	image_index = state_timer / 5
}
///
///rune A type="A"
///rune A desc="Portable Charger: Recommended rune for Abyss Mode. Passively refill battery."
if has_rune("L") or has_rune("M") or has_rune("N") or has_rune("O") {
	if get_gameplay_time() % 480 == 0 && batt < 4 {
	    batt += 1
           spawn_hit_fx (x, y - 40, 302)  
	sound_play(asset_get("sfx_holy_tablet"));
	}
}

if has_rune("A") {
    if get_gameplay_time() % 480 == 1 && batt >= 4 {
	create_hitbox(AT_NSPECIAL , 1 , x , room_height/2 - 1000 );
    }
}
///
///rune B type="A"
///rune B desc="Nice rune: Run speed increase from 6.66 to 6.9"
if has_rune("B") {
initial_dash_speed = 8;
dash_speed = 6.9
}
///
///rune C type="A"
///rune C desc="Vibing: Air speed increase from .250 to .420"
if has_rune("C") {
air_accel = .420;
}
///
///rune D type="A"
///rune D desc="Shmoving: Tripple Jump"
if has_rune("D") {
max_djumps = 2;
}
///
///rune E type="A"
///rune E desc="Air Combo: Dair and Uspecial can be jump-cancel or cancel into eachother once per airtime"
if has_rune("E") {
 if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
    if attack == AT_DAIR or attack == AT_USPECIAL{
        if window > 1 {
        if jump_pressed {
            set_state (PS_IDLE_AIR)
        }
        }
        if window > 1 && daired <= 3{

                    if attack == AT_DAIR && special_pressed{
                    	        	daired += 1
                           set_attack (AT_USPECIAL)
                           window = 1
                           window_timer = 5
                           has_airdodge = false  
                    }
                    if attack == AT_USPECIAL && attack_pressed {
                    	        	daired += 1
                           set_attack (AT_DAIR)
                           window = 1
                           window_timer = 5
                    }
            }
                    
        }
    }
}
///
///rune F type="A"
///rune F desc="I'm Here: Taunt become a counter."
if has_rune("F") {
    ///more in gothit.gml
 if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
     if attack == AT_TAUNT {
         if state_timer > 6 && state_timer < 30 {
         super_armor = true
         }else{
             super_armor = false
         }
         
         if super_armor && hitpause {
        create_hitbox(AT_NSPECIAL , 1 , x , y - 50 );
        create_hitbox(AT_DSPECIAL , 1 , x , y - 10);
    	create_hitbox(AT_DSPECIAL , 1 , x , y - 10);
    	create_hitbox(AT_DSPECIAL , 1 , x , y - 10);
    	
         	invincible = true
         	hitpause = 1
         	hitstop = 15
         	             spawn_hit_fx (x, y - 40, 306)
         	spr_dir = hit_player_obj.spr_dir
         	x = hit_player_obj.x - 50*spr_dir
             set_attack (AT_TAUNT)
             window = 2
             window_timer = 1
             state_timer = 30
             sound_play(sound_get("shock1"));
    	sound_play(asset_get("sfx_abyss_explosion_big"));
         }
     }
 }
}
///
///rune G type="O"
///rune G desc="Monopoly: your items cannot be destroy or steal."
if has_rune("G") {

}
///
///rune H type="O"
///rune H desc="Go Eco: Attract dropped items."
if has_rune("H") {
    attra = 1
    ///in hitbox_update
}
///
///rune I type="O"
///rune I desc="Free topping: Place cheese tape faster with minimal cost."
if has_rune("I") {
 if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
     if attack == AT_DTILT {

         if window == 1 && window_timer == 5 && !hitpause && supply >= 1{
		supply -= 1
		window = 3
		hsp = -5 * spr_dir
		spawn_hit_fx ( x + (42 * spr_dir) , y - 4, 305)
		create_hitbox(AT_DTILT , 2 , x + (40 * spr_dir) , y - 5 );
	}
	
    }         
}
}
///
///rune J type="R"
///rune J desc="Deep Fried: Fries attacks fire trail of hot oil."
if has_rune("J") {
 if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
     if attack == AT_FAIR {
         if window == 3 && window_timer == 1 && !hitpause{
            sound_play(asset_get("sfx_waterwarp"));
            create_hitbox(AT_FAIR , 6 , x + (28 * spr_dir) , y - 4 ); 
         }
     }
     
    if attack == AT_FSTRONG{
         if window == 3 && window_timer == 1 && !hitpause{
            sound_play(asset_get("sfx_waterwarp_start"));
            create_hitbox(AT_FAIR , 5 , x + (28 * spr_dir) , y - 40 ); 
         }
     }
 }
}
///
///rune K type="R"
///rune K desc="Secret Ingredient: Milkshake bounces. Pizza explodes."
if has_rune("K") {
 milkpizz = 1
 ///more in hitbox_update
 set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 9);
 set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
 set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 3);
 set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_LOCKOUT, 3);
}
///
///rune L type="H"
///rune L desc="Gold Finger: coins burst out from struck opponents."
if has_rune("L") && meleehit = 1 {
	if hit_player_obj.state_cat == SC_HITSTUN && hitpause {
		if get_gameplay_time() % 2 == 0 {
			create_hitbox(AT_DSPECIAL , 6 , floor (hit_player_obj.x - 16 + random_func(6, 32, true)) ,  
			floor (hit_player_obj.y - 10 - random_func(13, 70, true)) );
		}
	    }		
}
	
///
///rune M type="H"
///rune M desc="Tax Fraud: Attack power rise proportionality to money stack, max 400%."
if has_rune("M") && meleehit = 1 {
    ///in hit_player
    

       var outlineclr = abs((sin((get_gameplay_time() - 100) * 0.075) * supply*30)) + supply * 12
       outline_color = [ outlineclr * 0.2, outlineclr * 0.6, outlineclr * 0.3];
           init_shader(); 
    
    
    if supply >= 16 {
        	if get_gameplay_time() % 4 == 0 {
			spawn_hit_fx (x - 16 + random_func(6, 32, true) , y -  random_func(13, 70, true), tauntpar1)
        	}
	}
	
}
    

///
///rune N type="H"
///rune N desc="BIG SALE: Every attack has chances to launch a random item."
if has_rune("N") {
    ///in hitplayer
}
///
///rune O type= H
///rune O desc= "MCPlasmaFrier: Nspecial consume full battery to fire a plasma beam."

if has_rune("O") {
  if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
     if attack ==  AT_NSPECIAL && window == 1 && window_timer == 1 && batt >= 4 {
     
         set_attack (AT_EXTRA_2)
         window = 2
     }
    
}
}
