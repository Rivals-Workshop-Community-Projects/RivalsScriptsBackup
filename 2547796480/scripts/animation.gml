/// ALL THE RUNE BS IN HERE

if state == PS_PRATFALL && state_timer < 25 && vsp < 0 {
	sprite_index = sprite_get("walljump")
	image_index = state_timer / 5
}

///
///rune A type="A"
///rune A desc="Portable Charger: Recommended rune for Abyss Mode. Passively refill battery."

if has_rune("A") {

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
	if !free {
		daired = 0
	}
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
         if state_timer > 6 && state_timer < 25 {
         super_armor = true
         }else{
             super_armor = false
         }
         
         if super_armor && hitpause {
             	    spawn_hit_fx (x , y - 40 , exp2)

    

        sound_play(sound_get("exp2")); 

	 
	 	    create_hitbox(AT_NSPECIAL , 2 , x  , y - 20 );
         	invincible = true
         	hitpause = 1
         	hitstop = 15
         	batt = 5
         	             spawn_hit_fx (x, y - 40, 306)
         	spr_dir = hit_player_obj.spr_dir
         	y = 0
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
///rune G desc="Loose belt: All contact have a chance to make a grenade explosion on spot."

if has_rune("G") {
if hitpause && random_func(11,30,true) == 0 && move_cooldown[AT_UAIR] == 0 {

	    spawn_hit_fx ((hit_player_obj.x + x)/2 , (hit_player_obj.y + y)/2 - 40 , 204)
	    sound_play(sound_get("exp2")); 
	   sound_play(asset_get("sfx_abyss_explosion")); 
	    create_hitbox(AT_DSPECIAL , 2 , floor((hit_player_obj.x + x)/2)  , floor((hit_player_obj.y + y)/2) - 40);
	    shake_camera(2, 10)
	     move_cooldown[AT_UAIR] = 2
}
}

///rune H desc="Magnetism: Knives path become zigzag, grenade accelerate itself and nuke follow you."


///rune I desc="Mine Land: Place a [Mine Land] with dtilt, cost 1 charge."
if has_rune("I") {
	if attacking && attack == AT_DTILT && window_timer == 1 && window == 2 && !hitpause && batt > 0 {
		batt -= 1
		window_timer += 1
		create_hitbox(AT_DTILT,3,x + 30*spr_dir, y - 10)
	}
}

///rune J desc="Blasting Anyway: Jab become a faster Fstrong pistol, both can be rapid fire."
if has_rune("J") {
	if attacking && attack == AT_JAB && window_timer == 3 && window == 1 && batt > 0{
		set_attack (AT_FSTRONG)
		window = 3 
		window_timer = 0
		batt -= 1
	}
	 
	 if attacking && attack == AT_FSTRONG && window == 3 && window_timer > 6 && (attack_pressed or left_strong_pressed or right_strong_pressed) && batt > 0{
	 	attack_end();
	 	set_attack (AT_FSTRONG)
		window = 3 
		window_timer = 0
		batt -= 1
	 }
}

///rune K desc="Deep Wound: Knives marks wont go away."
///in hitplayer

///rune L desc="Air Support: Taunt codec will cost charge and call missles on targeted enemy."

if has_rune("L") {
	if attacking && attack == AT_TAUNT {
		if state_timer % 10 == 0 && state_timer > 10 && batt > 0 && taunt_down {
			spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 20, 113)
			create_hitbox(AT_DTILT,4,hit_player_obj.x - (400 + random_func(1,100,true))*spr_dir , hit_player_obj.y - 480)
			create_hitbox(AT_DTILT,4,hit_player_obj.x - (500 + random_func(2,100,true))*spr_dir , hit_player_obj.y - 580)
	    	sound_play(asset_get("sfx_holy_lightning"));
	    	shake_camera(2,4)
	    	batt -= 1
		}
		
	}
}

///rune M desc="United: Melee hit have chance to call reinforcements."
if has_rune("N") {

	 if get_gameplay_time() % 120 == 0 {
	 	batt += 1
	 }
}

///in hitplayer


///rune O desc="Load out: double the amount of projectile throw."
//in Attack Update