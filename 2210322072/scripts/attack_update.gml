	//B - Reversals

if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_EXTRA_1 || attack == AT_FSPECIAL){
    trigger_b_reverse();
}

if attack == AT_JAB {
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_weak2"))
	}
	
	if has_hit && !hitpause {
		window_timer += 0.8
		if left_strong_pressed or right_strong_pressed or up_strong_pressed or down_strong_pressed{
			set_state(PS_IDLE)
		}
	}
}

if attack == AT_NAIR {
	
	if window == 2 {
		set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
	}
	if window == 1 && window_timer <= 1 {
	if left_strong_pressed or right_strong_pressed {
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 14);
		set_attack (AT_FAIR)
		window = 5
		window_timer = 0
	}
	}
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_spin"))
	}
	
	if window == 2 && !hitpause {
		x += (8 - window_timer)*spr_dir
	}
	
	if has_hit && !hitpause {
		window_timer += 0.8
		if left_strong_pressed or right_strong_pressed or up_strong_pressed or down_strong_pressed{
			set_state(PS_IDLE)
		}
	}
}

if attack == AT_FTILT {
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_ice_shieldup"))
		sound_play(asset_get("sfx_swipe_weak1"))
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
		if left_strong_pressed or right_strong_pressed or up_strong_pressed or down_strong_pressed{
			set_state(PS_IDLE)
		}
	}
}

if attack == AT_FAIR {
	
	if window = 2 {
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 5);
	}
	
	if window == 1 && window_timer <= 1 {
	if left_strong_pressed or right_strong_pressed {
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 14);
		window = 5
		window_timer = 0
	}
	}
	
	if window == 4 {
		set_state (PS_IDLE_AIR)
	}
	
	if window_timer == 7 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_weak2"))
	}
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_ice_shieldup"))
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
}

if attack == AT_BAIR {
	set_attack (AT_NAIR)
	spr_dir *= -1
}
if attack == AT_UTILT {
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_medium1"))
		sound_play(asset_get("sfx_ice_shieldup"))
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
		if left_strong_pressed or right_strong_pressed or up_strong_pressed or down_strong_pressed{
			set_state(PS_IDLE)
		}
	}
}


if attack == AT_UAIR {
	
	if window == 2 {
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
	}
		if window == 4 {
		set_state (PS_IDLE_AIR)
	}
	
	
	
	if window == 1 && window_timer <= 1 {
	if up_strong_pressed{
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 12);
		window = 5
		window_timer = 0
		sound_play(asset_get("sfx_swipe_heavy1"))
	}
	}
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_medium1"))
		sound_play(asset_get("sfx_ice_shieldup"))
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
}

if attack == AT_DTILT {
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_ice_shieldup"))
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
		if left_strong_pressed or right_strong_pressed or up_strong_pressed or down_strong_pressed{
			set_state(PS_IDLE)
		}
	}
}

if attack == AT_DAIR {
	
	if window == 2 {
		set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
	}
			if window == 4 {
		set_state (PS_IDLE_AIR)
	}
	
		if window_timer == 1 && window == 5 && !hitpause {
		sound_play(asset_get("sfx_swipe_heavy2"))
	}
	
	if window_timer == 14 && window == 5 && !hitpause {
		sound_play(asset_get("sfx_swipe_medium1"))
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
	
	if window == 1 && window_timer <= 1 {
	if down_strong_pressed{
		set_attack_value(AT_DAIR, AG_LANDING_LAG, 12);
		window = 5
		window_timer = 0
	}
	}
	

	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_medium1"))
		sound_play(asset_get("sfx_ice_shieldup"))
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
}


if attack == AT_DATTACK {
	
	if window == 1 {
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("ftilt"));
	}
	if window == 2 && window_timer == 2 && !hitpause {
		sound_play(asset_get("sfx_ice_shieldup"))
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("utilt"));
	}
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_heavy1"))
	}
	
	if has_hit && !hitpause && window == 3 {
		window_timer += 0.6
		if left_strong_pressed or right_strong_pressed or up_strong_pressed or down_strong_pressed{
			set_state(PS_IDLE)
		}
	}
}


if attack == AT_USTRONG {
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_heavy1"))
	}
	
	if window_timer == 1 && window == 8 && !hitpause {
		sound_play(asset_get("sfx_swipe_weak2"))
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
	
}


if attack == AT_DSTRONG {
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_heavy2"))
	}
	
	if window_timer == 1 && window == 16 && !hitpause {
		sound_play(asset_get("sfx_swipe_heavy1"))
		hsp = 0
	}
	
    
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
	
}

if attack == AT_FSTRONG {
	if has_hit && !hitpause {
		window_timer += 0.6
	}
}


if attack == AT_FSPECIAL {
		if window >= 3 {
	can_wall_jump = true
	}
	if free {
		can_move = false
		can_fast_fall = false
		if vsp > 0 {
		vsp /= 1.4
		}
		hsp /= 1.2
	}
	if window == 1 {
		if window_timer % 5 == 0 {
			spawn_hit_fx(x + window_timer*10*spr_dir, y , ai)
		}
		if window_timer % 6 == 0 {
			spawn_hit_fx(x + window_timer*6*spr_dir, y , ai)
		}
	}
	if window == 3 && window_timer == 1 && !hitpause && free {
			vsp = -3
	}
	
	if has_hit_player && window == 2 {
		x = hit_player_obj.x + (50*spr_dir)
	}
	
	if window == 1 && window_timer > 23 && !hitpause {
		spawn_hit_fx(x , y - 36, 302)
		spawn_hit_fx(x , y - 36, 303)
		spawn_hit_fx(x + 30 * spr_dir, y , ai)
		spawn_hit_fx(x + 120 * spr_dir, y , ai)
		spawn_hit_fx(x + 200 * spr_dir, y , ai)
	}
	
	if has_hit_player && window == 4 && !hitpause{
		window_timer += 0.6
	}
	move_cooldown[AT_FSPECIAL] = 999 ;
}

if attack == AT_NSPECIAL {
	if window == 1 {
	move_cooldown[AT_NSPECIAL] = 999 ;
}
	
	if window == 1 && window_timer <= 5 {
		if left_down && !right_down {
			spr_dir = -1
		}
		if right_down && !left_down {
			spr_dir = 1
		}
	}
	can_move = false
	can_fast_fall = false
		
	if window == 1  && !hitpause && nshit < 3 && !free{
		x -= (12 - window_timer)/2 * spr_dir
	}
	if window != 1 && free {
		vsp/= 1.5
	}
	if window >= 3  && !hitpause {
		hsp /= 1.2
		if has_hit {
				move_cooldown[AT_NSPECIAL] = 0;
		}
	}
	if window > 2 && has_hit && !hitpause {
		window_timer += 0.4
	}
	
		
	if nshit > 3 && window == 1 && window_timer == 1{
	spawn_hit_fx (x,y -30 , 302 )
    spawn_hit_fx (x,y - 30, wh )
    spawn_hit_fx (x,y - 30, bh )
    sound_play(asset_get("sfx_bird_downspecial"))
	}
	
	if nshit > 3 && window == 1 && window_timer == 11 {
		nshit = -10
		set_attack (AT_FTILT)
		sound_play(asset_get("sfx_ice_on_player"))
		sound_play(asset_get("sfx_bird_sidespecial"))
		window = 2
		window_timer = 0
		create_hitbox(AT_NSPECIAL , 3 , x + (40*spr_dir) , y - 40 ); 
	}
}


if nshit == -10 {
	if attack == AT_FTILT {
		hsp /= 1.4
		vsp /= 1.4
		if window == 2 && window_timer > 4 {
		set_attack (AT_FSTRONG)
		window = 1
		window_timer = 3
		}
	}
	
	if attack == AT_FSTRONG {
	    hsp /= 1.4
		vsp /= 1.4
		if window == 2 && !hitpause {
			sound_play(asset_get("sfx_bird_sidespecial"))
			create_hitbox(AT_NSPECIAL , 2 , x + (40*spr_dir) , y - 40 ); 
			nshit = 0
		}
	}
}

if attack == AT_USPECIAL {
	if window >= 3 {
	can_wall_jump = true
	}
	if free {
		if window < 4 {
		can_move = false
		}
		can_fast_fall = false
	}
	
		if window == 1 {
		if window_timer % 5 == 0 {
			spawn_hit_fx(x  , y - window_timer*8 , ai)
		}
		if window_timer % 6 == 0 {
			spawn_hit_fx(x , y - window_timer*5 , ai)
		}
	  }
	
	if window == 1 && free{
		hsp /= 1.03
		vsp /= 1.4
	}
	
	if window == 3 {
		vsp -= 1
	}
	if window == 4 && !free {
		set_state (PS_PRATLAND)
	}
	if window == 3 && window_timer == 1 && !hitpause && free {
			vsp = -3
	}
	
	
	if window == 1 && window_timer > 23 && !hitpause {
		spawn_hit_fx(x , y - 36, 302)
		spawn_hit_fx(x , y - 36, 304)
		spawn_hit_fx(x , y - 30 , ai)
		spawn_hit_fx(x , y - 90 , ai)
		spawn_hit_fx(x , y - 150 , ai)
	}
	
	if has_hit_player && window == 4 && !hitpause{
		window_timer += 0.6
	}
	move_cooldown[AT_USPECIAL] = 999 ;
}

if attack == AT_DSPECIAL {
	if (y >= room_height - 40 - vsp) {
		y -= 10
		vsp = -8
	}
	if ( x > room_width/2 + 650) {
		x -= 10
		hsp -= 2
	}
		
	if	(x < room_width/2 - 650) {
		x += 10
		hsp += 2
	}
	
	if (y <= vsp + 30) {
		y += 10
		vsp += 2
	}
	if window == 1 && soultimer < 0 {
		
		outline_color = [0, 0, 0]
                     	init_shader();
                         spawn_hit_fx (x,y -30 , 302 )
                         spawn_hit_fx (x,y - 30, wh )
                         spawn_hit_fx (x,y - 30, bh )
                     	sound_play(asset_get("sfx_holy_lightning"))
                     	sound_play(sound_get("slicen"))
                     soultimer = 0
                     x = soulx
                     y = souly
                     set_attack (AT_DSPECIAL)
                     window = 4
                     window_timer = 0
                     
	}
	
	can_fast_fall = false
	hsp /= 1.2
	if vsp > 0 {
	vsp /= 2
	}
	
	if window == 2 && window_timer == 29{
		spawn_hit_fx(x , y - 36, 306)
	}
	if window == 3 && window_timer == 1 {

if  get_player_color(player) == 5 {
sound_play(sound_get("CARAMEL"))
}		
		souldmg = 0
		move_cooldown[AT_DSPECIAL] = 120;
		soulx = x
		souldir = spr_dir
		souly = y
		if free {
			soulfree = 1
		} else {
			soulfree = -1
		}
		if left_down && !right_down {
			hsp = -8
		}
		if !left_down && right_down {
			hsp = -8
		}
		if !left_down && !right_down {
			hsp = -8 * spr_dir
		}
		vsp = -8
		set_state (PS_IDLE)
		soultimer = -360
		state_timer = 0
	}
	if window == 4 {
		has_airdodge = true
		hsp = 0
        vsp = 0
	}
	if window == 4 && window_timer == 44 && free {
		set_state (PS_PRATFALL)
	}

	
}

if attack == AT_TAUNT {
if window_timer == 10 && window == 1 && !hitpause {
	sound_play(asset_get("sfx_swipe_heavy2"))
}	

if window_timer == 22 && window == 1 && !hitpause {
	sound_play(asset_get("sfx_swipe_heavy1"))
}	

}