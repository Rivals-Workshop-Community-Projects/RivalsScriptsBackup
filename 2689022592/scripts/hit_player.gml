/// my_hitboxID.attack
boi = false
reset = false
hbox = my_hitboxID
move_cooldown[AT_NSPECIAL_2] = 0
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, (hit_player_obj.old_hsp)*spr_dir - 2 + random_func(1,5,true) );
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, (hit_player_obj.old_vsp) - 2 + random_func(2,5,true));

switch hbox.attack {
	

	case AT_DSPECIAL :
	    	//boi = true
	    	//reset = true
	    	if hbox.hbox_num == 3 { 
	    	    with (asset_get("pHitBox")) {
                  if player_id == other && attack == AT_DSPECIAL && hbox_num = 3 { 
                         hitbox_timer = 0
                         if damage > 0 damage -= 1
                  }
                  
                }
	    		
	    	}
	break 
	
	case AT_UAIR :
	     if hbox.hbox_num == 3 {
	    	sound_play(asset_get("sfx_blow_heavy1"),false, noone, 1, 1.4)
	     }
	    	//reset = true
	break 
	
	case AT_USPECIAL :
	     if hbox.hbox_num == 2 {
	    	sound_play(asset_get("sfx_absa_kickhit"),false, noone, .9, 1.2)
	    	create_hitbox(AT_DSPECIAL,2,hit_player_obj.x,hit_player_obj.y - 40)
	     }
	    	//boi = true
	    	//reset = true
	break 
	
	case AT_FSPECIAL :
	     targeting = hit_player_obj
	     move_cooldown[AT_EXTRA_2] = 30
	    	//sound_play(asset_get("sfx_shovel_hit_med1"),false, noone, 1, .8)
	    	sound_play(asset_get("sfx_waterhit_heavy"),false, noone, 1, .9)
	    	boi = true
	    	//reset = true
	break 
	
	case AT_NSPECIAL :
	    if hbox.hbox_num == 2 {
	    	//boi = true
	    	create_hitbox(AT_DSPECIAL,2,hit_player_obj.x,hit_player_obj.y - 40)
	    	//reset = true
	    }
	break 
	
	case AT_JAB :
	    hsp /= 2
	    old_hsp /= 2
	    if hbox.hbox_num == 3 jabgrab = true 
	    if hbox.hbox_num >= 3 {
	        //boi = true
	        if hbox.hbox_num == 4 {
	        	create_hitbox(AT_DSPECIAL,2,hit_player_obj.x,hit_player_obj.y - 40)
	        }
	    }
	break 
	
	case AT_DTILT :
		sound_play(asset_get("sfx_waterhit_medium"),false, noone, .6, 1.5)
		//create_hitbox(AT_DSPECIAL,2,hit_player_obj.x,hit_player_obj.y - 40)
		boi = true
	break;
	
	case AT_DATTACK:
		sound_play(asset_get("sfx_shovel_hit_med1"),false, noone, .8, .95)
	    sound_play(asset_get("sfx_blow_heavy2"),false, noone, 1, 1.4)
		boi = true
	break;

	case AT_BAIR:
	     if hbox.hbox_num == 1 {
	     	boi = true
	    	sound_play(asset_get("sfx_waterhit_medium"),false, noone, .6, 1.4)
	     }
	     
	     if hbox.hbox_num == 2 {
	    	sound_play(asset_get("sfx_waterhit_heavy2"),false, noone, .8, .9)
	    	sound_play(asset_get("sfx_blow_heavy2"),false, noone, 1, 1.2)
	    	boi = true
	     }
	     
	     
	     //create_hitbox(AT_DSPECIAL,2,hit_player_obj.x,hit_player_obj.y - 40)
	break;
	
	case AT_FSTRONG :
		sound_play(asset_get("sfx_blow_heavy1"),false, noone, .8, .9)
		//boi = true
		create_hitbox(AT_DSPECIAL,2,hit_player_obj.x,hit_player_obj.y - 40)
	break;
	
	case AT_USTRONG :
		sound_play(asset_get("sfx_blow_heavy1"),false, noone, .8, .8)
		//boi = true
		create_hitbox(AT_DSPECIAL,2,hit_player_obj.x,hit_player_obj.y - 40)
	break;
	
	case AT_DSTRONG :
	     if hbox.hbox_num == 1 {
	    	sound_play(asset_get("sfx_absa_kickhit"),false, noone, 1, 1)
	     }
	     if hbox.hbox_num == 2 {
	    	sound_play(asset_get("sfx_waterhit_heavy1"),false, noone, .8, 1)
	     }
	     //boi = true
	     create_hitbox(AT_DSPECIAL,2,hit_player_obj.x,hit_player_obj.y - 40)
	break;
	
	case AT_DAIR :
	     if hbox.hbox_num == 1 {
	    	sound_play(asset_get("sfx_absa_kickhit"),false, noone, .9, 1.2)
	     }
	     if hbox.hbox_num == 2 {
	    	sound_play(asset_get("sfx_blow_heavy1"),false, noone, .8, 1)
	     }
	     //boi = true
	     create_hitbox(AT_DSPECIAL,2,hit_player_obj.x,hit_player_obj.y - 40)
	break;
}


with hit_player_obj { 
 	if "Tengia_pain_id" in self {
 		if Tengia_pain_time > 0 {
 		  with other {
 		      	take_damage(player,-1,ceil(hbox.damage * -0.666))
    			tengiaglow = 15
 		  fx_s = hit_fx_create( sprite_get( "fx_snap" ), min(30, floor(hitstop + 6)) );
 		  spawn_hit_fx(other.x,other.y - ceil(other.char_height) - 64, fx_s)
 		  sound_play(asset_get("sfx_boss_vortex_end"),false, noone, .6 + hbox.damage/20, max(.6, 2-(hitpause*hitpause)/120))
          boi = true
 		  }
 		}
 	}
}
 
 
if boi == true && move_cooldown[AT_EXTRA_1] == 0 {
	boi = false 
    
    
    with hit_player_obj {
    	
    	if "Tengia_pain_id" not in self {
    		Tengia_pain_id = other
    		Tengia_pain_time = 180
    		Tengia_pain = other.hbox.damage
    		//hitstop += 20
    		with other{
    			  	sound_play(asset_get("sfx_waterhit_heavy"),false, noone, .6 + hbox.damage/10, .7)
                    sound_play(asset_get("sfx_boss_vortex_end"),false, noone, .6 + hbox.damage/20, 1.2)
                    
                    fxd = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 30, fx_d)
                    fxd.depth = -15
    		}
    	} else {
    		//check for which Tengia
    		if Tengia_pain_id == other {
    			if Tengia_pain_time == 0 {
    		      //hitstop += 10
    			  with other{
    			  	sound_play(asset_get("sfx_waterhit_heavy"),false, noone, .6 + hbox.damage/10, .7)
                    sound_play(asset_get("sfx_boss_vortex_end"),false, noone, .6 + hbox.damage/20, 1.2)
                    
                    fxd = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 30, fx_d)
                    fxd.depth = -15
    			  }
    			  Tengia_pain_time = 180
    			}
    			if other.reset == true {
    				Tengia_pain_time = 180
    				other.reset = false
    			}
    			
    			Tengia_pain = 1
    		    //Tengia_pain += ceil(other.hbox.damage * 0.66)
    		    //take_damage(player, -1, ceil(other.hbox.damage * -0.66))
    		} else {
    		   take_damage(player, -1, ceil(Tengia_pain))
    		   with Tengia_pain_id {
    		   	take_damage(player, -1,ceil(other.Tengia_pain*-0.66))
    		   	fxd = spawn_hit_fx(x, y - 20, fx_d)
                fxd.depth = -15
    		   }
    		   Tengia_pain_id = other
    		   Tengia_pain = ceil(other.hbox.damage)
    		   Tengia_pain_time = 180
    		}
    		
    	}
    	
    	
    }
    
    
    
}
with hit_player_obj {
   if "Tengia_pain_time" in self {
    if Tengia_pain_time > 0 {
    	Tengia_pain_time = 180
    }
   }

}
//// Rune stuffs

if has_rune("K") {
	sound_play(asset_get("sfx_boss_vortex_end"),false, noone, .6 + hbox.damage/20, 1.4)
	take_damage(player,-1,floor(hbox.damage*-0.33))
}

if has_rune("M") && my_hitboxID.type == 1{
	sound_play(asset_get("sfx_blow_heavy1"),false, noone, 1, max(0.6,2 - (hitstop*hitstop/150)))
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, (old_hsp)*spr_dir - 2 + random_func(1,5,true) );
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, (old_vsp) - 2 + random_func(2,5,true));
create_hitbox(AT_DSPECIAL,2,hit_player_obj.x,hit_player_obj.y - 40)
}


with hit_player_obj {
	if string_count("donyoku", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0 {
			take_damage(player,-1,ceil(other.my_hitboxID.damage))
	}
}