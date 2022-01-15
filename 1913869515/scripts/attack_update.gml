
	//B - Reversals
if (attack == AT_USPECIAL || attack == AT_NSPECIAL || attack == AT_FSPECIAL|| attack == AT_DAIR ){
    trigger_b_reverse();
}

 if (state_timer == 1 or (window == 1 && window_timer == 1)) && !hitpause && get_gameplay_time() > 120 {
      sound_play(sound_get("swingw1"),false,noone, .2 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
        max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
}
 

if get_player_color(player) == 6 {
	
		can_move = true;
		can_jump = true




if attack != AT_TAUNT {
	set_attack (AT_TAUNT)
	window = 17;
}




	





if (attack == AT_TAUNT){
	
	invincible = true
	can_jump = true;
	
    if (window <= 2){
        
         if (!up_down){
            window = 16;
            window_timer = 0;
            
            if get_player_color(player) == 1{
            	      sound_play(sound_get("tauntUV"));
            
            } else {
            	sound_play(sound_get("tauntU"));
            }
        }
        
    
        
         if (up_down){
         	
            window = 17;
            window_timer = 0;
            
         	
      }
    }
    
    if(window == 16){
    	
    	with (asset_get("oPlayer")) {
     if (x > other.x) {
x += 900;
y = 1000 - random_func(1, 1000, true)

   }
}

with (asset_get("oPlayer")) {
  if (x < other.x) {
x -= 900;
y = 1000 - random_func(1, 1000, true)
  }
}
        
    }
    
         if(window == 17 && window_timer == 24){
                    	sound_play(sound_get("tauntD"));
    }
    
    
    if(window == 6 && window_timer == get_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH) && !has_hit){
        set_state( PS_IDLE );
    }
    if(window == 15 && window_timer == get_window_value(AT_TAUNT, 15, AG_WINDOW_LENGTH)){
        set_state( PS_IDLE );
    }
     if(window == 16 && window_timer == get_window_value(AT_TAUNT, 16, AG_WINDOW_LENGTH)){
        set_state( PS_IDLE );
    }

    
 if(window == 17 && window_timer == 138){
         	sound_play(sound_get("tauntDP"));
         	    	with (asset_get("oPlayer")) {
     if (x > other.x) {
hsp = 999;
x = 9999
y = 999
   }
}

with (asset_get("oPlayer")) {
  if (x < other.x) {
hsp = -999;
x = -9999
y = 999
  }
}
         	
    }
    
    
     if(window == 18){
     	set_state (PS_IDLE)
     }
}






  
  

	
}

//if attack == AT_UTILT {
//	
//	
//	if window == 3 && zbayo = 7 && !hitpause{
//		
//set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 80);
//set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.8);
//set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 304);
//set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 15);
//set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .6);
//set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, sound_get("slice"));
//
//set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 80);
//set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.8);
//set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 304);
//set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 15);
//set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .6);
//set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, sound_get("slice"));	
//
//		if has_hit_player {
//		dmhit -= 1
//	    spawn_hit_fx( x - (20 * spr_dir) , y - 30 , shit5 )
//		sound_play(sound_get("counterhit"));
//		vsp = -5
//		hit_player_obj.hsp /= 4 
//		hit_player_obj.vsp = -4
//		x = hit_player_obj.x
//		y = hit_player_obj.y + 10
//		spr_dir = hit_player_obj.spr_dir * -1
//		set_attack (AT_USPECIAL)
//		window = 4
//		window_timer = 1
//		zbayo = 6 
//		hsp = 4 * spr_dir
//		} else {
//			zbayo = 0
//		}
//		
//	} 
//	
//}

if attack == AT_FSPECIAL {
	can_fast_fall = false
	move_cooldown[AT_FSPECIAL] = 30
	if window == 1 {
		if halo > 0 && zbayo != 5 {
			 zbayo = 5
			 halo -= 1
			 spawn_hit_fx(x - 20*spr_dir ,y - 35, 305)
			 sound_play(sound_get("SpaceCut"),false,noone,1,1);
		}
		hsp /= 1.5
		vsp /= 1.2
		if vsp > 0 {
			vsp /= 1.2
		}
		
		if !hitpause && window_timer == 1 {
			sound_play(sound_get("SpaceCut"),false,noone,1,1.2);
		}
		if !hitpause && window_timer % 4 == 0 && window_timer < 16{
			create_hitbox(AT_DSPECIAL , 1 , x + 120*spr_dir + 20 - random_func(1,41,true), y - 105 ); 
			sound_play(sound_get("SpaceCut2"));
		} 
		if !hitpause && window_timer % 3 == 0 && window_timer > 14 { 
			create_hitbox(AT_DSPECIAL , 1 , x - 100*spr_dir + 20 - random_func(1,41,true), y - 105 ); 
		}
		

		if window_timer == 20 && !hitpause {
 	        hsp = 240*spr_dir
			spr_dir *= -1
			shake_camera(4,2)
			sound_play(sound_get("counterhit"),false,noone,1,1.4);
		}
	}
	if window == 3 {
	zbayo = 0	
	}
	if window == 2 {
		if window_timer <= 4 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN{
			state_timer = 90
			
			
			if hitpause {
				hit_player_obj.y += floor((y - 10 - hit_player_obj.y)/6)
				hit_player_obj.x += floor((x + 70*spr_dir - hit_player_obj.x)/6)
			}
		}
		
			if zbayo = 5 && get_gameplay_time()%4 == 0 && has_hit_player {
				 with hit_player_obj {
               		take_damage( player, -1 , 1 )
                 }
                  
                         	var hits = random_func(5, 3, true) ;
                   

                  shake_camera(3,1)
                  
                  sound_play(sound_get("slicel"));
               	
               	if (hits == 0 ){
                   	var hit1 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash )
                   		hit1.depth = -1000
               	create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (110 * spr_dir) , hit_player_obj.y - 105 ); 
               	}
               	
                 	if (hits == 1 ){
                   var hit2 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash2 )
                   	hit2.depth = -1000
                   	create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (70 * spr_dir) , hit_player_obj.y - 105 ); 
               
                    }
                    
                      	if (hits == 2){
                   	var hit3 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash3 )
                   		hit3.depth = -1000
               
                    }
                    
                      	if (hits == 3){
                	var hit4 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash4 )
                		hit4.depth = -1000
                		create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (90 * spr_dir) , hit_player_obj.y - 105 ); 
                			create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (50 * spr_dir) , hit_player_obj.y - 105 ); 
                   }
              }
		
		if window_timer == 15 && state_timer >= 90 {
			attack_end();
			set_attack(AT_UTILT)
			window = 1
			window_timer = 5 
			if x > hit_player_obj.x {
				spr_dir = -1 
			} else {
				spr_dir = 1 
			}
		}
		
		if window_timer == 1 && !hitpause {
			hsp = 10*spr_dir 
		}
		
		vsp = 0
		hsp /= 1.6
		can_move = false
	}
	
}

if attack == AT_USPECIAL && window == 6 && zbayo = 6 {
	x = hit_player_obj.x - 60 * spr_dir
	y = hit_player_obj.y - 10
	zbayo = 0	
		
}

//////////////////////////////////////////////////////
if attack == AT_UTILT && window == 1 && window_timer == 1{
	
	sound_play(asset_get("sfx_swipe_medium1"));
	zcountered = 0
	
}



if attack == AT_NSPECIAL and window == 1 and window_timer == 1 and !free {

	hsp = -7 * spr_dir 
	
}















////////////////////////////////////////////////////////


else {
	
if attack == AT_BAIR{
	
	if window == 1 {
		can_wall_jump = false
		zcountered2 = 0
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
	}
	
	if window > 1 && zcountered2 == 1 {
		can_wall_jump = true
	}
	
	if window == 1 && window_timer == 1 && !hitpause {
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
		sound_play(asset_get("sfx_swipe_heavy1"));
	}
	
	if has_hit_player && window == 2{
		    vsp = -1
			hit_player_obj.y += ((y - 10) - hit_player_obj.y) / 5
	}
	
}

if attack == AT_FTILT {
	
	if window == 3 && window_timer == 10 {
		set_attack (AT_UTILT)
		window = 3
		hsp = 0
		window_timer = 8
	}
}	

if (attack == AT_UAIR && window == 1 && window_timer == 1){
	
	sound_play(asset_get("sfx_swipe_heavy2"));
	set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 51);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 71);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
}



if attack == AT_FAIR && zbayo == 3 && window == 3 && !hitpause {
	attack_end();
	    dmhit -= 1
	spawn_hit_fx( x - (20 * spr_dir) , y - 50 , shit5 )
		sound_play(sound_get("counterhit"));
		vsp = -5
			sound_play(asset_get("sfx_swipe_weak2"));
		x = hit_player_obj.x + 100 * spr_dir
		y = hit_player_obj.y - 10
		spr_dir *= -1
		set_attack (AT_FAIR)
		window = 2
		window_timer = 4
		zbayo = 2 
		hsp *= -1
}

if attack == AT_FAIR && zbayo == 2 && window == 3 && !hitpause {
	spawn_hit_fx( x - (20 * spr_dir) , y - 50 , shit5 )
		sound_play(sound_get("counterhit"));
		sound_play(asset_get("sfx_swipe_weak1"));
		x = hit_player_obj.x + 20 * spr_dir
		y = hit_player_obj.y + 60
		spr_dir *= -1
		hsp = 0
		set_attack (AT_UAIR)
		window = 2
		window_timer = 2
		zbayo = 0 
		
}

if (attack == AT_USPECIAL){
	if window = 1 && halo >= 1 && window_timer == 1 && offense = 1{
		
		if zvoice == 1{
             if get_player_color(player) == 1{
            	      sound_play(sound_get("perfectNSV"));
            
            } 
            if get_player_color(player) == 4{
            	      sound_play(sound_get("startUSTRONGD"));
            
            } 
            
             if get_player_color(player) != 1 and get_player_color(player) != 4{
            	sound_play(sound_get("perfectJ1"));
            }
            }
		
			
		zbayo = -1
		spawn_hit_fx( x - (20 * spr_dir) , y - 50 , shit5 )
		sound_play(sound_get("SpaceCut"));
	}
	
	if window = 4 && window_timer == 7 && zbayo == -1 {
		halo -= 1 
		
		
		if has_hit_player {
			
			if zvoice == 1{
            if get_player_color(player) == 1{
            	      sound_play(sound_get("perfectJ3V"));
            
            } 
            if get_player_color(player) == 4{
            	      sound_play(sound_get("strongD"));
            
            } 
            
             if get_player_color(player) != 1 and get_player_color(player) != 4  {
            	sound_play(sound_get("perfectJ3"));
            }
			}
			
			
		spawn_hit_fx( x - (20 * spr_dir) , y - 50 , shit5 )
		sound_play(sound_get("counterhit"));
		sound_play(asset_get("sfx_swipe_weak1"));
		zbayo = 3
		vsp = -5
		x = hit_player_obj.x + 60 * spr_dir
		y = hit_player_obj.y - 10
		spr_dir *= -1
		set_attack (AT_FAIR)
		window = 2
		window_timer = 4
		
		}
	}
	
	if window = 4 && window_timer > 8 {
		zbayo = 0
	}
	
	
	if window > 3 {
		can_wall_jump = true
		zcountered2 = 1
	}
	
	if window == 1 && window_timer == 1{
		spawn_hit_fx( x - (6* spr_dir), y - 40 , slash )	
		spawn_hit_fx( x - (6* spr_dir), y - 40 , slash2 )	
		sound_play(asset_get("sfx_boss_shine"));
	}
	
	if window == 4 && window_timer == 18{
		 set_state (PS_PRATFALL)
	}
	
 

	
	if window == 4 && has_hit_player && window_timer == 2{
		move_cooldown[AT_USPECIAL] = 999 ;
		if vsp > -8{
		vsp = -8
		}
	}
	
	if window < 4 && window != 0 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN && !hitpause {
		hit_player_obj.x += ((x + (45 * spr_dir)) - hit_player_obj.x) / (4)
		hit_player_obj.y += (y - 15 - hit_player_obj.y) / 6
	}
	
	if window == 1 {
		
		vsp /= 1.2
		hsp /= 1.02
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
	}

	
	if window == 4 && !free {
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
	}

	
	can_fast_fall = false;
    
    	

    
    if (window == 1 && window_timer == 9) {
    	
    	/*
    	if (!special_down){
    		window = 2
    		window_timer = 0
    		hsp = 8 * spr_dir
    		vsp = -3
prat_land_time = 14;
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 18);

set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, sound_get("slice"));

set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, sound_get("slice"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 8.5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3); 
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 120);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 47);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3); 
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 120);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 3);

set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 3);


}     
*/
}

if (window == 1 && window_timer == 11)  {
prat_land_time = 12;	
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, sound_get("slice"));

set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, sound_get("slice"));	
	
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);	

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -6.5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
	
	
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 17);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -9.8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3); 
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 110);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 1);

set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3); 
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 8);

set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 8);

    	}
    	
    
    
	if (window == 1 && window_timer == 1){
		if zvoice == 1{
        if get_player_color(player) == 1{
            	      sound_play(sound_get("perfectJ3V"));
            
            } else {

            }
		}
    }
    

	
}



if (attack == AT_NSPECIAL){
	

	if special_down && window = 2 && offense = 1{
		move_cooldown[AT_EXTRA_1] += 1
    hsp /= 1.1
    if vsp > 0 {
    vsp /= 2
    }
	}
	
	if window = 1 {
		nrange = 1
	}
	
	if window = 2 && window_timer == 8 {
		
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X,  100 + nrange);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X,  100 + nrange);
		set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X,  90 + nrange);
		set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X,  90 + nrange);
		set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X,  100 + nrange);
		set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X,  100 + nrange);
		
		if nrange < 300 {
			set_num_hitboxes(AT_NSPECIAL, 4);
		}else {
			set_num_hitboxes(AT_NSPECIAL, 5);
		}

		if nrange > 300 && !hitpause{
				sound_play(sound_get("counterhit"));
				spawn_hit_fx( x + (100*spr_dir + nrange*spr_dir), y - 30, SC)
		}
	}

	
	can_fast_fall = false;
	if window == 7 && window_timer == 1 {
    	spawn_hit_fx( x + (100*spr_dir + nrange*spr_dir), y - 30, SCF1)
    	spawn_hit_fx( x + (100*spr_dir + nrange*spr_dir), y - 30, SCF2)
    }
    if window == 8 && window_timer == 1 {
    	spawn_hit_fx( x + (90*spr_dir + nrange*spr_dir), y - 60, SCF2)
    }
    if window == 9 && window_timer == 1 {
    	spawn_hit_fx( x + (90*spr_dir + nrange*spr_dir), y, SCF1)
    }
    

    if (window == 3 && window_timer >= 3){
    	 move_cooldown[AT_NSPECIAL] = 30 ;

        if halo < 1 or offense = 0 {
        	    spawn_hit_fx( x + (100*spr_dir + nrange*spr_dir), y - 30, SCF1)
                window = 5;
            	window_timer = 2;
            	sound_play(asset_get("sfx_spin"));
        }
        
         if halo >= 1 and offense = 1 {
         	    	spawn_hit_fx( x + (100*spr_dir + nrange*spr_dir), y - 30, SC)
         	    	create_hitbox(AT_NSPECIAL , 6 , floor(x + (100 + nrange)*spr_dir), floor(y - 30) ); 
         	halo -= 1
         	spawn_hit_fx( x - (20 * spr_dir) , y - 50 , shit5 )
                window = 4;
            	window_timer = 0;
            	sound_play(asset_get("sfx_spin"));
        }
            
    }
    
    if (window == 4 && window_timer == 3){
    	
        
            window = 7;
            window_timer = 0;
            sound_play(sound_get("counterhit"));
            
            if zvoice == 1{
            if get_player_color(player) == 1{
            	      sound_play(sound_get("perfectNSV"));
            
            } 
            if get_player_color(player) == 4{
            	      sound_play(sound_get("startUSTRONGD"));
            
            } 
            
             if get_player_color(player) != 1 and get_player_color(player) != 4 {
            	sound_play(sound_get("perfectNS"));
            }
      
            }
            
             
        
    }
    
 
    
    if hit_player_obj.state_cat != SC_HITSTUN {
    	
       if(window == 5 && window_timer == get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH)){
    	if !free {
        set_attack (AT_EXTRA_1)
        window = 8
        window_timer = 6
        spr_dir *= -1
    	}
    
    }
    
     if(window == 6 && window_timer == get_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH)){
     	set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
    		set_attack (AT_BAIR)
    	window = 5
    	sound_play(asset_get("sfx_ice_shieldup"));
    }
    
        if(window == 9 && window_timer == get_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH)){
    	if !free {
        set_attack (AT_EXTRA_1)
        window = 8
        window_timer = 6
        spr_dir *= -1
    	}
    	if free {
    		sound_play(asset_get("sfx_ice_shieldup"));
    		set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
    		set_attack (AT_BAIR)
    	window = 5
    	}
    }
    }
    
     if hit_player_obj.state_cat == SC_HITSTUN {
     	 if(window == 6 && window_timer == get_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH)){
    	window = 10
    }
     }
    
     
}







if (attack == AT_DSPECIAL){
		move_cooldown[AT_DSPECIAL] = 20
		if zcountered = 1 {
		invincible = true
	}
	
	vsp /= 1.2
	hsp /= 1.1
	if window == 1 && window_timer == 1 {
		offensetimer = 160
		zcountered = 0
	}
	
	can_fast_fall = false;
	can_move = false ;
    if window == 2  {
    	if window_timer = 1 && halo >= 1 && offense = 1 {
    		spawn_hit_fx (x, y - 40, shit6)
    		spawn_hit_fx (x, y - 40, shit7)
    	}
    	move_cooldown[AT_EXTRA_3] = 200
        super_armor = true;
    } 
    
    if window == 3 {
        super_armor = false;
    }
    
    if window == 4 && halo >= 1 && offense = 1 {
    	if window_timer % 3 == 0 {
    	create_hitbox(AT_DSPECIAL , 1 , floor(x + ( 0 - 80  - random_func(3, 50, true)) * spr_dir)  , y - 105 ); 
    	create_hitbox(AT_DSPECIAL , 1 , x + floor((( 0  + random_func(3, 50, true))  + random_func(3, 50, true)) * spr_dir)  , y - 105 ); 
    	sound_play(sound_get("SpaceCutB"));
    	}
    }
        
     if window == 5 && halo >= 1 && offense = 1{
        set_attack (AT_EXTRA_1)
        window = 7
        spawn_hit_fx ( x  , y - 20 , 304 );
        

			x += 200 * spr_dir
			spr_dir *= -1
			
			hsp = -6 * spr_dir

		sound_play(sound_get("counterhit"));
    }
    
    
    nearbyhitbox = collision_circle( x-12, y-12, 64, asset_get("pHitBox"), false, true ) 
	if nearbyhitbox != noone{
		if nearbyhitbox.player_id != self && nearbyhitbox.type == 2 && super_armor && nearbyhitbox.hit_priority != 0  {
			zcountered = 1
			        if zvoice == 1{
         if get_player_color(player) == 1{
            	      sound_play(sound_get("counterV"));
            
            } 
            
            
            if get_player_color(player) == 4{
            	      sound_play(sound_get("counterD"));
            
            } 
            
            if get_player_color(player) != 1 and get_player_color(player) != 4 {
            sound_play(sound_get("counter"));
            }
        }
			set_attack(AT_UTILT)
			window = 2
			window_timer = 1
            sound_play(sound_get("RI")); 
            shake_camera(4, 6)
            spawn_hit_fx (nearbyhitbox.x - 10 + random_func(2,20,true), y  - random_func(2,40,true) , 302 )
			nearbyhitbox.hsp *= -1 
			if nearbyhitbox.x > x {
			nearbyhitbox.x += 20
			} else {
			nearbyhitbox.x -= 20	
			}
			nearbyhitbox.air_friction = 0
			nearbyhitbox.spr_dir *= -1
			nearbyhitbox.vsp -= abs(nearbyhitbox.hsp/2)
			nearbyhitbox.grav = 0.2 + abs(nearbyhitbox.hsp/60)
	       	nearbyhitbox.hitbox_timer = 1
			nearbyhitbox.can_hit_self = true
			nearbyhitbox.transcendent= true
	}
	}
	
}


if attack == AT_EXTRA_1 {

	
	if zcountered = 1 {
		invincible = true
	}
	
	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
	vsp /= 1.1
	if window > 7 {
	can_wall_jump = true
	}
	
	
	if has_hit_player && (window < 8 or (window == 8 && window_timer < 12)){
		
	  hit_player_obj.hsp = 0
	  hit_player_obj.vsp = -4
	  
if window_timer % 3 == 0{
	
	   with hit_player_obj {
		take_damage( player, -1 , 1 )
   }
   
          	var hits = random_func(5, 3, true) ;

 hit_player_obj.y += 10
 
   sound_play(sound_get("slicel"));
	
	if (hits == 0 ){
    	var hit1 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash )
    		hit1.depth = -1000
	create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (110 * spr_dir) , hit_player_obj.y - 105 ); 
	}
	
  	if (hits == 1 ){
    var hit2 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash2 )
    	hit2.depth = -1000
    	create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (70 * spr_dir) , hit_player_obj.y - 105 ); 

     }
     
       	if (hits == 2){
    	var hit3 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash3 )
    		hit3.depth = -1000

     }
     
       	if (hits == 3){
 	var hit4 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash4 )
 		hit4.depth = -1000
 		create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (90 * spr_dir) , hit_player_obj.y - 105 ); 
 			create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (50 * spr_dir) , hit_player_obj.y - 105 ); 
     }
}

	   
	   
	}
	
	if free {
		hsp /= 1.1
		vsp += 0.03
	}
	
	can_move = false 
	can_fast_fall = false
	if window == 7 && window_timer == 2{
		vsp = 0
		create_hitbox(AT_DSPECIAL , 1 , x - (50 * spr_dir) , y - 105 ); 
			create_hitbox(AT_DSPECIAL , 1 , x + (10 * spr_dir), y - 105 ); 
			create_hitbox(AT_DSPECIAL , 1 , x + (70 * spr_dir) , y - 105 ); 
	}
	
	if window == 8 && window_timer == 12 && !hitpause{
		if has_hit_player{
			sound_play(sound_get("RI2"));
			create_hitbox(AT_EXTRA_1,3,x,y)
		} else {
			sound_play(asset_get("sfx_ice_shieldup"));
		}
		
		zcountered = 0
		
		
	}

    if window == 9 && window_timer == 10 && !hitpause{
     spr_dir *= -1	
    }

	
}

if attack == AT_FSTRONG && free{

if window > 2 {
	can_move = false
}
if window = 5 && window_timer == 8{
	set_state (PS_PRATFALL)
	vsp = 0
}
}

if(attack == AT_USTRONG){
	
		if window < 4 & has_hit_player && !hitpause{
		hit_player_obj.hsp = ((x + (65 * spr_dir)) - hit_player_obj.x) / 4
		hit_player_obj.y += (y - 75 - hit_player_obj.y) / 8
	}
	
    if(window == 2 && window_timer == get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH) && !has_hit){
        window = 6;
        window_timer = 0;
        if zvoice == 1{
         if get_player_color(player) == 1{
            	      sound_play(sound_get("startUSTRONGV"));
            
            } 
            
            
            if get_player_color(player) == 4{
            	      sound_play(sound_get("startUSTRONGD"));
            
            } 
            
            if get_player_color(player) != 1 and get_player_color(player) != 4 {
            sound_play(sound_get("startUSTRONG"));
            }
        }
    }       

    

    	
    if(window == 5 && window_timer == get_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH)){
        set_state(PS_IDLE);
    }
}


if (attack == AT_FSTRONG){
	
	
    if (window == 2 && window_timer == 1) {
    	if zvoice == 1{
	if get_player_color(player) == 4 && !hitpause{
            	      sound_play(sound_get("strongD"));
            
            } 
    	}
	}
  
    
    if (window == 7 && window_timer = 1){
       	create_hitbox(AT_FSTRONG , 8 , x , y );
     }
         	
         		
         		
     if (window == 7 && window_timer = 30){
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 140);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_TECHABLE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);
     	set_attack(AT_FSTRONG)
     	window = 8;
     }
     
     if (window == 8 && window_timer = 20){

			
     		create_hitbox(AT_FSTRONG , 3 , hit_player_obj.x , hit_player_obj.y );
     		create_hitbox(AT_FSTRONG , 9 , hit_player_obj.x , hit_player_obj.y -70 );

     		

     		sound_play(sound_get("RI2"));
     }
     
     if (window == 8 && window_timer = 30){

     	set_attack(AT_FSTRONG)
     	window = 9;
     }
    
}
if attack == AT_DSTRONG {
	
	if window < 4 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
		hit_player_obj.hsp = ((x + (45 * spr_dir)) - hit_player_obj.x) / 3
	}
	
	if window == 8 && window_timer == 2 {
			set_attack (AT_FSTRONG)
    	window = 3
    	window_timer = 10
    	sound_play(asset_get("sfx_land"));
	}
}
if (attack == AT_DSTRONG && get_player_color(player) == 4){
	if zvoice = 1{
	if (window == 1 && window_timer == 1) {
		
            	      sound_play(sound_get("DstrongD1"));
          
            } 
            
 	if (window == 3 && window_timer == 1) {

            	      sound_play(sound_get("DstrongD2"));
           
	}
	
	if (window == 6 && window_timer == 1) {

            	      sound_play(sound_get("strongD"));
            

	}
	

	}
	
	
}
            
        


if (attack == AT_JAB){
	nrange = 1
	zcountered = 0
    
    	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X,  100 + nrange);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X,  100 + nrange);
		set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X,  90 + nrange);
		set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X,  90 + nrange);
		set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X,  100 + nrange);
		set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X,  100 + nrange);
		
	 if (window == 3 && window_timer >= 11 && !has_hit){
        if (special_pressed){
        move_cooldown[AT_NSPECIAL] = 0
            set_attack(AT_NSPECIAL)
			window = 7;
			window_timer = 0;
            sound_play(sound_get("counterhit"));
            
            if zvoice == 1{
             if get_player_color(player) == 1{
            	      sound_play(sound_get("perfectJ1V"));
            
            } 
            if get_player_color(player) == 4{
            	      sound_play(sound_get("startUSTRONGD"));
            
            } 
            
             if get_player_color(player) != 1 and get_player_color(player) != 4{
            	sound_play(sound_get("perfectJ1"));
            }
            }
            
        }
    }
    
    //if (window == 3 && window_timer < 10 and window_timer >= 8){
    //    if (special_pressed){
    //        set_attack(AT_JAB)
	//		window = 7;
	//		window_timer = 0;
    //       
    //        
    //    }
    //}

    


    
    if (hit_player_obj.state_cat == SC_HITSTUN and window >= 8 and has_hit){
    
        if (special_down) && !hitpause && halo > 0 {
        	halo -= 1
        	shake_camera(4,2)
        	spawn_hit_fx(x,y - 35,305)
        	sound_play(sound_get("SpaceCut"),false,noone,1,1.2);
            set_attack(AT_FSTRONG)
            set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE,  120);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_TECHABLE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 0.5);
			window = 8;
			window_timer = 0;
			
			if zvoice == 1{
            if get_player_color(player) == 1{
            	      sound_play(sound_get("perfectJ3V"));
            
            } 
            if get_player_color(player) == 4{
            	      sound_play(sound_get("strongD"));
            
            } 
            
             if get_player_color(player) != 1 and get_player_color(player) != 4  {
            	sound_play(sound_get("perfectJ3"));
            }
			}
            
        }
    }
    
    if (window == 10){
    	sound_play(asset_get("sfx_ice_shieldup"));
    	set_attack (AT_FSTRONG)
    	window = 3
    	window_timer = 6
    }
    

}
    
    
if(attack == AT_DAIR){
	
	if down_down {
		fall_through = true 
	}
	if window == 1 && window_timer < 2{
		if left_down && !right_down {
			spr_dir = -1
		}
		
		
		if !left_down && right_down {
			spr_dir = 1
		}
		
	}
	
	can_fast_fall = false;
	

	
    if (window <= 3 && has_hit) {
    	
    	window = 4;
    	window_timer = 0;
    }
    
   
   if (window == 4 && !hitpause) {
    	vsp = -6
       	hsp = -3 * spr_dir
    	set_attack (AT_BAIR)
    	window = 10
    }
    
    if(window == 3 && window_timer == get_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH)){
        set_attack (AT_BAIR)
    	window = 5
    	window_timer = 5
    }
    
     
   
}


	
	
if (attack == AT_TAUNT){
	move_cooldown[AT_EXTRA_3] = 200
	if window == 18 && window_timer > 6 && window_timer < 71{
		window_timer += 1
	}
	
	if window == 17 && window_timer == 2{
		sound_play(asset_get("sfx_spin"));
	}
	
	if(window == 18 && window_timer == 64){
		
		
      	if (get_player_color(player) == 0 or get_player_color(player) == 2 or get_player_color(player) == 3 
      	or get_player_color(player) == 6 or get_player_color(player) == 5){
      	ztrashes = random_func(15, 8, true);
      	}
      	if zvoice == 0 {
      	if (get_player_color(player) != 4){
      	ztrashes = 7	
      	}
      	
      	if (get_player_color(player) == 4) {
      	
      		ztrashes = 1
      	}
      	
      	
      	}
      	if zvoice == 1 {
      	if (get_player_color(player) == 1) {
      	
      		ztrashes = 3
      	}
      	
      	if (get_player_color(player) == 4) {
      	
      		ztrashes = 1
      	}

      	
      	}
    }
    


	if ztrashes == 0 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("hamburger"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("hamburgerstill"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("thamburger"));
    }
    
    if ztrashes == 1 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("roadroller"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("roadroller"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("troadroller"));
    }
    
    if ztrashes == 2 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("ring"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("ring"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("tring"));
    }
    
     if ztrashes == 3 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("bonespin"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("bone"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("tbone"));
    }
    
    if ztrashes == 4 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("korb2"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("korb1"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("tkorb"));
    }
    
     if ztrashes == 5 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("fox2"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("fox1"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("tfox"));
}	

 if ztrashes == 6 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("poke2"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("poke1"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("tpoke"));
}	

 if ztrashes == 7 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("hikaru"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("hikaru"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("tHi"));
}

	 if ((get_gameplay_time() % 23 = 0 ) && window_timer <= 60 ){
	 	
	 if get_player_color(player) == 3{
         
         
     if (spr_dir == 1){  
        spawn_hit_fx ( x - 60 , y - 120 , G7 );
    } else {
    	spawn_hit_fx ( x + 60 , y - 120 , G72 );
    }    
            
	 }
	 }
	 
	  if (window == 5 && window_timer == 19){
	  	
	  	if (taunt_down){
	  		window = 5
	  		window_timer = 0
	  		
	  	}
	  }
            
	
    if (window <= 2){
        if (special_pressed){
            window = 7;
            window_timer = 0;
            
            if zvoice == 1{
            
            if get_player_color(player) == 1{
            	      sound_play(sound_get("tauntV"));
            
            } 
            
             if get_player_color(player) == 4{
            	      sound_play(sound_get("tauntDi"));
            
            } 
            
            if get_player_color(player) != 1 and get_player_color(player) != 4 {
            	sound_play(sound_get("taunt"));
            }
            }
        }
        
         if (down_down){
            window = 16;
            window_timer = 0;
            
            if zvoice == 1{
            if get_player_color(player) == 1{
            	      sound_play(sound_get("tauntUV"));
            
            } 
            
            if get_player_color(player) == 4{
            	      sound_play(sound_get("tauntUD"));
            
            }
            
             if get_player_color(player) != 1 and get_player_color(player) != 4 {
            	sound_play(sound_get("tauntU"));
            }
            }
        }
        
    
        
         if (up_down){
         	
            window = 17;
            window_timer = 0;
        
      }
      
      if (attack_pressed or get_player_color(player) == 4 ){
      	

         	
            window = 18;
            window_timer = 0;

      	

      }
    }
    
         if(window == 17 && window_timer == 24){

                    	sound_play(sound_get("tauntD"));
                 	
         }
         
         if(window == 18 && window_timer == 1){
                    	sound_play(sound_get("slice"));
         }
         	if(window == 18 && window_timer == 18){
                    	sound_play(sound_get("counterhit"));
    }
    
if(window == 20 && window_timer > 24){
                  if (attack_down){
         	
            window = 18;
            window_timer = 14;
      }
    }
    
if(window == 18 && window_timer == 30){

            window_timer = 52;

}
      
	
    
    
   
    
    
    
    
    if(window == 6 && window_timer == get_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH) && !has_hit){
        set_state( PS_IDLE );
    }
    if(window == 15 && window_timer == get_window_value(AT_TAUNT, 15, AG_WINDOW_LENGTH)){
        set_state( PS_IDLE );
    }
     if(window == 16 && window_timer == get_window_value(AT_TAUNT, 16, AG_WINDOW_LENGTH)){
        set_state( PS_IDLE );
    }
    
      if(window == 17 && window_timer == get_window_value(AT_TAUNT, 17, AG_WINDOW_LENGTH)){
        set_state( PS_IDLE );
    }
    
}   


if (attack == AT_DTILT){
	if (has_hit) && !hitpause {
                window_timer += 0.5;
	}
}





if (attack == AT_UAIR && !hitpause){
	if (has_hit) && !hitstop {
                window_timer += 0.5;
	}
	
}

if (attack == AT_FTILT){
	
	if (has_hit) && !hitpause {
                window_timer += 1;
	}
	
	if window == 3 && window_timer >= 9 {
		
		x -= 6 * spr_dir
		sound_play(asset_get("sfx_ice_shieldup"));
		set_attack (AT_FSTRONG)
    	window = 3
    	window_timer = 12
	}
}

if (attack == AT_UTILT){
	
	if zcountered = 1 {
		invincible = true
	}
	
	vsp /= 2
	if free {
		hsp = 0
	}
	can_fast_false = false 
	if (has_hit) && !hitstop   {
                window_timer += 0.5;
	}
}

if (attack == AT_NAIR){
	if has_hit_player && window < 6 && window != 0 {
       
	}

}




}


if get_player_color(player) == 5 && zvoice == 1 {
	
	
   	
   	
   	
	if attack == AT_NSPECIAL && window == 7 && get_player_color(player) == 5 && zvoice == 1 {
   	
   	
   	if window_timer == 1 {
   		spawn_hit_fx( x + (20 * spr_dir) , y - 30 , shit5 )
   	}
   	
   	if window_timer == 2 {
   		spawn_hit_fx( x + (60 * spr_dir) , y - 30 , shit6 )
   	}
   	
   	if window_timer == 3 {
   		spawn_hit_fx( x + (120 * spr_dir) , y - 30 , shit7 )
   	}
   	
   		if window_timer == 4 {
   		spawn_hit_fx( x + (160 * spr_dir) , y - 40 , shit8 )
   	}
   	
   }
   

   
	if attack == AT_DAIR && window == 2 && window_timer == 1{
		
		 spawn_hit_fx( x, y - 30, shit5 )
	} 
	
	if attack == AT_DAIR && window > 1 && window < 4 {
		
			if state_timer % 7 == 0{
			 spawn_hit_fx( x, y - 40, shit8 )
    	
		
	}
	
	if state_timer % 13 == 0{
		spawn_hit_fx( x, y - 40, shit7 )
    	
		
	}
	
	
	if state_timer % 16 == 0{
			var hit6 = spawn_hit_fx( x, y - 30, shit6 )
    		hit6.depth = -1000
		
	}
		
	}
}

