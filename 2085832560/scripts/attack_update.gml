//B - Reversals



if state_timer == 1{
	x = round(x)
	y = round(y)
}

if (attack == AT_DSPECIAL || attack == AT_FSPECIAL 
|| attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_EXTRA_1 || attack == AT_EXTRA_2){
    trigger_b_reverse();
}


if !hitpause && attack == 49{
	  hitpause = false
	    super_armor = false 
        soft_armor = 621
        
    if window == 1 && window_timer == 2 {
    	create_hitbox(AT_EXTRA_2, 3, room_width/2 - 600*spr_dir, room_height/2 - 100)
    }
    
    if state_timer % 30 == 0 {
    	create_hitbox(AT_EXTRA_1, 7, room_width/2 + 400 - random_func(1,800,true), room_height/2 - 100)
    }
    
    
    if window == 15 && window_timer == 1 {
    	spawn_hit_fx(x + 20*spr_dir, y - 45, 304)
    	        sound_play(sound_get("SGF"));
    	 shake_camera(5,6)
    	 
    	 			spawn_hit_fx( x + 10 * spr_dir , y - 20 , exp1 )
			spawn_hit_fx( x + 10 * spr_dir, y - 20 , 304 )
			 spawn_hit_fx( x, y, shotgun2 )
			  spawn_hit_fx( x + 30*spr_dir, y + 40, shotgun1 )
			   spawn_hit_fx( x + 60*spr_dir , y - 5 , shotgun2 )
			   spawn_hit_fx( x + 30*spr_dir, y - 40, shotgun1 )

			
				create_hitbox(AT_FSTRONG , 1 , x + 160 * spr_dir, y - 40 );	
				create_hitbox(AT_FSTRONG , 1 , x + 0 * spr_dir, y - 50 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 60 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 40 );
				create_hitbox(AT_FSTRONG , 1 , x + 160 * spr_dir, y - 30 );	
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 20 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 40 );
				create_hitbox(AT_FSTRONG , 1 , x + 160 * spr_dir, y - 30 );	
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 20 );
				create_hitbox(AT_FSTRONG , 1 , x + 160 * spr_dir, y - 40 );	
				create_hitbox(AT_FSTRONG , 1 , x + 0 * spr_dir, y - 50 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 60 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 40 );
				create_hitbox(AT_FSTRONG , 1 , x + 160 * spr_dir, y - 30 );	
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 20 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 40 );
				create_hitbox(AT_FSTRONG , 1 , x + 160 * spr_dir, y - 30 );	
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 20 );
				create_hitbox(AT_EXTRA_2 , 7 , x + 20 * spr_dir, y - 50 );
				
			if !hitpause {	 
			sound_play (sound_get("exp2"));
			sound_play (sound_get("SGF"));
			sound_play (sound_get("QSGF"));
			}
		
    }


    if window == 16 && window_timer == 9 {
    	create_hitbox(AT_EXTRA_2, 9, x, room_height/2)
    }


}

////explosive


var last_window = get_attack_value(attack, AG_NUM_WINDOWS);

if (window == last_window){
  drops = 0
	
}


if attack != AT_FSPECIAL && window == 1 && window_timer == 1 {
	drops = 1
}



//////

        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  3, true) * -1) - 3 );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, (random_func(2, 3, true) * -1) - 3 );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.5 + ((random_func(3, 4, true))/10));


        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  3, true) * -1) - 4.5 );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, (random_func(5, 3, true) * -1) - 3.5 );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.5 + ((random_func(6, 4, true))/10));
        
         
if attack == AT_JAB {
    
    if window == 8 && window_timer <= 1 {
        spawn_hit_fx( x - 20 *spr_dir, y, shotgun1 )
        if !hitpause && casing == 1{
         create_hitbox(AT_EXTRA_3 , 1 , x - 5 * spr_dir, y - 20 );	
         create_hitbox(AT_EXTRA_3 , 2 , x - 5 * spr_dir, y - 20 );	
        }
    }
}


if attack == AT_FTILT {
    
    if window == 1 && window_timer == 8 {
        sound_play(sound_get("SGF"));
    }
    
    if window == 2 && (window_timer == 1) {
        spawn_hit_fx( x + 10 * spr_dir , y, shotgun1 )
        if !hitpause && casing == 1{
        create_hitbox(AT_EXTRA_3 , 1 , x - 5 * spr_dir, y - 20 );	
         create_hitbox(AT_EXTRA_3 , 2 , x - 5 * spr_dir, y - 20 );	
        }
    }
    
    if window == 3 && window_timer == 14 {
        set_attack (AT_JAB)
        window = 8
        window_timer = 12
         sound_play(sound_get("SGL"));
    }
}

if attack == AT_UTILT {
    if has_hit_player && jump_pressed{
    	can_jump = true
    	user_event(2)
    }
    if window == 1 && window_timer == 4 {
        sound_play(asset_get("sfx_clairen_swing_strong"),false,noone,1,1.5);
        sound_play(asset_get("sfx_clairen_swing_mega_instant"),false,noone,0.8,1.2);
    }
    
}

if attack == AT_DTILT {
    move_cooldown[AT_DTILT] = 20
}
///Dash Down
if djumps == 0 && (attack == AT_NAIR or attack == AT_FAIR or attack == AT_UAIR or attack == AT_DAIR or attack == AT_BAIR){
	if has_hit_player && down_hard_pressed && can_fast_fall{
		user_event(2)
		attack_end()
		set_attack(AT_DTHROW)
		window = 2
		window_timer = 0
	}
}

if attack == AT_DTHROW can_fast_fall = false

if attack == AT_DTHROW && window == 2 && !hitpause{
	if window_timer == 1{
		sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.6,2);
	   vsp = 12
	   hsp += (right_down - left_down)*4
	}
	if !free {
		jumpfix = 12
		jump_start_time = 12;
		set_state(PS_LAND)
		state_timer = 0
	}
}

if attack == AT_DTHROW && window == 3 && !hitpause{
	if window_timer < 6{
		hit_player_obj.state_timer = max(1,hit_player_obj.state_timer-1)
	}
	if window_timer == 1{
		sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.6,2);
	   vsp = 12
	   hsp += (right_down - left_down)*4
	}
	if !free {
		set_state(PS_LAND)
		state_timer = 0
	}
}
///Enemy Step
if attack == AT_DTHROW && window == 1 && !hitpause{
	with (asset_get("pHitBox")) {
    if(player_id == other.id && type == 1) {
        destroyed = true;
    }
    }
    hurtboxID.sprite_index = sprite_get("empty")
	if window_timer < 12{
		hit_player_obj.state_timer = max(1,hit_player_obj.state_timer-1)
		hsp = 0
		vsp = 0
		x += floor((hit_player_obj.x - x - 20*spr_dir)/6)
	    y += floor((hit_player_obj.y - y - 20)/6)
	    hit_player_obj.x -= floor(hit_player_obj.hsp/1.5)
	    hit_player_obj.y -= floor(hit_player_obj.vsp/1.5)
	}
	if window_timer == 11{
		sound_play(asset_get("sfx_gus_land"),false,noone,1,1);
		old_hsp = 0
		old_vsp = 0
		hitpause = true
		hitstop = 3
		hit_player_obj.hitpause = true
		hit_player_obj.hitstop = 3
		rankm += 100
	}
	if window_timer == 12{
		hit_player_obj.hitstop = 0
		spawn_hit_fx( x, y, djumpfx )
		with hit_player_obj{
			hsp /= 1.2
		    old_hsp /= 1.2
		    hsp += (right_down - left_down)*3
		    old_hsp += (right_down - left_down)*3
		}
		
		if down_down{
			vsp = 12
			sound_play(asset_get("sfx_blow_medium3"),false,noone,0.6,1.2);
			fx = spawn_hit_fx(x + 20*spr_dir,y-30,302)
			fx.pause = 6
			with hit_player_obj{
			   take_damage( player, -1 , 2)
			}
			window = 3
			window_timer = 0
			with hit_player_obj{
		    	vsp /= 1.2
		        old_vsp /= 1.2
		        vsp -= abs(3 - abs((right_down - left_down)*2))
		        old_vsp -= abs(3 - abs((right_down - left_down)*2))
		    }
			
			
		} else {
		   with hit_player_obj{
		    	vsp /= 1.2
		        old_vsp /= 1.2
		        vsp -= abs(5 - abs((right_down - left_down)*3))
		        old_vsp -= abs(5 - abs((right_down - left_down)*3))
		    }
		   vsp -= 8
		   djumps += 1
		}
		hsp += (right_down - left_down)*4
	}
	if window_timer > 20{
		can_attack = true
		can_jump = true
		can_special = true
	}
}

if attack == AT_NAIR {
	if window == 2 && window_timer == 5 && !hitpause{
		if djumps = 0{
			sound_play(asset_get("sfx_spin"),false,noone,1,1.5);
			sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.5,1.5);
		 window = 7
		 window_timer = 0
		 set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 8);
		} else {
			sound_play(sound_get("SGF"),false,noone,1,1);
			set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 6);
		}
	} 
	if djumps != 0 && free && has_hit_player && jump_pressed{
		user_event(2)
		attack_end()
		can_jump = true
		old_hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
		hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
	}
	if djumps == 0 && free && has_hit_player && jump_pressed{
    	user_event(2)
		if abs(hit_player_obj.x - x) <= 80 && abs(hit_player_obj.y - y) <= 80 && hit_player_obj.state_cat == SC_HITSTUN{
			attack_end()
			sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.8,2);
			sound_play(asset_get("sfx_landl"),false,noone,1,1);
			set_attack(AT_DTHROW)
			window = 1
			window_timer = 0
			hit_player_obj.state_timer -= 1
		} else {
			can_jump = true
			old_hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
		hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
		}
	}
	
	if window == 7 && !hitpause{
		if window_timer == 0 or window_timer == 6 or window_timer == 12 or window_timer == 18 {
			create_hitbox(AT_NAIR , 7 , round(x +4*spr_dir), round(y - 40) );
		}
		if has_hit_player{
			if hit_player_obj.state_cat == SC_HITSTUN && window_timer < 24{
	        	hit_player_obj.x += floor((x + 10*spr_dir - hit_player_obj.x)/10)
	        	hit_player_obj.y += floor((y - hit_player_obj.y)/10)
	        }
		}
		if vsp > 0 && !down_down && has_hit{
          vsp /= 1.2
        }
		if window_timer == 23{
			if !hitpause && casing == 1{
            create_hitbox(AT_EXTRA_3 , 1 , round(x - 5 * spr_dir), round(y - 20) );	
             create_hitbox(AT_EXTRA_3 , 2 ,round( x - 5 * spr_dir), round(y - 20) );	
            }
			sound_play(sound_get("SGF"),false,noone,1,1);
			hsp -= 4*spr_dir
			vsp -= 4
		}
	}
    if vsp > 0 && !down_down && djumps > 0{
        vsp /= 1.1
    }
    
     if window == 3 && window_timer <= 1 {
        spawn_hit_fx( x, y, nairs1 )
        if !hitpause && casing == 1{
         create_hitbox(AT_EXTRA_3 , 1 , round(x - 5 * spr_dir), round(y - 20) );	
         create_hitbox(AT_EXTRA_3 , 2 ,round( x - 5 * spr_dir), round(y - 20) );
        }
    }
    
     if window == 4 && window_timer <= 1 {
        spawn_hit_fx( x, y, nairs2 )
        if !hitpause && casing == 1{
         create_hitbox(AT_EXTRA_3 , 1 , round(x - 5 * spr_dir), round(y - 20) );	
         create_hitbox(AT_EXTRA_3 , 2 ,round( x - 5 * spr_dir), round(y - 20) );
        }
    }
    
     if window == 5 && window_timer <= 1 {
        spawn_hit_fx( x, y, nairs3 )
        if !hitpause && casing == 1{
         create_hitbox(AT_EXTRA_3 , 1 , round(x - 5 * spr_dir), round(y - 20) );	
         create_hitbox(AT_EXTRA_3 , 2 ,round( x - 5 * spr_dir), round(y - 20) );
        }
    }
}

if attack == AT_FAIR {
	if djumps == 0 && free && has_hit_player && jump_pressed{
    	user_event(2)
		if abs(hit_player_obj.x - x) <= 80 && abs(hit_player_obj.y - y) <= 80 && hit_player_obj.state_cat == SC_HITSTUN{
			attack_end()
			sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.8,2);
			sound_play(asset_get("sfx_landl"),false,noone,1,1);
			set_attack(AT_DTHROW)
			window = 1
			window_timer = 0
			hit_player_obj.state_timer -= 1
		} else {
			can_jump = true
			old_hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
		hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
		}
	}
	
    if window == 1 && window_timer == 6{
       sound_play(asset_get("sfx_clairen_swing_strong"));
    }
     if window == 1 && window_timer == 1{
       sound_play(asset_get("sfx_clairen_swing_mega_instant"),false,noone,0.8,1.3);
    }
    if window > 2{ set_attack_value(AT_FAIR, AG_CATEGORY, 1);}
    else {set_attack_value(AT_FAIR, AG_CATEGORY, 1);}
    
    if window <= 2 && !free {
    	hsp = 15*spr_dir
    	set_state(PS_LAND)
    	move_cooldown[AT_FTILT] = 5
    	move_cooldown[AT_DATTACK] = 8
    	state_timer = 0
    	fx = spawn_hit_fx( x, y - 6, 303 )
    	fx.pause = 4
    	user_event(2)
    	sound_stop(asset_get("sfx_clairen_swing_mega_instant"));
    	sound_play(asset_get("sfx_clairen_swing_mega_instant"),false,noone,0.6,2.5);
    }
    
    //if window == 3 {
    //	if !down_down{
    //    vsp /= 2
    //	}
    //    hsp /= 1.5
    //}
}

if attack == AT_FSTRONG {
     set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 4);
     set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);
     set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
     set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
     if window == 4 {
     	
     	
         prat_land_time = 30;
         if window_timer == 1 {
        spawn_hit_fx( x, y, shotgun2 )
        fx = spawn_hit_fx(x + 50*spr_dir,y - 40,304)
        fx.pause = 2
        if !hitpause && casing == 1{
         create_hitbox(AT_EXTRA_3 , 1 , x - 25 * spr_dir, y - 20 );	
         create_hitbox(AT_EXTRA_3 , 2 , x - 25 * spr_dir, y - 20 );	
        }
        }
        if window_timer == 2 && !hitpause && casing == 1{
         create_hitbox(AT_EXTRA_3 , 1 , x - 25 * spr_dir, y - 20 );	
         create_hitbox(AT_EXTRA_3 , 2 , x - 25 * spr_dir, y - 20 );	
        }
    }
    
    
}


if attack == AT_DATTACK {
    if window == 1{
    	set_attack_value(AT_DATTACK, AG_CATEGORY, 1);
    	if window_timer == 1 && !hitpause{
    		hsp = -3*spr_dir
    	}
    } else {
    	set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
    }
    
    if window == 1 && window_timer == 1 && !hitpause{
       sound_play(asset_get("sfx_clairen_swing_mega_instant"),false,noone,0.8,1);
     }
     
     if window == 3 && window_timer == 1 && !hitpause{
       sound_play(asset_get("sfx_clairen_swing_strong"),false,noone,1,1.2);
       if attack_down{
       	window = 6
       	window_timer = 1
       }
     }   
    if window == 6{
    	if !hitpause{
    	if window_timer == 2 or window_timer == 9 or window_timer == 14{
    		sound_play(asset_get("sfx_clairen_swing_strong"),false,noone,0.6,2);
    	}
    	if window_timer == 3 or window_timer == 9 or window_timer == 15{
    		hsp = 4*spr_dir
    		create_hitbox(AT_DATTACK , 3, x, y)
    	}
    	if window_timer == 18 has_hit_player = false
    	
    	if window_timer == 19 {
    		create_hitbox(AT_DATTACK , 4, x, y)
    	}
    	if window_timer > 21{
    		window_timer -= 0.6
    	}
    	if (window_timer > 19 && has_hit_player){
    	    	if jump_pressed{
    	    		move_cooldown[AT_DATTACK] = 25
    	    		sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.6,2);
    	    		user_event(2)
		    	    can_jump = true
		    	    old_hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
		    		hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
    	    	}
    	}
    	} else {
    	
    	if (window_timer >= 19 && has_hit_player){
    	    	if jump_pressed{
    	    		move_cooldown[AT_DATTACK] = 25
    	    		sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.6,2);
    	    		user_event(2)
		    	    can_jump = true
		    	    old_hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
		    		hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
    	    	}
    	}
    	
    	}
    }
    if free {
        hsp /= 1.5
        vsp /= 2
    }
    
   
    	
    if window == 2 {
    	spawn_hit_fx( x - (10* spr_dir) , y - 30, dattacks1 )
        grind = 0
        hsp += 0.4 * spr_dir
        if window_timer > 6 or (has_hit_player && window_timer > 1 ){
        if has_hit_player {
            window = 3
            window_timer = 0
        }
        if window_timer == 9 && (hsp > 5 or hsp < -5) {
        	window_timer = 6
        }
        }
    }
    
    
        if window == 2 && free {
        	sound_play(asset_get("sfx_clairen_swing_mega_instant"),false,noone,0.8,1.24);
             set_attack (AT_FAIR)
        window = 2
        window_timer = 0
        }
        
        
}

if attack == AT_USTRONG { 
    
    if window == 3 && window_timer == 1 && !hitpause{
        sound_play(sound_get("SpaceCut"));
        sound_play(sound_get("SpaceCut"));
    }
    
    if window >= 3 && uhit == 1 {
        hit_player_obj.hsp /= 2
    }
    
    if window == 3 && window_timer == 1 && !hitpause {
        sound_play(sound_get("laser1"));
    }
    
    
    if window == 5 && uhit == 1 && move_cooldown[AT_UTILT] == 0{
      create_hitbox(AT_EXTRA_3 , 3 ,hit_player_obj.x   , hit_player_obj.y - 300 );
       create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x - random_func(12, 100, true)  , hit_player_obj.y - 300 - random_func(10, 100, true));
        create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x + random_func(13, 100, true)  , hit_player_obj.y - 300 - random_func(11, 100, true));
        
        create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x - random_func(10, 100, true) + 50  , hit_player_obj.y - 400 - random_func(12, 100, true));
        create_hitbox(AT_EXTRA_3 , 5 ,hit_player_obj.x + random_func(11, 100, true) + 50  , hit_player_obj.y - 400 - random_func(13, 100, true));
      uhit = 0
      move_cooldown[AT_UTILT] = 5
      sound_play(asset_get("sfx_ori_bash_projectile"));
    }
    
}


if attack == AT_DSTRONG { 
    
    if window == 3 && window_timer == 1 {
        sound_play(sound_get("RI"));
    }
    
}

if attack == AT_BAIR {
    if window > 5 && djumps == 0 && free && has_hit_player && jump_pressed{
    	user_event(2)
		if abs(hit_player_obj.x - x) <= 80 && abs(hit_player_obj.y - y) <= 80 && hit_player_obj.state_cat == SC_HITSTUN{
			attack_end()
			sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.8,2);
			sound_play(asset_get("sfx_landl"),false,noone,1,1);
			set_attack(AT_DTHROW)
			window = 1
			window_timer = 0
			hit_player_obj.state_timer -= 1
		} else {
			can_jump = true
			old_hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
		hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
		}
	}
	if window == 1 && window_timer == 1 {
		set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
		window = 5
       sound_play(asset_get("sfx_clairen_swing_mega_instant"),false,noone,0.8,1.15);
	}
	if window == 5 && window_timer == 8 {
       sound_play(asset_get("sfx_clairen_swing_strong"),false,noone,1,1.6);
	}
	if window == 1 && window_timer > 1{
		set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 0);
	}
	
	prat_land_time = 16;
	
	if window < 4 {
    can_fast_fall = false
	}
    if !hitpause {
        if window == 1 && window_timer == 3 {
            sound_play(sound_get("bike3"));
            sound_play(sound_get("bike1"));
        }
        
        if window == 2 && window_timer == 1 {
            sound_play(sound_get("bike1"));
        }
        

        
        if window == 4 && window_timer == 1 {
        	
        
        	
            sound_play(sound_get("bike2"));
            sound_play(sound_get("bike1"));
        }
    }
    
    if window == 4 {
    	move_cooldown[AT_FSPECIAL] = 160
    }
    
    if window == 4 && window_timer == 27 {
    	
    		prat_land_time = 16;
			set_state (PS_PRATFALL)

    }
    
   
}

if attack == AT_DAIR {
	if window > 6 && djumps == 0 && free && has_hit_player && jump_pressed{
    	user_event(2)
		if abs(hit_player_obj.x - x) <= 80 && abs(hit_player_obj.y - y) <= 80 && hit_player_obj.state_cat == SC_HITSTUN{
			attack_end()
			sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.8,2);
			sound_play(asset_get("sfx_landl"),false,noone,1,1);
			set_attack(AT_DTHROW)
			window = 1
			window_timer = 0
			hit_player_obj.state_timer -= 1
		} else {
			can_jump = true
			old_hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
		hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
		}
	}
	
	if window == 1 && window_timer == 1 {
		window = 6
		set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
		sound_play(asset_get("sfx_clairen_swing_mega_instant"),false,noone,0.8,1.1);
	}
	
    
	if window < 4 {
       can_fast_fall = false
	}
	prat_land_time = 16;
	
    if !hitpause {
        if window == 1 && window_timer == 2 {
            sound_play(sound_get("SGL2"));

        }
        
         if window == 1 && window_timer == 5 {
            sound_play(sound_get("SGL2"));

        }
        
        if window == 2 && window_timer == 1 {
            sound_play(sound_get("rocket1"));
        }
        
        if window == 4 && window_timer == 1 {
            sound_play(sound_get("rocket1"));
        }
    }
    
    if window == 1 {
        if vsp > 0 {
            vsp /= 1.2
        }
        hsp /= 1.1
    }
   
    if window == 5 && window_timer == 17 {
    		prat_land_time = 15;
			set_state (PS_PRATFALL)
    }

}

if attack == AT_UAIR {
	
	if window == 5 && djumps == 0 && free && has_hit_player && jump_pressed{
    	user_event(2)
		if abs(hit_player_obj.x - x) <= 80 && abs(hit_player_obj.y - y) <= 80 && hit_player_obj.state_cat == SC_HITSTUN{
			attack_end()
			sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.8,2);
			sound_play(asset_get("sfx_landl"),false,noone,1,1);
			set_attack(AT_DTHROW)
			window = 1
			window_timer = 0
			hit_player_obj.state_timer -= 1
		} else {
			can_jump = true
			old_hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
		hsp = clamp(floor((hit_player_obj.x - x)/6),-6,6)
		}
	}
	
	 if window == 2 && window_timer == 5 && !hitpause{
		if djumps = 0{
			sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.5,1.5);
		 window = 5
		 window_timer = 0
		} else {
			move_cooldown[AT_UAIR] = 999
		}
	} 
	
	if window == 5 && !hitpause{
		if window_timer == 0 or window_timer == 5 or window_timer == 10 or window_timer == 15 {
			sound_play(sound_get("bike2"),false,noone,0.6,1.4);
			create_hitbox(AT_UAIR , 3 , x + 10*spr_dir, y - 60 );
		}
		if has_hit_player{
			if hit_player_obj.state_cat == SC_HITSTUN && window_timer < 15{
	        	hit_player_obj.x += floor((x + 10*spr_dir - hit_player_obj.x)/6)
	        	hit_player_obj.y += floor((y - hit_player_obj.y)/4)
	        }
		}
		if vsp > 0 && !down_down && has_hit{
          vsp /= 1.2
        }
	}
		
		
    if !hitpause {
    	if window == 1 {
    		set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_HSPEED, 0);
    	}
    	
    	if window > 1 {
    		if left_down{
    			set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_HSPEED, -2 * spr_dir );
    		}
    		
    		if right_down {

    			set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_HSPEED, 2 * spr_dir );
    		
    		}
    		
    		if !left_down && !right_down {
    			set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_HSPEED, 0);
    		}
    	}
    	
        if window == 1 && window_timer % 4 = 0 {
            sound_play(sound_get("saw1"));

        }
        
         if window == 2 && window_timer == 1 {
            sound_play(sound_get("saw2"));
             sound_play(sound_get("bike2"));

        }
    }
    
    if window == 1 {
        if vsp > 0 {
            vsp /= 1.2
        }
        hsp /= 1.1
    }

    
   
}

if attack == AT_USPECIAL {
	
	can_wall_jump = true 
	
	if window == 1 && window_timer == 1{
		set_attack (AT_DAIR)
		window_timer = 2
		set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 0);
		vsp = -4
	}
	
	if window != 6{
	prat_land_time = 16;
	}
	move_cooldown[AT_USPECIAL] = 999
	
	 if window < 6 && has_hit_player {
		hit_player_obj.x += ((x + (55 * spr_dir)) - hit_player_obj.x) / 8
		hit_player_obj.y += ((y - 10) - hit_player_obj.y) / 5
	}
       
        
        
      
    if window_timer % 2 == 0 {
		spawn_hit_fx( x - ((8 - random_func(1, 36, true)) * spr_dir) , y - 16 - random_func(2, 16, true) , smoke1 )
	}
	
	if window_timer % 2 == 1 {
		spawn_hit_fx( x - ((8 - random_func(1, 36, true)) * spr_dir) , y - 16 - random_func(2, 16, true) , smoke2 )
	}
	
	if window_timer % 3 == 1 {
		spawn_hit_fx( x - ((8 - random_func(1, 36, true)) * spr_dir) , y - 16 - random_func(2, 16, true) , dairs3 )
	}
	
	
        
     

     if window == 6 && window_timer == 1 {
     	    move_cooldown[AT_FSPECIAL] = 160
     	    sound_play(sound_get("exp2"));
            spawn_hit_fx( x + (30 * spr_dir) , y - 10, exp1 )
            create_hitbox(AT_EXTRA_3 , 24 , x + (32 * spr_dir) , y - 14 );
     }   
	
}

if attack == AT_FSPECIAL  {
	
	prat_land_time = 16;
	can_wall_jump = true 
	
	if state_timer > 10 && !hitpause {
		move_cooldown[AT_UTILT] += 2
		if move_cooldown[AT_UTILT] >= 120 {
		move_cooldown[AT_USPECIAL] = 0 
		move_cooldown[AT_UTILT] = 0 
		set_attack (AT_USPECIAL)
	    window = 6
	    vsp = -12
	    hsp /= 2
	    window_timer = 0
		}
	}
	
	if window == 1 && !free{
		super_armor = true
	} 
	
	if window > 1{
		super_armor = false
		drops = 1
	} 
	
	 if window_timer % 2 == 0 && !hitpause {
		spawn_hit_fx( x - 8 - ((20 - random_func(1, 36, true)) * spr_dir) , y - 16 - random_func(2, 16, true) , smoke1 )
	}
	
	if !free && !hitpause {
		spawn_hit_fx( x , y - 30 , dattacks1 )
	}
		
	if window_timer % 2 == 1 && !hitpause {
		spawn_hit_fx( x - ((20 - random_func(1, 36, true)) * spr_dir) , y - 16 - random_func(2, 16, true) , smoke2 )
	}
	
	if window_timer % 3 == 1 && !hitpause {
		spawn_hit_fx( x - ((20 - random_func(1, 36, true)) * spr_dir) , y - 16 - random_func(2, 16, true) , dairs3 )
	}
	
	if free {
	   hsp /= 1.02
	   if window <= 2 {
	   	vsp /= 1.4
	   	hsp = 0
	   }
	}
	
		
	if (window == 1 && window_timer > 6) or window > 1 {
		
	if window == 1 && window_timer > 6 && attack_pressed{
		move_cooldown[AT_USPECIAL] = 0 
		set_attack (AT_USPECIAL)
	    window = 1
	    window_timer = 2
	    vsp = -3
	    sound_play(asset_get("sfx_ell_steam_release"));
	    hsp /= 2
	    
	}
	

	
	  if special_pressed && !hitpause {
	  	
	    set_attack (AT_BAIR)
	    window = 1
	    window_timer = 2
	    set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 0);
	    vsp = -6
	    hsp /= 2
	    sound_play(asset_get("sfx_ell_eject"))
	    if left_down  {
         spr_dir = -1
	}
		    if right_down  {
         spr_dir = 1
		
	}
	   }
	   
	   	if window > 1 && attack_pressed && !hitpause {
	   	move_cooldown[AT_USPECIAL] = 0 
		set_attack (AT_USPECIAL)
	    window = 1
	    window_timer = 2
	    sound_play(asset_get("sfx_ell_steam_release"));
	    hsp /= 2
	   	 vsp = -3
	   	 
	   	 if left_down and !right_down{
	   	 spr_dir = -1
	   	 vsp = -3
	   	 }
	   	 
	   	 if right_down and !left_down{
	   	 spr_dir = 1
	   	 vsp = -3
	   	 }
	   	 
	   }
	   
	  }
	
	if window == 3 {
		
	   
		 if free {
		hsp = 11 * spr_dir 	
		vsp = -3
	   	window = 6
	   	window_timer = 0
	   }
	   
		if hsp < 9 and hsp > -9 {
		hsp += 1.05 * spr_dir
		}
		
	   if window_timer >= 5 {
	   	create_hitbox(AT_FSPECIAL , 1 , x + (16 * spr_dir) , y - 35 );
		window_timer = 0
	   }
   if !free {
	if left_down && spr_dir = 1 {
		window = 4
		window_timer = 0
		
	}
	
	if right_down && spr_dir = -1 {
		window = 4
		window_timer = 0
		
	}
   }
   
	}
	
	if window = 3 && !free && jump_pressed && move_cooldown[AT_FSPECIAL] <= 0 && !hitpause {
        spawn_hit_fx( x , y , 303 )
		window = 5
		window_timer = 1
	}

	
	if window == 4 && window_timer >= 6{
		spr_dir *= -1
		window = 3
		window_timer = 0
	} 
	

	
		
		if window == 5 {
				move_cooldown[AT_FSPECIAL] = 10
		if window_timer <= 1 && !hitpause  {
			vsp = -11
		}
		}
		
		
		
		if window == 6 {
		if window_timer >= 2{
		if window_timer >= 7 {
				create_hitbox(AT_FSPECIAL , 1 , x + (16 * spr_dir) , y - 35 );
		window_timer = 2
	   }
	   
	   if attack_pressed {
	   		   	move_cooldown[AT_USPECIAL] = 0 
		set_attack (AT_USPECIAL)
	    window = 1
	    window_timer = 2
	    sound_play(asset_get("sfx_ell_steam_release"));
	    hsp /= 2
	   	 
	   	 
	   	 if left_down and !right_down{
	   	 spr_dir = -1
	   	 vsp = -3
	   	 }
	   	 
	   	 if right_down and !left_down{
	   	 spr_dir = 1
	   	 vsp = -3
	   	 }
	   }
	   
	   
	   
	   if !free {
	   	window = 3
	   	window_timer = 0
	   }
	   }
	   
	}
	
	
	move_cooldown[AT_USPECIAL] = 20
	can_move = false
	can_fast_fall = false
	

}

if attack == AT_NSPECIAL {
  clear_button_buffer( PC_SPECIAL_PRESSED );
  set_attack(AT_DSPECIAL)
  window = 1 
  window_timer = 2
  sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
}


if attack == AT_DSPECIAL {

if window == 1 && window_timer == 1 && bursted == 0{
	gunname = 0
	  sound_stop(asset_get("sfx_frog_fspecial_charge_gained_1"));
	  sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
}

if window == 1 && bursted != 0 {
	set_state(PS_IDLE)
}

    lmtime = 360

	if  free {
		if vsp < 0{
			vsp /= 1.15
		} else {
		vsp /= 1.4
		}
		hsp /= 1.4
		can_move = false
	}
	
	if window == 1 && gunname != 0 && window_timer > 2{
		
	
	   if gunname >= 8  {
         infernal2 = 0
      }
      
      
      if gunname >= 1 && gunname <= 3 {
          infernal2 -= 100

      }
      
      if gunname >= 4 && gunname <= 7 {
      	 infernal2 -= 200
      }

	
	if gunname == 1 {
		set_attack (AT_EXTRA_1)
		window = 1
		window_timer = 0
	}
	
	if gunname == 2 {
		set_attack (AT_EXTRA_1)
		window = 3
		window_timer = 0
	}
	
	if gunname == 3 {
		set_attack (AT_EXTRA_1)
		window = 5
		window_timer = 0
	}
	
	if gunname == 4 {
	    set_attack (AT_EXTRA_1)
		window = 9
		window_timer = 0
	}
	
	
	if gunname == 5 {
	    set_attack (AT_EXTRA_1)
		window = 13
		window_timer = 0
	}
	
	if gunname == 6 {
	    set_attack (AT_EXTRA_1)
		window = 15
		window_timer = 0
	}
	
	if gunname == 7 {
	    set_attack (AT_EXTRA_1)
		window = 18
		window_timer = 0
	}
	
	
	if gunname == 9 {
	    set_attack (AT_EXTRA_2)
		window = 1
		window_timer = 0
	}
	
	if gunname == 8 {
	    set_attack (AT_EXTRA_2)
		window = 5
		window_timer = 0
	}
	
	if gunname == 11 {
	    set_attack (AT_EXTRA_2)
		window = 9
		window_timer = 0
	}
	
	if gunname == 10 {
	    set_attack (AT_EXTRA_2)
		window = 15
		window_timer = 0
	}
	
	if gunname == 12 {
	    set_attack (AT_EXTRA_2)
		window = 13
		window_timer = 0
	}
	
	if gunname == 13 {
	    set_attack (AT_EXTRA_2)
		window = 18
		window_timer = 0
	}
	
	}
			draw_indicator = false
			
	
	if window = 2 {
		
		if window_timer == 1 {
			gunname = 1
		}
		
	    if (!special_pressed and !attack_pressed) or state_timer < 20 or move_cooldown[AT_DSPECIAL_2] > 0{
	    	if window_timer = 18 {
	    		window_timer = 10
	    	}
	    } else {
	    	sound_play(asset_get("mfx_confirm"))
	    	window = 3
	    	window_timer = 0
	    }
	    
	    if window != 1 {
	       if gunname < 1 {
	       	gunname = 1
	       } 
	       if gunname > 13 {
	       	gunname = 13
	       }
	    }

	    if move_cooldown[AT_DSPECIAL_2] == 0{
	        if down_pressed {
	        	move_cooldown[AT_UTHROW] = 0
	        	move_cooldown[AT_DTHROW] = 15
	        	if gunname != 3 && gunname != 7{
	        	gunname += 1
	        	}
	        	sound_play(asset_get("mfx_back"))
	        	move_cooldown[AT_DSPECIAL_2] = 6
	        }
	        
	        if up_pressed {
	        	move_cooldown[AT_DTHROW] = 0
	        	move_cooldown[AT_UTHROW] = 15
	        	if gunname != 4 && gunname != 8{
	        	gunname -= 1
	        	}
	        	sound_play(asset_get("mfx_back"))
	        	move_cooldown[AT_DSPECIAL_2] = 6
	        }
	        
	        if left_pressed {
	        	move_cooldown[AT_DTHROW] = 0
	        	move_cooldown[AT_UTHROW] = 15
	        	if gunname == 4 or gunname == 5{
	        		gunname = 1
	        	}
	        	if gunname == 6 or gunname == 7{
	        		gunname = 2
	        	}
	        	if gunname == 8{
	        		gunname = 4
	        	}
	        	if gunname <= 12 and gunname >= 9 {
	        		gunname -= 5
	        	}
	        	if gunname == 13 gunname = 7
	        	sound_play(asset_get("mfx_back"))
	        	move_cooldown[AT_DSPECIAL_2] = 6
	        }
	        
	        if right_pressed {
	        	move_cooldown[AT_UTHROW] = 0
	        	move_cooldown[AT_DTHROW] = 15
	        	if gunname >= 4 && gunname < 8{
	        		if gunname == 4{
	        		gunname = 9
	        		} else if gunname == 5 {
	        		gunname = 10
	        		} else if gunname == 6 {
	        		gunname = 11
	        		} else if gunname == 7 {
	        		gunname = 12
	        		}
	        	}
	        	if gunname < 4{
	        		if gunname < 2{
	        		gunname = 5
	        		} else {
	        		gunname = 6
	        		}
	        	}
	        	sound_play(asset_get("mfx_back"))
	        	move_cooldown[AT_DSPECIAL_2] = 6
	        }
	    }
	    
	}
	  
	  
	if window == 3 {
		
		if window_timer == 1 { 
		
			sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
			if 	 gunname = 1{
				 spawn_hit_fx( x , y - 110 , NS1 )
			
			}
			
			if	 gunname = 2{
				 spawn_hit_fx( x , y - 100 , NS2 )
			
			}
			
			if	 gunname = 3{
				 spawn_hit_fx( x , y - 110 , NS3 )
			
			}
			
		
			if gunname = 4{
				 spawn_hit_fx( x , y - 110 , NS4 )
				
			}
			
			if gunname = 5 {
				 spawn_hit_fx( x , y - 110 , NS6 )
				
			}
			
			if gunname = 6{
				 spawn_hit_fx( x , y - 110 , NS7 )
				
			}
			
			if 	gunname = 7{
				 spawn_hit_fx( x , y - 110 , NS8 )
			
			}
		
		

			if gunname = 13{
				 spawn_hit_fx( x , y - 110 , NS13 )

			}
			
			if gunname = 9{
				 spawn_hit_fx( x , y - 110 , NS9 )

			}
			
			if gunname = 10{
				 spawn_hit_fx( x , y - 110 , NS10 )
				 
			}
			
			if gunname = 11{
				 spawn_hit_fx( x , y - 110 , NS11 )
				 
			}
			
			if gunname = 12{
				 spawn_hit_fx( x , y - 110 , NS12 )
				 
			}
			
			if gunname = 8{
				 spawn_hit_fx( x , y - 110 , NS5 )
			
			}
			
			if gunname >= 8 {
				//bursted = 1
				shake_camera(5,5)
		sound_play(sound_get("exp1"));
		take_damage(player,-1,15)
		spawn_hit_fx( x , y - 22 , exp1 )
		create_hitbox(AT_EXTRA_3 , 7 ,x, y - 22 );
		gone = spawn_hit_fx(x + 30*spr_dir ,y - 40,burst)
		gone.spr_dir = spr_dir*-1
	    sound_play(asset_get("sfx_ell_eject"),false,noone,1,1.4)
	    sound_play(asset_get("sfx_ell_overheat"),false,noone,.8,1.2)
			}

		}
		
	}
	
	
}
	
	



if attack == AT_EXTRA_1 {
	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
	can_fast_fall = false
	
	
	//// E&I
	
   if window == 1 or window == 2 {
   	
   	fall_through = true 
   	
        set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_HSPEED, (random_func(1,  3, true)));
        set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_VSPEED, (random_func(2, 3, true) * -1) - 5);
        set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_ANIM_SPEED, 2 + ((random_func(3, 4, true))/10));


        set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_HSPEED, (random_func(4,  3, true) * -1) );
        set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_VSPEED, (random_func(5, 3, true) * -1) - 5 );
        set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_ANIM_SPEED, 0.5 + ((random_func(6, 4, true))/10));
        
   	vsp -= 0.3
   	
   	if window_timer > 11 or window > 1 {
   	 if window_timer % 6 == 0 && !hitpause {
		sound_play(sound_get("gun1"));
		create_hitbox(AT_EXTRA_1 , 4 , x + random_func(13, 50, true), y + random_func(15, 250, true));
		create_hitbox(AT_EXTRA_1 , 4 , x - random_func(14, 50, true), y + random_func(16, 250, true));
	}
   	}
	
	if window_timer % 12 == 6 && casing == 1 {
		create_hitbox(AT_EXTRA_1 , 5 , x + 10 *spr_dir, y );
	}
	
	if window_timer % 12 == 0 && casing == 1 {
		create_hitbox(AT_EXTRA_1 , 6 , x + 10 *spr_dir, y );
	}
	
		if window_timer > 32 or window > 1 {
   	 if window_timer % 3 == 0 && !hitpause {
   	 	 create_hitbox(AT_EXTRA_1 , 3 , x + 10 * spr_dir, y + 90 );	
	}
   	}
   	
  if window_timer % 2 == 0 && !hitpause {
		spawn_hit_fx( x - ((20 - random_func(1, 40, true)) * spr_dir) , y - 16 - random_func(2, 16, true) , smoke1 )
	}
	
		
	if window_timer % 2 == 1 && !hitpause {
		spawn_hit_fx( x - ((20 - random_func(1, 40, true)) * spr_dir) , y - 16 - random_func(2, 16, true) , smoke2 )
	}

	
   if window == 1{
   	
   	if window_timer % 5 == 0{
   		sound_play(asset_get("sfx_spin"));
   		vsp /= 1.1
   	}
   	
   	if window_timer == 1 {
   		sound_play(sound_get("SGL2"));
   	     vsp = -8
   	     hsp = 0

   	}
   	
   	if window_timer == 3 {
   		sound_play(sound_get("SGL2"));
   	}
   }	
   
   if window == 2{
   	
   	vsp /= 1.1
    	if window_timer % 5 == 0{
   		sound_play(asset_get("sfx_spin"));
   	}
   	
   	if !free or state_timer > 60{
   		drops = 0
   		vsp = -9
   		 move_cooldown[AT_USPECIAL] = 0 
   		 set_attack(AT_USPECIAL)
	   	 window = 6
	   	 window_timer = 1
	   	 
	   	 sound_play(sound_get("exp1"));
		spawn_hit_fx( x , y - 22 , exp1 )
		create_hitbox(AT_EXTRA_3 , 7 ,x   , y - 22 );
   	}
   	
   }
	
	
   }	
	
	
  //// Mine Land
  
if window == 3 or window == 4 {
	if vsp < 0{
		vsp /= 1.15
	} else {
    	vsp /= 1.4
	}
	   hsp /= 1.4

if window == 3 {
    if window_timer <= 4 {
	if left_down{
		spr_dir = -1
	}

   	if right_down{
		spr_dir = 1
	}	
}
}
		
	if window == 4 && !hitpause{
			if window_timer == 2 {
				hsp -= 5*spr_dir
				spawn = create_hitbox(AT_EXTRA_1 , 7 ,x + 5*spr_dir, y - 5 );
				spawn.hsp = 6*spr_dir
			}
			if window_timer == 4 {
				spawn = create_hitbox(AT_EXTRA_1 , 7 ,x + 8*spr_dir, y - 5 );
				spawn.hsp = 7.5*spr_dir
			}
		
		
		if window_timer == 15 {
			drops = 0
			if !free {
				set_state (PS_IDLE)
			}
			
			if free {
				prat_land_time = 16;
				set_state (PS_IDLE_AIR)
			}	
			
		}
	}
}
	
	
	/// Rpiral
	
	if window >= 5 and window <= 8 {
		if vsp < 0{
			vsp /= 1.05
		} else {
			vsp /= 1.2
		}
		hsp /= 1.15
		

if window == 5 {
    if window_timer <= 4 {
	if left_down{
		spr_dir = -1
	}

   	if right_down{
		spr_dir = 1
	}	
}
}

		if window == 7 {
			if window_timer == 1 && !hitpause {
				sound_play(sound_get("gun1"));
				if casing == 1 {
				 create_hitbox(AT_EXTRA_3 , 1 , x - 5 * spr_dir, y - 20 );	
				}
			}
			
			
			if window_timer == 15 {
				if free {
				prat_land_time = 16;
				set_state (PS_IDLE_AIR)
			}	
			}
		}
		
		
		if window == 8 && window_timer == 10 {
			drops = 0

				set_state (PS_IDLE)
	
			
		}
	}
	
	
	
	
	/// Ray Cannon
	
	if window >= 9 and window <= 12 {

if window == 9 {
        	if window_timer <= 4 {
	if left_down{
		spr_dir = -1
	}

   	if right_down{
		spr_dir = 1
	}	
}
}

		if window != 11 {
		grind = 0
		hsp /= 1.5
		vsp /= 1.4
		}
		
		
		
		
		if window == 11 {
			
			
			can_move = false
			
			hsp /= 1.02 
			
			vsp = -1
			
			if hsp > 1 or hsp < -1 {
			
			if window_timer == 12 {
				grind += 1
				window_timer = 1
			}
			
			}
			
			if grind >= 8 {
				
				window = 12
				window_timer = 0
			
			}
			
		}
		
		if window == 12 && window_timer == 12 {
			gunname = 0 user_event(1)
			oop = spawn_hit_fx(x,y - 40, 302)
			oop.depth = depth + 1
			spawn_hit_fx(x - 30*spr_dir ,y - 40,burst)
			sound_play(asset_get("sfx_ell_eject"),false,noone,1,1.4)
			sound_play(asset_get("sfx_ell_overheat"),false,noone,.8,1.2)
		    t21 = 1
			drops = 0
			if !free {
				set_state (PS_IDLE)
			}
			
			if free {
				 
					vsp = -6
				
				prat_land_time = 16;
				set_state (PS_IDLE_AIR)
			}	
			
		}
	}
	
	
	////Unholy hand grenade
	
	if window >= 13 and window <= 14 {
if window == 13 {
        	if window_timer <= 4 {
	if left_down{
		spr_dir = -1
	}

   	if right_down{
		spr_dir = 1
	}	
}
}

		if window == 13{
			vsp /= 1.5
			if window_timer == 1 {
			sound_play(sound_get("GL"))
	      	}
		}
		
		
		if window == 14{
			
			
			if window_timer == 1 {
			
			oop = spawn_hit_fx(x,y - 40, 302)
			oop.depth = depth + 1
			spawn_hit_fx(x - 30*spr_dir ,y - 40,burst)
			sound_play(asset_get("sfx_ell_overheat"),false,noone,.8,1.2)
			sound_play(asset_get("sfx_ell_eject"))
	      	}
		}
		
		
		
		if window == 14 && window_timer == 16 {
		    t22 = 1
			drops = 0
			gunname = 0 user_event(1)	
			if !free {
				set_state (PS_IDLE)
			}
			
			if free {
				prat_land_time = 16;
				set_state (PS_IDLE_AIR)
			}	
			
		}
		
	}
	
	
	/// Lingering Dread
	
	if window >= 15 and window <= 17 {

if window == 15 {
        	if window_timer <= 4 {
	if left_down{
		spr_dir = -1
	}

   	if right_down{
		spr_dir = 1
	}	
}
}

		hsp /= 1.5
		vsp /= 1.5
		
		if window == 17{
			
			
			
			
			if window_timer == 1 && !hit_pause {
				spawn_hit_fx( x + (30 * spr_dir)  , y - 50 , 303 )
				sound_play(asset_get("sfx_ell_eject"))
			}
			
			if window_timer == 17 {
			gunname = 0 user_event(1)
			oop = spawn_hit_fx(x,y - 40, 302)
			oop.depth = depth + 1
			spawn_hit_fx(x - 30*spr_dir ,y - 40,burst)
			sound_play(asset_get("sfx_ell_eject"),false,noone,1,1.4)
			sound_play(asset_get("sfx_ell_overheat"),false,noone,.8,1.2)
		        t23 = 1
				if !free {
				set_state (PS_IDLE)
			}
			
			if free {
				prat_land_time = 16;
				set_state (PS_IDLE_AIR)
			}	
			}
		}
		
		
	}
	
	
	///SGSSG
	
if window >= 18 and window <= 21 {
if window == 18 {
        	if window_timer <= 4 {
	if left_down{
		spr_dir = -1
	}

   	if right_down{
		spr_dir = 1
	}	
}
}

		 set_hitbox_value(AT_EXTRA_1, 21, HG_PROJECTILE_HSPEED, 4 + (random_func(1, 4, true)));
		 set_hitbox_value(AT_EXTRA_1, 22, HG_PROJECTILE_HSPEED, 3.5 + (random_func(1, 4, true)));
		 set_hitbox_value(AT_EXTRA_1, 23, HG_PROJECTILE_HSPEED, 7 + (random_func(1, 4, true)));
		 set_hitbox_value(AT_EXTRA_1, 24, HG_PROJECTILE_HSPEED, 6 + (random_func(1, 4, true)));

		 set_hitbox_value(AT_EXTRA_1, 21, HG_PROJECTILE_ANIM_SPEED, 0.5 + ((random_func(1, 4, true))/10));
		 set_hitbox_value(AT_EXTRA_1, 22, HG_PROJECTILE_ANIM_SPEED, 0.5 + ((random_func(2, 4, true))/10));
		 set_hitbox_value(AT_EXTRA_1, 23, HG_PROJECTILE_ANIM_SPEED, 0.5 + ((random_func(3, 4, true))/10));
		 set_hitbox_value(AT_EXTRA_1, 24, HG_PROJECTILE_ANIM_SPEED, 0.5 + ((random_func(4, 4, true))/10));
		 
		if window <= 19{
		hsp /= 1.5
		}
		
		if window > 19 {
	    hsp /= 1.04
		}
		
		if window <= 19 {
			vsp /= 1.5
		} else {
			vsp /= 1.1
		}
 		
		if window == 20{
	
			if window_timer == 2 && !hitpause{
				 create_hitbox(AT_EXTRA_1 , 21 , x - 30 * spr_dir, y - 20 );	
				 create_hitbox(AT_EXTRA_1 , 22 , x - 30 * spr_dir, y - 20 );
				 create_hitbox(AT_EXTRA_1 , 23 , x - 30 * spr_dir, y - 20 );
				 create_hitbox(AT_EXTRA_1 , 24 , x - 30 * spr_dir, y - 20 );
			}
			
		    if window_timer == 3 && !hitpause{
				 create_hitbox(AT_EXTRA_1 , 21 , x - 30 * spr_dir, y - 20 );	
				 create_hitbox(AT_EXTRA_1 , 24 , x - 30 * spr_dir, y - 20 );
			}
			
			if window_timer == 1 {
				
				spawn_hit_fx( x + (10 * spr_dir) , y, shotgun2 )
			}
			
			
		}
		
		
		if window == 21 && window_timer == 10 {
            
            drops = 0
			gunname = 0 user_event(1)
		    t24 = 1
		   	oop = spawn_hit_fx(x,y - 40, 302)
			oop.depth = depth + 1
			spawn_hit_fx(x - 30*spr_dir ,y - 40,burst)
			sound_play(asset_get("sfx_ell_eject"),false,noone,1,1.4)
			sound_play(asset_get("sfx_ell_overheat"),false,noone,.8,1.2)
			
		    
			if !free {
				set_state (PS_IDLE)
			}
			
			if free {
				prat_land_time = 16;
				set_state (PS_IDLE_AIR)
			}	
		}
		
		
	}
	
}


if attack == AT_TAUNT {
	
	inactive = 30
	rankm += 1
	
	if window = 19 && window_timer == 16 {
			set_state (PS_IDLE)
		}
	if window == 1 && window_timer == 1{
		if down_down {
			window = 7
			window_timer = 0
		}
		if up_down {
			set_attack (AT_EXTRA_3)
			if casing == 0 {
				window = 1
			} else {
				window = 2
			}
		}
	}
	
	if window >= 1 && window <= 6 {
		
		if window = 6 && window_timer == 14 {
			set_state (PS_IDLE)
		}
		
		can_jump = true
		draw_indicator = false 
	}
	
	if window == 15 && window_timer == 1 {
		sound_play (asset_get("sfx_coin_collect"));
	}
	
	
	if window == 15 && infernal2 >= 300 {
		take_damage(player, -1, 50)
		infernal2 = 0
		shake_camera(6,6)
		sound_play(asset_get("sfx_abyss_explosion"))
if spr_dir == 1 {
	set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("tt3"));
		spawn_hit_fx( x + (10 * spr_dir)  , y - 50 , 306 )
		sound_play (sound_get("exp1"));
		
		
		create_hitbox(AT_TAUNT , 1 , (room_width / 2) - 700 - (100 * spr_dir), y - 800 );	
		create_hitbox(AT_TAUNT , 1 , (room_width / 2) - 700, y - 1000 );	
		create_hitbox(AT_TAUNT , 1 , (room_width / 2) - 700 - (100 * spr_dir) + (100 * spr_dir), y - 1200 );		
		
		create_hitbox(AT_TAUNT , 1 , (room_width / 2) - 700  - (200 * spr_dir) - random_func(10, 100, true), y - 1400 );	
		create_hitbox(AT_TAUNT , 1 , (room_width / 2) - 700  - (300 * spr_dir)- random_func(10, 100, true) + random_func(10, 100, true),  y - 1600 );	
		create_hitbox(AT_TAUNT , 1 , (room_width / 2) - 700  - (400 * spr_dir) + random_func(11, 100, true), y - 1800 );		
}


if spr_dir == -1 {
	set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_SPRITE, sprite_get("tt3"));
		spawn_hit_fx( x + (10 * spr_dir)  , y - 50 , 306 )
		sound_play (sound_get("exp1"));
		
		
		create_hitbox(AT_TAUNT , 2 , (room_width / 2) + 700 + (100 * spr_dir), y - 800 );	
		create_hitbox(AT_TAUNT , 2 , (room_width / 2) + 700, y - 1000 );	
		create_hitbox(AT_TAUNT , 2 , (room_width / 2) + 700 + (100 * spr_dir) + (100 * spr_dir), y - 1200 );		
		
		create_hitbox(AT_TAUNT , 2 , (room_width / 2) + 700  + (200 * spr_dir) - random_func(10, 100, true), y - 1400 );	
		create_hitbox(AT_TAUNT , 2 , (room_width / 2) + 700  + (300 * spr_dir)- random_func(10, 100, true) + random_func(10, 100, true),  y - 1600 );	
		create_hitbox(AT_TAUNT , 2 , (room_width / 2) + 700  + (400 * spr_dir) + random_func(11, 100, true), y - 1800 );		
}

        
		
	}
	
}





if attack == AT_EXTRA_2 {
	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE);
	can_fast_fall = false
	////ATM
		if window >= 1 and window <= 4 {
			
if window == 1 {
        	if window_timer <= 4 {
	if left_down{
		spr_dir = -1
	}

   	if right_down{
		spr_dir = 1
	}	
}
}

		   vsp /= 1.5
		   hsp /= 1.3
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_HSPEED, -3 - (random_func(1,  3, true)) );
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_VSPEED, -4.5 - (random_func(2,  3, true)) );
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3,  4, true)) / 10) );

set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_VSPEED, 0 - (random_func(2,  3, true)) - (random_func(2,  3, true)) );
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.6 + ((random_func(3,  4, true)) / 10) );


				if window == 3 && (window_timer == 1 or window_timer % 3 == 1 ) {
				
   	             		
			hsp -= 3 *spr_dir		
			sound_play (sound_get("exp1"));
			create_hitbox(AT_EXTRA_2, 2 , x + (50 * spr_dir), y - 30 );	
			create_hitbox(AT_EXTRA_2, 1 , x - (30 * spr_dir), y - 20 );	
		}
		
		
		if window == 4 && window_timer == 16 && !hitpause{
			gunname = 0 user_event(1) user_event(1)
			oop = spawn_hit_fx(x,y - 40, 302)
			oop.depth = depth + 1
			spawn_hit_fx(x - 30*spr_dir ,y - 40,burst)
			sound_play(asset_get("sfx_ell_eject"),false,noone,1,1.4)
			sound_play(asset_get("sfx_ell_overheat"),false,noone,.8,1.2)
		    t32 = 1
			drops = 0

			
			if !free {
				set_state (PS_IDLE)
			}
			
			if free {
				prat_land_time = 16;
				set_state (PS_IDLE_AIR)
			}	
			}
		
		
	}

///plane	
	
		if window >= 5 and window <= 8 {
			
			if window == 5 {
				faces = spr_dir
			}
			
		   vsp /= 1.5
		   hsp /= 1.3
if window == 8 {
        	if window_timer <= 4 {
	if left_down{
		spr_dir = -1
	}

   	if right_down{
		spr_dir = 1
	}	
}
}

        if window == 7 && window_timer == 1 {
        		
   	             		
        }
        
		if window == 8 && window_timer == 20 && !hitpause{
			faces = 0
			drops = 0
			gunname = 0 user_event(1) user_event(1)
			oop = spawn_hit_fx(x,y - 40, 302)
			oop.depth = depth + 1
			spawn_hit_fx(x - 30*spr_dir ,y - 40,burst)
			sound_play(asset_get("sfx_ell_eject"),false,noone,1,1.4)
			sound_play(asset_get("sfx_ell_overheat"),false,noone,.8,1.2)
		    t31 = 1
				if !free {
				set_state (PS_IDLE)
			}
			
			if free {
				prat_land_time = 16;
				set_state (PS_IDLE_AIR)
			}	
			}
		
		
	}
	



/// BFG

		if window >= 9 and window <= 12 {
		   vsp /= 1.5
		   hsp /= 1.3
if window == 9 {
        	if window_timer <= 4 {
	if left_down{
		spr_dir = -1
	}

   	if right_down{
		spr_dir = 1
	}	
}
}        
        if window == 11 && window_timer == 1 {
        		
   	             		
			sound_play (sound_get("exp2"));
			spawn_hit_fx( x + (30 * spr_dir)  , y - 40 , 306 )
        }
        
		if window == 12 && window_timer == 20 && !hitpause {
			gunname = 0 user_event(1) user_event(1)
			oop = spawn_hit_fx(x,y - 40, 302)
			oop.depth = depth + 1
			spawn_hit_fx(x - 30*spr_dir ,y - 40,burst)
			sound_play(asset_get("sfx_ell_eject"),false,noone,1,1.4)
			sound_play(asset_get("sfx_ell_overheat"),false,noone,.8,1.2)
		    t34 = 1
			drops = 0
			if !free {
				set_state (PS_IDLE)
			}
			
			if free {
				prat_land_time = 16;
				set_state (PS_IDLE_AIR)
			}	
			}
		
		
	}
	

/// Orbital strike
	if window >= 13 and window <= 14 {
		   vsp /= 1.5
		   hsp /= 1.3
		   
if window == 13 {
        	if window_timer <= 4 {
	if left_down{
		spr_dir = -1
	}

   	if right_down{
		spr_dir = 1
	}	
}
}
        
        if window == 14 && window_timer == 1 {
        		
   	             		
			sound_play (sound_get("warning"));
        }
        
		if window == 14 && window_timer == 20 && !hitpause {
			gunname = 0 user_event(1) user_event(1) 
			oop = spawn_hit_fx(x,y - 40, 302)
			oop.depth = depth + 1
			spawn_hit_fx(x - 30*spr_dir ,y - 40,burst)
			sound_play(asset_get("sfx_ell_eject"),false,noone,1,1.4)
			sound_play(asset_get("sfx_ell_overheat"),false,noone,.8,1.2)
		    t35 = 1
			drops = 0
             if !free {
				set_state (PS_IDLE)
			}
			
			if free {
				prat_land_time = 16;
				set_state (PS_IDLE_AIR)
			}
	
			}
		
		
	}
//Car Key	
		if window >= 15 and window <= 17 {
		can_move = false	
		super_armor = true
		if window < 17{	
		   vsp /= 1.3
		   hsp /= 1.3
		}
		
		if window == 17 && window_timer == 15 {
			drops = 0
           
				set_state (PS_IDLE)
			}
			
		if window == 15 {
			
			if window_timer == 13 or window_timer == 16 or window_timer == 19 or window_timer == 21 {
				sound_play (asset_get("sfx_ice_shieldup"));
				sound_play (sound_get("SGL2"));
			}
			
			if window_timer == 20 {
		set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10);
		set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
		set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.3);
		set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.3);
		
		 set_hitbox_value(AT_EXTRA_1, 21, HG_PROJECTILE_HSPEED, -8);
		 set_hitbox_value(AT_EXTRA_1, 22, HG_PROJECTILE_HSPEED, -7.5);
		 set_hitbox_value(AT_EXTRA_1, 23, HG_PROJECTILE_HSPEED, -14);
		 set_hitbox_value(AT_EXTRA_1, 24, HG_PROJECTILE_HSPEED, -12);
		 
				sound_play (sound_get("SGL"));
				sound_play (sound_get("SGL"));
			}
		}
        
			if window == 17 && window_timer <= 8 && !hitpause && casing == 1 {
		 create_hitbox(AT_EXTRA_3 , 1 , x - 5 * spr_dir, y - 20 );	
         create_hitbox(AT_EXTRA_3 , 2 , x - 5 * spr_dir, y - 20 );	
			}
			
        if window == 17 && window_timer == 2{
        		create_hitbox(AT_FSTRONG , 1 , x + 130 * spr_dir, y - 40 );	
				create_hitbox(AT_FSTRONG , 1 , x + 150 * spr_dir, y - 50 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 60 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 40 );
				create_hitbox(AT_FSTRONG , 1 , x + 130 * spr_dir, y - 30 );	
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 20 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 40 );
				create_hitbox(AT_FSTRONG , 1 , x + 130 * spr_dir, y - 30 );	
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 20 );
        }
        
		if window == 17 && window_timer == 1 && !hitpause {
			spawn_hit_fx( x + 10 * spr_dir , y - 20 , exp1 )
			spawn_hit_fx( x + 10 * spr_dir, y - 20 , 304 )
			 spawn_hit_fx( x, y, shotgun2 )
			  spawn_hit_fx( x + 30*spr_dir, y + 40, shotgun1 )
			   spawn_hit_fx( x + 60*spr_dir , y - 5 , shotgun2 )
			   spawn_hit_fx( x + 30*spr_dir, y - 40, shotgun1 )

			
				create_hitbox(AT_FSTRONG , 1 , x + 160 * spr_dir, y - 40 );	
				create_hitbox(AT_FSTRONG , 1 , x + 0 * spr_dir, y - 50 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 60 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 40 );
				create_hitbox(AT_FSTRONG , 1 , x + 160 * spr_dir, y - 30 );	
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 20 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 40 );
				create_hitbox(AT_FSTRONG , 1 , x + 160 * spr_dir, y - 30 );	
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 20 );
				create_hitbox(AT_FSTRONG , 1 , x + 160 * spr_dir, y - 40 );	
				create_hitbox(AT_FSTRONG , 1 , x + 0 * spr_dir, y - 50 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 60 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 40 );
				create_hitbox(AT_FSTRONG , 1 , x + 160 * spr_dir, y - 30 );	
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 20 );
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 40 );
				create_hitbox(AT_FSTRONG , 1 , x + 160 * spr_dir, y - 30 );	
				create_hitbox(AT_FSTRONG , 2 , x + 90 * spr_dir, y - 20 );
				
				 create_hitbox(AT_EXTRA_1 , 21 , x - 30 * spr_dir, y - 20 );	
				 create_hitbox(AT_EXTRA_1 , 22 , x - 30 * spr_dir, y - 20 );
				 create_hitbox(AT_EXTRA_1 , 23 , x - 30 * spr_dir, y - 20 );
				 create_hitbox(AT_EXTRA_1 , 24 , x - 30 * spr_dir, y - 20 );
			if !hitpause {	 
			sound_play (sound_get("exp2"));
			sound_play (sound_get("SGF"));
			sound_play (sound_get("QSGF"));
			}
			
	     	
   	         	
			drops = 0
	        gunname = 0 user_event(1)  user_event(1) 
			oop = spawn_hit_fx(x,y - 40, 302)
			oop.depth = depth + 1
			spawn_hit_fx(x - 30*spr_dir ,y - 40,burst)
			sound_play(asset_get("sfx_ell_eject"),false,noone,1,1.4)
			sound_play(asset_get("sfx_ell_overheat"),false,noone,.8,1.2)
		    t33 = 1
			}
		}
		
		if window >= 18 and window <= 25 {
			
			if window > 20 {
				
				 if window_timer % 2 == 0 && !hitpause {
		spawn_hit_fx( x - 8 - ((20 - random_func(1, 36, true)) * spr_dir) , y - 16 - random_func(2, 16, true) , smoke1 )
	}
	
		
	if window_timer % 2 == 1 && !hitpause {
		spawn_hit_fx( x - ((20 - random_func(1, 36, true)) * spr_dir) , y - 16 - random_func(2, 16, true) , smoke2 )
	}
	
	if window_timer % 3 == 1 && !hitpause {
		spawn_hit_fx( x - ((20 - random_func(1, 36, true)) * spr_dir) , y - 16 - random_func(2, 16, true) , dairs3 )
	}
	
	
				lmtime -= 1
				
				drops = 0
			soft_armor = 999
			
			
			if lmtime <= 0 && !hitpause {
			gunname = 0 user_event(1) user_event(1) 
			oop = spawn_hit_fx(x,y - 40, 302)
			oop.depth = depth + 1
			spawn_hit_fx(x - 30*spr_dir ,y - 40,burst)
			sound_play(asset_get("sfx_ell_eject"),false,noone,1,1.4)
			sound_play(asset_get("sfx_ell_overheat"),false,noone,.8,1.2)
		    t36 = 1
				prat_land_time = 90
             sound_play(sound_get("exp2"));
       destroyed = 1
       create_hitbox(AT_EXTRA_1 , 17 , x , y  );
		spawn_hit_fx( x , y - 30 , exp2 )
		spawn_hit_fx( x + 30, y - 22 , exp1 )
		spawn_hit_fx( x - 30, y - 22 , exp1 )
        spawn_hit_fx( x , y  , 306 )
	   		move_cooldown[AT_USPECIAL] = 0 
	   	 set_attack (AT_USPECIAL)
	   	 window = 6
	   	 window_timer = 1
	   	 hsp = 0
	   	 vsp = -3
			}
			
			}
			
			can_move = false
			can_fast_fall = false
			if window == 18 {
				if window_timer == 1 {
					sound_play(sound_get("SGL"));
					spawn_hit_fx( x + (0 * spr_dir) , y - 10, 304 )
				}
				vsp /= 2
			}
			
			if window == 19 && window_timer == 1 && !hitpause {
				
				vsp = -11
			}
			
			if window == 19 && window_timer == 20 && !hitpause {
			sound_play(sound_get("exp1"));
            spawn_hit_fx( x + (0 * spr_dir) , y - 10, exp1 )
            create_hitbox(AT_EXTRA_3 , 7 , x + (32 * spr_dir) , y - 14 );
			}
			
			if window >= 21 && window != 24 && window != 25 && attack_pressed && move_cooldown[AT_DTILT] == 0{
				move_cooldown[AT_DTILT] = 60
				window = 24
				window_timer = 0
			}
			
			if window >= 21 && window != 24 && window != 25  && special_pressed && move_cooldown[AT_FTILT] == 0{
				move_cooldown[AT_FTILT] = 90
				window = 25
				window_timer = 0
			}
			
			if window == 24 {
				if window_timer > 25 {
					window = 21
					window_timer = 0
				}
				
				if window_timer == 14 {
					sound_play(sound_get("gun3s"));
            spawn_hit_fx( x + (85 * spr_dir) , y - 56, 305 )
            create_hitbox(AT_EXTRA_1 , 8 , x + (12 * spr_dir) , y - 56 );
              create_hitbox(AT_EXTRA_1 , 8 , x + (22 * spr_dir) , y - 46 );
				}
			}
			
			if window == 25 {
				if window_timer > 15 {
					window = 21
					window_timer = 0
				}
				
				 set_hitbox_value(AT_EXTRA_1, 21, HG_PROJECTILE_HSPEED, 4 + (random_func(1, 4, true)));
		 set_hitbox_value(AT_EXTRA_1, 22, HG_PROJECTILE_HSPEED, 3.5 + (random_func(1, 4, true)));
		 set_hitbox_value(AT_EXTRA_1, 23, HG_PROJECTILE_HSPEED, 7 + (random_func(1, 4, true)));


		 set_hitbox_value(AT_EXTRA_1, 21, HG_PROJECTILE_ANIM_SPEED, 0.5 + ((random_func(1, 4, true))/10));
		 set_hitbox_value(AT_EXTRA_1, 22, HG_PROJECTILE_ANIM_SPEED, 0.5 + ((random_func(2, 4, true))/10));
		 set_hitbox_value(AT_EXTRA_1, 23, HG_PROJECTILE_ANIM_SPEED, 0.5 + ((random_func(3, 4, true))/10));
		 set_hitbox_value(AT_EXTRA_1, 24, HG_PROJECTILE_ANIM_SPEED, 0.5 + ((random_func(4, 4, true))/10));
		 
				if !hitpause and window_timer % 6 == 0 {
					sound_play(sound_get("exp1"));
					create_hitbox(AT_EXTRA_1 , 21 , x + (10 * spr_dir), y - 66 );	
		    	}

		    	
			}
			
			if window == 20 {
				if window_timer == 3 && !hitpause{
						sound_play(sound_get("bike1"));
				}
				
				if !free && jump_pressed {
					 spawn_hit_fx( x , y , 303 )
				 window = 23
				 window_timer = 0
				}
				
				if !left_down and !right_down and !free {
					window = 21
					window_timer = 0
				} 
				
		
				if left_down{
					hsp -= 0.5
				}
				
				if right_down{
					hsp += 0.5
				}
				 
				 if down_down{
					fall_through = true
					if !free {
						y += 10
					}
				}
				
				if hsp > 8 {
					hsp = 8
				}
				
				if hsp < -8 {
					hsp = -8
				}
			}
			
			if window == 21 {
			
				if free {
					
						if window_timer == 5 && !hitpause{
					create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 24 );
				}
						if window_timer == 9 && !hitpause{
					create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 24 );
				}
				
				}
				
				if window_timer >= 9{
					window_timer = 0
				}
				
				if left_down or right_down {
					window = 22
					window_timer = 0
				}
				
				if !free && jump_pressed {
					 spawn_hit_fx( x , y , 303 )
				 window = 23
				 window_timer = 0
				}
				
			}
			
			if window == 22 {
				
				if window_timer == 5 && !hitpause{
					create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 24 );
				}
				
				if window_timer >= 9 {
					window_timer = 0
					create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 24 );
				}
				
				if jump_pressed {
					 spawn_hit_fx( x , y , 303 )
				 window = 23
				 window_timer = 0
				}
				
				if !left_down and !right_down {
					window = 21
					window_timer = 0
				} 
				
		
				if left_down{
					hsp -= 0.4
				}
				
				if right_down{
					hsp += 0.4
				}
				
				if down_down{
					fall_through = true
					if !free {
						y += 10
					}
				}
				
				if hsp > 8 {
					hsp = 8
				}
				
				if hsp < -8 {
					hsp = -8
				}
				
				
				      if !free {
                    	if left_down && spr_dir = 1 {
	                     	window = 20
	                     	hsp /= 1.2
	                     	window_timer = 0
		                    spr_dir = -1
                     	}
	
                    	if right_down && spr_dir = -1 {
	                	    window = 20
	                	    hsp /= 1.2
	                     	window_timer = 0
		                    spr_dir = 1
	                  }
                      }
			}
			
			
			if window == 23 {
				
				if window_timer == 2 && !hitpause{
						create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 24 );
				}
					if !free && jump_pressed {
						 spawn_hit_fx( x , y , 303 )
				 window = 23
				 window_timer = 0
				}
				
		
				if left_down{
					hsp -= 0.4
				}
				
				if right_down{
					hsp += 0.4
				}
				 
				if hsp > 6 {
					hsp = 6
				}
				
				if hsp < -6 {
					hsp = -6
				}
				

				if !hit_pause && window_timer <= 1{
				vsp = -12
				}
				
				if window_timer == 11 {
					window = 22
					window_timer = 0
				}
			}
			
			
			
	}
	
	
}

if attack == AT_EXTRA_3 && window_timer < 6 {
			if window == 1 {
				casing = 1
				 if get_player_color(player) == 1 hunter = 1 
				 Vrank = 1
			}
			
			if window = 2 {
				casing = 0
				 Vrank = 0
				 hunter = 0
				create_hitbox(AT_EXTRA_3 , 1 , x - 5 * spr_dir, y - 20 );	
                create_hitbox(AT_EXTRA_3 , 2 , x - 5 * spr_dir, y - 20 );	
			}
}

