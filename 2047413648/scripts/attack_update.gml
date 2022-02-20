//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


///
if attack == AT_EXTRA_2 {

    if window == 1 && window_timer == 14 && !hitpause {
    	shake_camera(2,4)
		sound_play(asset_get("sfx_abyss_explosion"),false,noone,1, 1.2);
	}
	
	
    if window == 1 && window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_ice_on_player"),false,noone,.8, .9);
	}
}

if attack == AT_FTILT or attack == AT_DTILT or attack == AT_JAB {
	if has_hit_player{
		hsp = 0
	}
   
   if attack == AT_JAB {
   	if window == 1 && window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,.8, 1.1);
	}
	if window == 4 && window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,.8, 1);
	}
   }
}

	
	if attack == AT_DTILT && window == 1 && window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_spin"),false,noone,0.8,1.2);
		sound_play(asset_get("sfx_ice_on_player"),false,noone,1);
	}
	
	if attack == AT_FTILT && window == 1 && window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_ice_on_player"),false,noone,1);
	}
	
	if attack == AT_UTILT && window == 1 && window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_ice_on_player"),false,noone,0.8,1.1);
	}
	
if (attack_pressed ){
     set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
     set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);

}

if window == 1 && window_timer == 1 and usedfspecial == 1{
   
   usedfspecial = 0
   if free{
   vsp = -3
   }
   if !free {
   	hsp += 1 * spr_dir
   }
}

if (attack == AT_FSPECIAL){
	
	usedfspecial = 1
	
	if window == 1 && window_timer == 1{
		clear_button_buffer(PC_SPECIAL_PRESSED)
			if get_player_color(player) == 5 && sakura == 1{
			spawn_hit_fx( x , y - 40, shit5 )
			}
			
		fcharge -= 1
		fchargetimer = 0
		

    		var trait = spawn_hit_fx( x + 10 * spr_dir  , y - 25 , ushadow)
    		 trait.depth = 11
    		
		 sound_play(asset_get("sfx_ori_bash_launch"));
        sound_play(asset_get("sfx_ori_bash_launch"));
        sound_play(asset_get("sfx_ori_glide_start"));
	}
	can_fast_fall = false
	
    move_cooldown[AT_FSPECIAL] = 10
    if free {
        move_cooldown[AT_FSPECIAL] = 20
    } 
    
    if (window >= 2){
    	can_special = true;
        can_attack = true;
        can_strong = true;
	}
}

if (attack == AT_UAIR){
    if (window == 1) {
    	if window_timer == 1 {
    		sound_play(asset_get("sfx_swipe_heavy2"))
    	}
    	
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);	
	} else if (window > 2 || window_timer > 8) {
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 12);
	}
	
	if (window == 2 && window_timer == 11) {
		sound_play(sound_get("RI2"))
	}
}

if (attack == AT_BAIR){
}

if (attack == AT_DAIR){
	
	if free && state_timer > 60 && y + vsp > room_height/2 + 300 && ((jump_pressed) or (shield_pressed) or (attack_pressed) or y + vsp > room_height) && !has_hit_player{
		sound_play(sound_get("RI"),false,noone,0.8,0.8)
        sound_play(asset_get("sfx_ori_bash_launch"));
        sound_play(asset_get("sfx_abyss_explosion"))
        
        if x > room_width/2 {
        	spr_dir = -1
        } else {
        	spr_dir = 1
        }
        
        set_state(PS_PRATFALL)
        vsp = -10
        old_vsp = -10
        prat_land_time = 6;
        spawn_hit_fx(x,y - 60, 306)
		create_hitbox(AT_EXTRA_3 , 2 , x - 30 * spr_dir, y - 40 );	

        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 5 , x - 30 * spr_dir, y - 40 );	
		create_hitbox(AT_EXTRA_3 , 2 , x - 30 * spr_dir, y - 40 );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_HSPEED, spr_dir * (random_func(7,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_VSPEED, (random_func(8, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(9, 4, true))/10));
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 1 , x - 30 * spr_dir, y - 40 );	
        create_hitbox(AT_EXTRA_3 , 5 , x - 30 * spr_dir, y - 40 );	
		create_hitbox(AT_EXTRA_3 , 2 , x - 30 * spr_dir, y - 40 );
	}
	
	fall_through = true
	can_fast_fall = false
	if window == 1{
		
		if window_timer == 1 {
			sound_play(asset_get("sfx_ice_on_player"),false,noone,1,0.8)
			spawn_hit_fx(x - 50*spr_dir,y-60,14)
			spawn_hit_fx(x + 20*spr_dir,y-20,14)
			vsp =  -6
		}
		
		
		set_hitbox_value(AT_DAIR, 9, HG_WIDTH, 0);
        set_hitbox_value(AT_DAIR, 9, HG_HEIGHT,0);
        set_hitbox_value(AT_DAIR, 8, HG_WIDTH, 0);
        set_hitbox_value(AT_DAIR, 8, HG_HEIGHT,0);
		dairv = 0
	}
	
	if window == 4 && window_timer == 1 && !hitpause {
		take_damage(player, -1, 0)
	}
	
	if window == 5 && window_timer >= 5 && !has_hit{
		prat_land_time = 30;	
		set_state (PS_PRATLAND)
	}
	
	if window <= 3 && has_hit_player {
		set_hitbox_value(AT_DAIR, 9, HG_WIDTH, 95);
        set_hitbox_value(AT_DAIR, 9, HG_HEIGHT, 52);
        set_hitbox_value(AT_DAIR, 8, HG_WIDTH, 95);
        set_hitbox_value(AT_DAIR, 8, HG_HEIGHT, 52);
        
        if !hitpause && state_timer%2 == 0{
		 create_hitbox(AT_DAIR,8,x,y)
		 create_hitbox(AT_DAIR,9,x,y)
        }
        if hitpause {
        	y += 1
        }
        
	 with hit_player_obj {
	 	
			can_tech = false 
			
			if get_player_damage(player) < 100 {
				with other {
					  set_hitbox_value(AT_DAIR, 9, HG_ANGLE, 90);
					    set_hitbox_value(AT_DAIR, 8, HG_ANGLE, 90);
		
					if y + vsp > room_height {
						
					    
						create_hitbox(AT_DAIR,6,x,y)
						create_hitbox(AT_DAIR,7,x,y)
						
							sound_play(sound_get("RI"),false,noone,0.8,0.8)
                            sound_play(asset_get("sfx_ori_bash_launch"));
                            sound_play(asset_get("sfx_abyss_explosion"))
                            
                            if x > room_width/2 {
                            	spr_dir = -1
                            } else {
                            	spr_dir = 1
                            }
                            
                            set_state(PS_PRATFALL)
                            state_timer = 300
                            vsp = -16
                            old_vsp = -16
                            hsp = 6*spr_dir
                            prat_land_time = 6;
                            spawn_hit_fx(x,y - 60, 306)
	                    	create_hitbox(AT_EXTRA_3 , 2 , x - 30 * spr_dir, y - 40 );	
                    
                            set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  7, true) * -1) - 2 - abs(hsp/3) );
                            set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - abs(vsp/2) );
                            set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));
                            
                            create_hitbox(AT_EXTRA_3 , 5 , x - 30 * spr_dir, y - 40 );	
	                    	create_hitbox(AT_EXTRA_3 , 2 , x - 30 * spr_dir, y - 40 );
                            set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_HSPEED, spr_dir * (random_func(7,  7, true) * -1) - 2 - abs(hsp/3) );
                            set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_VSPEED, (random_func(8, 7, true) * -1) - abs(vsp/2) );
                            set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(9, 4, true))/10));
                            
                            set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 2 - abs(hsp/3) );
                            set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - abs(vsp/2) );
                            set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));
                            
                            create_hitbox(AT_EXTRA_3 , 1 , x - 30 * spr_dir, y - 40 );	
                            create_hitbox(AT_EXTRA_3 , 5 , x - 30 * spr_dir, y - 40 );	
	                    	create_hitbox(AT_EXTRA_3 , 2 , x - 30 * spr_dir, y - 40 );
					}
				}
			} else {
				with other {
				set_hitbox_value(AT_DAIR, 8, HG_ANGLE, 270);
				set_hitbox_value(AT_DAIR, 9, HG_ANGLE, 270);
				}
			}
			
		if visible {
		
		
		if x > other.x && other.hitpause == false {
			x += floor((other.x + 56 - x)/2)
		}
		
		if x < other.x && other.hitpause == false  {
		   x += floor((other.x - 56 - x)/2)
		}
		   
		if other.y - 30 + other.vsp >= y  {

	    	y = other.y - 30 + other.vsp
		} 
		
		vsp = other.vsp
		old_vsp = other.vsp 
		fall_through = true
		}
		
		}
	}
	
	if has_hit_player {
		soft_armor = 999
	}
       
       if window == 3{
       	
       	
       	
       	
       	vsp += 0.4
       	 dairv += 0.8
       	if dairv >= 20 {
            dairv = 20
       	}
        
        set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 5 + dairv/3);
       	set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 5 + dairv/3);
       	set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 9 );
       	set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 9 );
       	set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.5 + dairv/30 );
       	set_hitbox_value(AT_DAIR, 7, HG_KNOCKBACK_SCALING, 0.5 + dairv/30 );

       	
		if (window_timer == 9) {
			window_timer = 0;
		}
       
		
		if (!free) {
			
			shake_camera(4,6)
			if get_player_color(player) == 5 && sakura == 1 {
              spawn_hit_fx( x + 80, y - 10, shit7 )
              spawn_hit_fx( x - 80, y - 10, shit7 )
              spawn_hit_fx( x, y - 20, shit6 )
              spawn_hit_fx( x + 40, y - 40, shit8 )
              spawn_hit_fx( x - 40, y - 40, shit8 )
				
			}
			destroy_hitboxes();
			create_hitbox(AT_DAIR,7, x,y)
			create_hitbox(AT_DAIR,6, x,y)
			hsp = 0
			
			sound_play(asset_get("sfx_abyss_explosion"))
			window = 4;
			window_timer = 0;
		}
       }
}


if attack == AT_FSTRONG  {
	
  if state_timer == 1 {
  	scharge = 0
  	set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 162);
    set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 60);
    set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 140);
    set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 40);
    set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 140);
    set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 60);
  }
  
  if scharge > 300 {
  	scharge = 300
  }
  
  if has_hit_player && hitpause {
    set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 182);
    set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 80);
    set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 180);
    set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 80);
    set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 180);
    set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 80);
  }
  
 if window == 1 && window_timer >= 18 && (strong_down or left_strong_pressed or right_strong_pressed) && scharge < 300 && dashed = 0{
 	 window_timer -= 1
 	 scharge += 3
 }
 
  if fcharge >= 1 && window == 1 && (left_pressed or right_pressed) && dashed = 0 {
  	dashed = 1
  	    	if left_pressed {
    		 hsp = -10.5
  	    	}
  	    	if right_pressed {
    		 hsp = 10.5
  	    	}
  	    	
  	        var trait = spawn_hit_fx( x + 10 * spr_dir  , y - 25 , ushadow)
    		 trait.depth = 11
    		 
  	    	 if get_player_color(player) == 5 && sakura == 1{
			spawn_hit_fx( x , y - 40, shit5 )
			}
			
			        fcharge -= 1
       	var trait = spawn_hit_fx( x + 10 * spr_dir  , y - 25 , ushadow)
        sound_play(asset_get("sfx_ori_bash_launch"));
        sound_play(asset_get("sfx_ori_bash_launch"));
        window = 1
        window_timer = 1
  }
	
}

if attack == AT_USTRONG {
	
  if state_timer == 1 {
  	scharge = 0
  }
  
  if scharge > 300 {
  	scharge = 300
  }
  

 if window == 1 && window_timer >= 18 && (strong_down or up_strong_pressed) && scharge < 300 && dashed = 0{
 	 window_timer -= 1
 	 scharge += 3
 }
  if fcharge >= 1 && window == 1 && (left_pressed or right_pressed) && dashed = 0{
  	 set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 22);
  	   	 dashed = 1
  	    	if left_pressed {
  	    	scharge /= 2	
    		 hsp = -10.5
  	    	}
  	    	if right_pressed {
  	    	scharge /= 2	
    		 hsp = 10.5
  	    	}
  	    	
  	        var trait = spawn_hit_fx( x + 10 * spr_dir  , y - 25 , ushadow)
    		 trait.depth = 11
    		 
  	    	 if get_player_color(player) == 5 && sakura == 1{
			spawn_hit_fx( x , y - 40, shit5 )
			}
			
			        fcharge -= 1
       	var trait = spawn_hit_fx( x + 10 * spr_dir  , y - 25 , ushadow)
        sound_play(asset_get("sfx_ori_bash_launch"));
        sound_play(asset_get("sfx_ori_bash_launch"));
        window = 1
        window_timer = 1
  }
	
}

if attack == AT_DSTRONG {
	
  if window = 1 && window_timer = 1 {
  	scharge = 0
  }
  
  if scharge > 300 {
  	scharge = 300
  }
  

 if window == 2 && window_timer >= 18 && (strong_down or up_strong_pressed) && scharge < 300 && dashed = 0{
 	 window_timer -= 1
 	 	 scharge += 3
 }
 
  if fcharge >= 1 && window <= 2 && (left_pressed or right_pressed) && dashed = 0{
  	 dashed = 1
  	    	if left_pressed {
  	    		scharge /= 2	
    		 hsp = -10.5
  	    	}
  	    	if right_pressed {
  	    		scharge /= 2	
    		 hsp = 10.5
  	    	}
  	    	
  	        var trait = spawn_hit_fx( x + 10 * spr_dir  , y - 25 , ushadow)
    		 trait.depth = 11
    		 
  	    	 if get_player_color(player) == 5 && sakura == 1{
			spawn_hit_fx( x , y - 40, shit5 )
			}
			
			        fcharge -= 1
       	var trait = spawn_hit_fx( x + 10 * spr_dir  , y - 25 , ushadow)
        sound_play(asset_get("sfx_ori_bash_launch"));
        sound_play(asset_get("sfx_ori_bash_launch"));
        window = 1
        window_timer = 1
  }
	
}


if attack == AT_NSPECIAL{
    
    if window < 4 {
    	vsp = 0
    }

   	if free && window > 3 && state_timer > 60 && y + vsp > room_height/2 + 300 && ((jump_pressed) or (shield_pressed) or (attack_pressed) or y + vsp > room_height) {
		sound_play(sound_get("RI"),false,noone,0.8,0.75)
        sound_play(asset_get("sfx_ori_bash_launch"));
        sound_play(asset_get("sfx_abyss_explosion"))
        
        if x > room_width/2 {
        	spr_dir = -1
        } else {
        	spr_dir = 1
        }
        
        set_state(PS_PRATFALL)
        vsp = -10
        old_vsp = -10
        prat_land_time = 6;
        spawn_hit_fx(x,y - 60, 306)


        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 1 , x - 30 * spr_dir, y - 40 );	

	}


    can_fast_fall = false
    
    hsp /= 1.05
    
    
    if window == 1 {
    	clear_button_buffer( PC_SPECIAL_PRESSED );
    }
    
    if !has_hit_player && (down_down or special_down) {
    	    	fall_through = 1
    }
    
    	
    	if window == 6 {
    		 if left_down && hsp > -5{
    			hsp -= 0.5
    		}
    		
    		if right_down && hsp < 5{
    			hsp += 0.5
    		}
    	}
    	
    	if window < 4 {
    		
    		if free {
    			
    	       if window == 2 or window == 3  {
    	       	vsp -= 0.22
    	       }
    	       
    	       
    		}

    		
    		if left_down && hsp > -5{
    			hsp -= 0.2
    		}
    		
    		if right_down && hsp < 5{
    			hsp += 0.2
    		}
    	}
    
    
    if window == 1 && free {
     vsp = -5	
     window = 2	
    }
    
    if window == 4 && window_timer == 4 && !hitpause{
    	sound_play(sound_get("RI"));
    	sound_play(asset_get("sfx_abyss_explosion"),false,noone,1,1.4);
    	sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1);
    	shake_camera(6,10)
    }
    
    if window == 4 && window_timer == 3 && free {
    	window = 6
    	window_timer = 0
    	y -= 30
    	vsp = 14
    }
    
    if window == 6 {
    	if free {
    		hsp /= 1.2
    		window_timer = 3
    		vsp *= 1.05
    	}
    	
    	if !free && !hitpause {
    		sound_play(sound_get("RI"));
    	    sound_play(asset_get("sfx_abyss_explosion"),false,noone,1,1.4);
    	    sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1);
    	    shake_camera(6,10)
    	window = 4
    	window_timer = 9
    		
    	}
    }
    
    if  window == 2{
    
    if window_timer == 1 {
    	
    	sound_play(asset_get("sfx_spin"));
    	
    }	
    	char_height = 60 + window_timer*3;
    }
    
    if window == 1{
    	
    }
    
    if  window == 3{
    if window_timer == 1 {
    	sound_play(asset_get("sfx_ori_ustrong_charge"))
    	sound_play(asset_get("sfx_ori_glide_start"));
    }
    }
    
    
    if  window == 2 or window == 3 {
    if move_cooldown[AT_FSPECIAL] == 0 and (special_pressed  and left_down) and dairv = 0 {
        hsp = -9
        
        fcharge -= 1
		fchargetimer = 0
		dairv = 1
        move_cooldown[AT_FSPECIAL] = 10
       	var trait = spawn_hit_fx( x - 20 * spr_dir  , y - 45 , ushadow)
    		 trait.depth = 11
    		 x -= 10
        sound_play(asset_get("sfx_ori_bash_launch"));
        sound_play(asset_get("sfx_ori_bash_launch"));
        sound_play(asset_get("sfx_ori_glide_end"));
        
    } 
    
    if move_cooldown[AT_FSPECIAL] == 0 and (special_pressed  and right_down) and dairv = 0 {
        hsp = 9
        
        fcharge -= 1
        dairv = 1
		fchargetimer = 0
        	var trait = spawn_hit_fx( x - 20 * spr_dir  , y - 45 , ushadow)
    		 trait.depth = 11
    		 x += 10
        move_cooldown[AT_FSPECIAL] = 60
        sound_play(asset_get("sfx_ori_bash_launch"));
         sound_play(asset_get("sfx_ori_bash_launch"));
        sound_play(asset_get("sfx_ori_glide_end"));
    } 
    }
    
    if window == 4 {
    	if window_timer == 5 and get_player_color(player) == 5 && sakura == 1 {

    		 spawn_hit_fx( x + 40 * spr_dir, y - 40, shit8 )
              spawn_hit_fx( x + 160 * spr_dir, y - 40, shit8 )
              spawn_hit_fx( x + 120 * spr_dir, y - 20, shit6 )
    		
    	}
    	char_height = 50;
    }
    
     
             
    
}


if (attack == AT_NAIR && window == 1 && window_timer == 1 ){
    sound_play(asset_get("sfx_ori_ustrong_charge"))
}

if (attack == AT_FAIR && window == 1 && window_timer == 1 ){
    sound_play(asset_get("sfx_ice_on_player"),false,noone,1,1.2)
}



if (attack == AT_DAIR && window == 1 && window_timer == 1 ){
    sound_play(asset_get("sfx_ori_ustrong_charge"))
}

if (attack == AT_UAIR && window == 1 && window_timer == 1 ) {
    sound_play(asset_get("sfx_ori_ustrong_charge"))
}


if (attack == AT_BAIR && window == 1 && window_timer == 1 ){
    sound_play(asset_get("sfx_ori_ustrong_charge"))
}

if (attack == AT_BAIR && window == 1 && window_timer == 1 ){
    sound_play(asset_get("sfx_ice_shieldup"))
}


if ((attack == AT_FAIR && window == 3 && window_timer == 5 && !hitpause )
or (attack == AT_BAIR && window == 1 && window_timer == 1 )) {
	 sound_play(asset_get("sfx_ice_shieldup"))
}

if (attack == AT_UAIR && window == 3 && window_timer == 1 ) {
	sound_play(asset_get("sfx_ori_ustrong_charge"))
}

if (attack == AT_NAIR && window == 3 && window_timer == 1 && !hitpause ) {
	sound_play(asset_get("sfx_ori_ustrong_charge"))
}

if (attack == AT_NAIR && window == 2 && window_timer == 6 && has_hit ){
	
	if attack_down {
	vsp = -8
	}
}
	
if (attack == AT_FAIR && window == 2 && window_timer == 2 && !has_hit ){
	window = 3
	window_timer = 0
}

if (attack == AT_FAIR && has_hit_player ){
	
	
	if window == 2 && !hitpause {
        can_fast_fall = false
        fall_through = true
		vsp = 0
		hsp /= 2
		hit_player_obj.x += ((x + (50 * spr_dir)) - hit_player_obj.x) / 10
		hit_player_obj.y += ((y + 20) - hit_player_obj.y) / 10
		
		if window_timer == 11 {
			sound_play(asset_get("sfx_swipe_weak1"))
		
		}
	}
}


if (attack == AT_FSTRONG && window == 2 && window_timer == 4 ){
	sound_play(asset_get("sfx_spin"))
}

if attack == AT_FSTRONG && window == 4{
	if window_timer == 4 {
		sound_play(asset_get("sfx_ori_ustrong_charge"))
	}
		if window_timer == 12 {
		sound_play(asset_get("sfx_ice_shieldup"))
		}

}

if attack == AT_DSTRONG  {
	
	if  window == 3 {
		if window_timer == 3 {
		sound_play(sound_get("RI2"))
		sound_play(sound_get("RI"))
	}
	
	if  window_timer > 3 && window_timer < 20 && !hitpause{
	if window_timer % 4 = 0 {
		sound_play(asset_get("sfx_ice_shieldup"))
	}
	
		if window_timer % 3 = 0 {
		sound_play(sound_get("slicel"))
	}
}
}

if  window == 4 {
	
	if window_timer == 1{
		sound_play(asset_get("sfx_ori_glide_start"))
		sound_play(asset_get("sfx_ice_shieldup"))
	}
}

}


if attack == AT_USTRONG &&  window == 2 && window_timer == 2{
		sound_play(asset_get("sfx_swipe_weak2"))
	}
	
if attack == AT_USTRONG && window == 3 && !hitpause{
	

	
	if window_timer == 17 {
		sound_play(sound_get("RI2"))
		sound_play(asset_get("sfx_ori_glide_start"))
	}
	
		if window_timer == 10 {
		sound_play(asset_get("sfx_spin"))
	}
}

if (attack == AT_BAIR && window == 1 && window_timer == 9 ){
	sound_play(asset_get("sfx_swipe_weak2"))
	sound_play(asset_get("sfx_swipe_medium2"))
	sound_play(asset_get("sfx_swipe_heavy2"))
}



if ((attack == AT_FTILT or attack == AT_DATTACK) && window == 4 && window_timer == 3 && !has_hit){
    set_attack (AT_DTILT)
    window = 5
}

if (attack == AT_DTILT && window == 3 && !has_hit){
    set_attack (AT_DTILT)
    window = 5
    
}

if (attack == AT_FTILT && window == 5 && window_timer == 6){
    set_attack (AT_DTILT)
    window = 5
    
}

if attack == AT_DATTACK && has_hit_player && window <= 3 && window_timer < 1 {
	hit_player_obj.x = x + 45 * spr_dir
	hit_player_obj.y = y - 10
}

if attack == AT_UTILT && has_hit_player && window <= 2 {
	hit_player_obj.x = x + 45 * spr_dir
	hit_player_obj.y = y - 50
}

if (attack == AT_UTILT && window == 2 && window_timer == 12 && !has_hit){
    set_attack (AT_DTILT)
    window = 5
    window_timer = 6
    
}


if attack == AT_DSPECIAL && !hitpause {
	can_wall_jump = true
	can_fast_fall = false

   if down_hard_pressed && window < 5{
   	  fall_through = true
   	  if !free {
   	  	y += 10
   	  }
   }
   
if window == 5 && window_timer > 10 {
	if window_timer == 1 {
		if free {
			vsp = -6
		}
	}
   hsp /= 1.2
   vsp /= 1.2
}

if window == 1{
	spintime = 0
	dcharge = 0
	
 if  window_timer == 1 {
	sound_play(asset_get("sfx_swipe_heavy1"))
	
 }
 
  if  window_timer == 1 {
	sound_play(asset_get("sfx_ice_shieldup"))
	sound_play(asset_get("sfx_ell_dspecial_hit"))
	sound_play(asset_get("sfx_ell_utilt_hit"))
 }
 

}

 if window == 1 and window_timer == 12{
	sound_play(asset_get("sfx_ori_ustrong_charge"))
		sound_play(asset_get("sfx_spin"))
 }

if window == 2 or window == 3 {
    
    if window_timer % 8 = 0 {
	sound_play(asset_get("sfx_ori_ustrong_charge"))
		sound_play(asset_get("sfx_spin"))
	}

if window == 2 && window_timer == 5{
	if dcharge < 10{
	dcharge += 1
	}
}	


if window == 3 && window_timer == 8 {
	
	window = 3
	spintime += 1
	window_timer = 0
	
	if dcharge < 5{
	dcharge += 1
		if get_player_color(player) == 5 && sakura == 1{
			spawn_hit_fx( x , y - 40, shit1 )
			}
	if dcharge == 5{
		
			if get_player_color(player) == 5 && sakura == 1{
			spawn_hit_fx( x , y - 40, shit5 )
			}
			
		sound_play(asset_get("sfx_ori_glide_start"))
		var dch = spawn_hit_fx( x   , y - 45 , 305)
    		 dch.depth = 11
	}
	

	
	}
}	
} 

	if (window == 3 && (spintime >= 1)){
	window = 4
	window_timer = 0
	}

if window == 5 && window_timer == 1 {
	vsp = 0
  hsp = dcharge * -1 * spr_dir * 2
}

if window >= 2 && window < 4 {
	
	if jump_pressed && fcharge > 0 && !free {
		clear_button_buffer( PC_JUMP_PRESSED );
		vsp = -9.5
		fcharge -= 1
		fchargetimer = 0
		sound_play(asset_get("sfx_ori_bash_launch"));
         sound_play(asset_get("sfx_ori_bash_launch"));
         

		var jum = spawn_hit_fx( x   , y , 14)
    		 jum.depth = 11
	}
	
	if left_down {
		hsp = -2
		spr_dir = -1
	}
	
	if right_down {
		hsp = 2
		spr_dir = 1
	}
}

set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HSPEED, 30);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 9 );
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.8);

if window == 5 && get_player_color(player) == 5 && sakura == 1 {
		if window_timer == 1{
			spawn_hit_fx( x + 40 * spr_dir , y - 40, shit6 )
			spawn_hit_fx( x + 120 * spr_dir , y - 40, shit7 )
			spawn_hit_fx( x + 200 * spr_dir , y - 40, shit8 )
			}
			
			if window_timer == 6{
			spawn_hit_fx( x + 250 * spr_dir , y - 50, shit6 )
			spawn_hit_fx( x + 320 * spr_dir , y - 30, shit7 )
			}	
			
			if window_timer == 12{
			spawn_hit_fx( x + 370 * spr_dir , y - 35, shit8 )
			spawn_hit_fx( x + 430 * spr_dir , y - 55, shit7 )
			}
}
if window == 5 && window_timer == 35{
	  	 sound_play(asset_get("sfx_ell_utilt_hit"))
	  	 
	
}
if window == 5 && window_timer == 42 {
	sound_play(asset_get("sfx_ell_dspecial_hit"))
}

}	
	
	
if attack == AT_USPECIAL{

if window == 4 {

		if hsp < -6 {
			hsp += 0.6
		}
	
	

		if hsp > 6{
			hsp -= 0.6
		}
	
}
	
can_fast_fall = 0

if (window == 2 and window_timer > 9) or window == 3 or (window == 5 && window_timer > 7) {
	
	if attack_pressed and !up_down and fcharge > 0{
			if get_player_color(player) == 5 && sakura == 1{
			spawn_hit_fx( x, y - 30 , shit5 )
			}
			set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 140);
				set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
			spawn_hit_fx( x, y - 30, 302 )
			spintime = 0
			window = 2
			window_timer = 2
		
			vsp = -3
			hsp = 14 * spr_dir
			fcharge -= 1
			fchargetimer = 0
			spr_dir *= -1
			
			sound_play(asset_get("sfx_spin"))
			sound_play(asset_get("sfx_roll"));
		}
	
}

if window == 2 or window == 3 {
	if !free && down_down {
			
	if spr_dir = -1 {
		if hsp > -9 {
			hsp -= 0.8
		}
	}
	
	if spr_dir = 1 {
		if hsp < 9{
			hsp += 0.6
		}
	}
			
			if get_player_color(player) == 5 && sakura == 1 && get_gameplay_time() % 12 = 0{
						var hit7 = spawn_hit_fx( x, y, shit7 )
    		hit7.depth = -1000
				}
				
				if get_player_color(player) == 5 && sakura == 1 && get_gameplay_time() % 24 = 0{
						var hit8 = spawn_hit_fx( x, y, shit8 )
    		hit7.depth = -1000
				}
				
					if get_player_color(player) == 5 && sakura == 1 && get_gameplay_time() % 28 = 0{
						var hit6 = spawn_hit_fx( x, y, shit6 )
    		hit7.depth = -1000
				}
				
			if window_timer % 4 = 0 {
				 
					var jum = spawn_hit_fx( x - 10 * spr_dir   , y , 14)
					sound_play(asset_get("sfx_ice_shieldup"),false,noone,0.5);
    		 jum.depth = 11
			}
			
			fchargetimer += 8
			
		}
}

if window < 4 {	
	
	if window == 4 or window == 1 {
		set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 40);
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);	
	}
	


	

	if spr_dir = -1 {
		if hsp > -5 {
			hsp -= 0.3
		}
		
		if hsp < -5.2 {
			hsp += 0.3
		}
	}
	
	if spr_dir = 1 {
		if hsp < 5{
			hsp += 0.3
		}
		
		if hsp > 5.2 {
			hsp -= 0.3
		}
		
	}

	
	can_move = false 
}

if window == 1 {
	vsp /= 1.2 
	if vsp > 0 {
		vsp /= 2
	}
		spintime = 0
}
	
	if window == 2 && !hitpause{
		
		
		if window_timer == 1 {
			if get_player_color(player) == 5 && sakura == 1{
			spawn_hit_fx( x, y, shit6 )
			}
			vsp = -6
		}
	}
	
	
	
	if window == 2 && spintime = 1{
		
		if !down_down{
		vsp -= 0.38
		}
	}
	
	if window == 3 {
		
		spintime = 1
		
	if left_down && spr_dir == 1 {
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
		window = 2
		window_timer = 10
		spr_dir = -1
		 sound_play(asset_get("sfx_ori_bash_launch"));
	}
	
	if right_down && spr_dir == -1 {
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
		window = 2
		window_timer = 10
		spr_dir = 1
		 sound_play(asset_get("sfx_ori_bash_launch"));
	}
	

	
if !down_down{
		vsp -= 0.42
}
		
		
		
		
		
		if special_pressed and fcharge > 0{
			set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 40);
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
			if get_player_color(player) == 5 && sakura == 1{
			spawn_hit_fx( x, y , shit3 )
			}
			spintime = 0
			window = 2
			window_timer = 2
			vsp = -7
			hsp = 10 * spr_dir
			fcharge -= 1
			fchargetimer = 0
			
			sound_play(asset_get("sfx_spin"))
			sound_play(asset_get("sfx_ori_glide_featherout"));
		}
		
	
		
		
		
		if window_timer == 9{
			window_timer = 1
		}
		
	}
	
	if window >= 2 && window < 4 {
		
		if window_timer > 12 or window == 3 {
		if jump_pressed and fcharge > 0{
				if get_player_color(player) == 5 && sakura == 1{
			spawn_hit_fx( x , y , shit5 )
			}
			spintime = 0
			window = 5
			window_timer = 0
			vsp = -9
			fcharge -= 1
			fchargetimer = 0
			
			sound_play(asset_get("sfx_swipe_heavy2"));
			sound_play(asset_get("sfx_spin"))
			
		}	
		}
		
		
		if shield_pressed{
			window = 4
			window_timer = 0
			sound_play(asset_get("sfx_swipe_heavy1"))
		}
	}
		if window == 4{
			
		if window_timer == 6 && !hitpause{
				var trait = spawn_hit_fx( x + 10 * spr_dir  , y + 4 , ushadow)
				trait.draw_angle = 90*spr_dir
		}
		
		if window_timer == 9 {
			vsp = -8
			
			if !hitpause{
				sound_play(asset_get("sfx_spin"))
			}
					
				move_cooldown[AT_USPECIAL] = 999
		}
		
		if window_timer == 18{
			sound_play(asset_get("sfx_ice_shieldup"))
			
			if fcharge > 0 {
				fcharge -= 1
			} else {
				vsp = -8
				set_state(PS_PRATFALL)
				prat_land_time = 20;
			}
		}
	}
	
	if window == 5 {
		
		if window_timer == 24{
			window = 3
			window_timer = 0
		}
		
		if window_timer > 10 {
		if special_pressed and fcharge > 0{
			set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 40);
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
				if get_player_color(player) == 5 && sakura == 1{
			spawn_hit_fx( x , y , shit3 )
			}
			spintime = 0
			window = 2
			window_timer = 2
			vsp = -7
			hsp = 10.5 * spr_dir
			fcharge -= 1
			fchargetimer = 0
			
			sound_play(asset_get("sfx_spin"))
			sound_play(asset_get("sfx_ori_glide_featherout"));
		}
		}
		
		
			if shield_pressed{
			window = 4
			window_timer = 0
			sound_play(asset_get("sfx_swipe_heavy1"))
		}
		
	}
	
		if get_player_color(player) == 5 && sakura == 1 && window == 4 && window_timer == 8{
			spawn_hit_fx( x , y , shit1 )
			}
	
	
}

if attack == AT_TAUNT{
	
	if window == 1 {
		
		if window_timer == 1 {
			
			sound_play(asset_get("sfx_ice_shieldup"))
			sound_play(asset_get("sfx_ori_glide_featherout"));
		}
		
			if window_timer == 6 {
			
			sound_play(asset_get("sfx_ori_bash_launch"));
		}
		
	}
	
   if window == 2 && drops < 0{
   	
   	if window_timer % 9 = 0 {
   		
   	if	get_player_color(player) == 5 && sakura == 1 {
   			spawn_hit_fx( x + random_func(22, 400, true) - 200, y - 100 + random_func(23, 100, true), shit6 )
   		}
   	create_hitbox(AT_EXTRA_3 , random_func(1,  7, true) , x, y - 40 );	
   	
   	 set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED,  (random_func(1,  15, true) ) - 7 );
     set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - 3 );
     set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));
     
     set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_HSPEED,  (random_func(4,  15, true) ) - 7 );
     set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - 3 );
     set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));
     
     
     set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_HSPEED,  (random_func(7,  15, true) ) - 7 );
     set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_VSPEED, (random_func(8, 7, true) * -1) - 3 );
     set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(9, 4, true))/10));
     
     set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_HSPEED,  (random_func(10,  15, true) ) - 7 );
     set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_VSPEED, (random_func(11, 7, true) * -1) - 3 );
     set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(12, 4, true))/10));
     
     set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_HSPEED,  (random_func(13,  15, true) ) - 7 );
     set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_VSPEED, (random_func(14, 7, true) * -1) - 3 );
     set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(15, 4, true))/10));
     
     set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED,  (random_func(16,  15, true) ) - 7 );
     set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, (random_func(17, 7, true) * -1) - 3 );
     set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(18, 4, true))/10));
        
   	
   	}
   }
   
   if window == 2 && drops < -2.5 {
   	
 
   		
   	if window_timer % 4 = 0 {
   		  if	get_player_color(player) == 5 && sakura == 1 {
   			spawn_hit_fx( x + random_func(24, 700, true) - 350, y - 200 + random_func(25, 200, true), shit7 )
   			spawn_hit_fx( x + random_func(26, 700, true) - 350, y - 200 + random_func(27, 200, true), shit8 )
   		}
   	create_hitbox(AT_EXTRA_3 , random_func(1,  7, true) , x, y - 40 );	
   	
   	 set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED,  (random_func(1,  20, true) ) - 10 );
     set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - 3 );
     set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));
     
     set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_HSPEED,  (random_func(4,  20, true) ) - 10 );
     set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - 3 );
     set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));
     
     
     set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_HSPEED,  (random_func(7,  20, true) ) - 10 );
     set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_VSPEED, (random_func(8, 7, true) * -1) - 3 );
     set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(9, 4, true))/10));
     
     set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_HSPEED,  (random_func(10,  20, true) ) - 10 );
     set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_VSPEED, (random_func(11, 7, true) * -1) - 3 );
     set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(12, 4, true))/10));
     
     set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_HSPEED,  (random_func(13,  20, true) ) - 10 );
     set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_VSPEED, (random_func(14, 7, true) * -1) - 3 );
     set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(15, 4, true))/10));
     
     set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED,  (random_func(16,  20, true) ) - 10 );
     set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, (random_func(17, 7, true) * -1) - 3 );
     set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(18, 4, true))/10));
        
   	
   	}
   }
	
	if window == 2 && window_timer >= 29 && (taunt_down or get_gameplay_time() <= 112) {
		
		if get_player_color(player) == 7 {
		//sound_play(sound_get("Balesi"));
	}
		window_timer = 0
		
		
		if get_gameplay_time() > 120{
			sound_play(asset_get("sfx_troupple_rumble"),false,noone,.7,2);
			drops -= 0.8
		}
    }

if get_gameplay_time() == 100 {
	window = 3
	window_timer = 0
}

if window == 3 {
		

	    if window_timer == 1 {
			sound_play(asset_get("sfx_ori_glide_start"));
			sound_play(asset_get("sfx_ori_bash_projectile"));
		}
		
		
}

}

if window == 1 && window_timer == 1 {
	drops = 1
	fchargetimer = 0
	dairv = 0
	if (attack == AT_DSPECIAL){
		fcharge -= 1
	}
}

var last_window = get_attack_value(attack, AG_NUM_WINDOWS);

if (window == last_window) && window_timer == get_window_value(attack, last_window, AG_WINDOW_LENGTH) {
  drops = 0
	
}


if attack == AT_DSTRONG or attack == AT_USTRONG or attack == AT_FSTRONG {
  

  
  if state_timer == 1 {
  	dairv = 0
  	set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 18);
  	set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 18);
  	set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
  	set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 18);
  	
  	set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2);
    set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9.5);
    set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
  	
  	set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 6);
    set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, 1);
    
    set_hitbox_value(AT_USTRONG, 9, HG_DAMAGE, 6);
    set_hitbox_value(AT_USTRONG, 9, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_USTRONG, 9, HG_KNOCKBACK_SCALING, 1);
    
    set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 7);
    set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 1.0);
    
    set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 7);
    set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 1.0);

  }
  

  if window == 1 or window == 2 {
  	
  	set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2 + scharge/12);
    set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9.5 );
    set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.15);
  	
  	set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 6 + scharge/12);
    set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 9.5 );
    set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, 1.15 );
    
    set_hitbox_value(AT_USTRONG, 9, HG_DAMAGE, 6 + scharge/12);
    set_hitbox_value(AT_USTRONG, 9, HG_BASE_KNOCKBACK, 7 );
    set_hitbox_value(AT_USTRONG, 9, HG_KNOCKBACK_SCALING, 1.15 );
    
    set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 7 + scharge/12);
    set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 8 );
    set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 1.1);
    
    set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 7 + scharge/12);
    set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 8 );
    set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 1.1);
  	
  	
  }

} 

