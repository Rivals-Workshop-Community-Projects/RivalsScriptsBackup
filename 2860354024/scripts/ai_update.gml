
if (tab_dummy_master != noone){


excitement = 0;
ammo = 3;



if (instance_exists(tablet_article))
instance_destroy(tablet_article);
    
if (!tab_demo){
    
    
    // x = tab_dummy_master.x;
    // y = tab_dummy_master.y;
    
    go_through = true;
    visible = true;
    mask_index = asset_get("empty_sprite");
    
    state = PS_DEAD;


    
}else if (ai_target.player != player){
    
    tab_dummy_master.depth = tab_dummy_master.tablet_article.depth + 1;
    tab_dummy_master.force_depth = true;
    tab_dummy_master.go_through = true;
    
    // var nearest_dist = -1;
    // var nearest_player = noone;
    if (!tab_demo_start){
        
        
        var stage_top = get_stage_data( SD_Y_POS );
        var stage_mid = ((room_width - get_stage_data( SD_X_POS )) + get_stage_data( SD_X_POS ))/2 ;
        
        y = stage_top;
        x = stage_mid;
        
        hitpause = false;
        
        go_through = false;
        visible = true;
        mask_index = tab_mask;
        tab_demo_start = true;
        tab_delay_demo = 20;
        spr_dir = 1;
        
        invincible = false;
        set_state(PS_CROUCH);

        hsp = 0;
        vsp = 0;
        
        // with (oPlayer){
        // 	if (player != other.player && get_player_team( player ) != get_player_team( other.player )){
        // 			if (abs(other.x - x) < nearest_dist) || (nearest_dist == -1) {
        // 			nearest_player = id;
        // 			nearest_dist = point_distance(other.x, other.y, x, y);
        // 			}
        // 	}
        // }
        
        tab_victim = ai_target;
        
        if (get_num_hitboxes(tab_demo_attack) != 0 ){
        with (tab_victim)
        set_state(PS_PRATFALL);
        }
        
        tab_victim_damage = get_player_damage( tab_victim.player );
        tab_victim.free = false;
        tab_victim.spr_dir = -1;
        tab_victim.vsp = 0;
        tab_victim.hsp = 0;
        
        
        switch (tab_demo_attack){
            
            case AT_DSPECIAL:
                tab_victim.x = x + 20;
                tab_victim.y = y;

                free = false;
            break;
            
            case AT_DATTACK:
            case AT_FSPECIAL:
                tab_victim.x = x + 100;
                tab_victim.y = y;

                free = false;
            break;
            
            case AT_NAIR:
				tab_victim.x = x + 25;
                tab_victim.y = y;
                
                free = true;
                y -= 30;
                vsp = -6;
            break;
            
            case AT_BAIR:
                tab_victim.x = x - 80;
                tab_victim.y = y;
                
                free = true;
                y -= 40;
                vsp = -6;
            break;
            
            case AT_DSTRONG_2:
            case AT_DAIR:
                free = true;
                y -= 70;
                vsp = -6;
                
                
                
                tab_victim.x = x;
                tab_victim.y = stage_top;
            
            break;
            
            case AT_USTRONG_2:
                free = true;
                y -= 60;
                vsp = -6;
                
                
                tab_victim.x = x + 42;
                tab_victim.y = y - 66;
            
            break;
            
            case AT_UAIR:
                free = true;
                y -= 60;
                vsp = -6;
                
                
                tab_victim.x = x + 30;
                tab_victim.y = y - 40;
            
            break;
            
            case AT_FAIR:
                tab_victim.x = x + 80;
                tab_victim.y = y;
                
                free = true;
                y -= 30;
                vsp = -6;
            break;
            
            case AT_FSTRONG_2:
                free = true;
                y -= 30;
                vsp = -6;
                
                tab_victim.x = x + 80;
                tab_victim.y = y-16;
                

            break;
            
            case AT_USPECIAL:
                free = false;
                tab_victim.x = x + 80;
                tab_victim.y = y - 80;
            break;
            
            case AT_USTRONG:
                tab_victim.x = x + 30;
                tab_victim.y = y;
                free = false;
            break;
            
            default:
            
            	if (get_num_hitboxes(tab_demo_attack) != 0 ){
                tab_victim.x = x + (get_hitbox_value(tab_demo_attack, 1, HG_HITBOX_X) + (get_hitbox_value(tab_demo_attack, 1, HG_WIDTH) * 0.50) );
                tab_victim.y = y;
            	}
				
                free = false;
            
            break;
            
        }
        tab_victim.hitpause = tab_delay_demo;
        tab_victim.hitstop = true;

        
    }
    if (tab_victim.state == PS_PRATLAND)
    tab_victim.state = PS_IDLE;
    
    tab_delay_demo--;
    
    tab_delay_demo = clamp(tab_delay_demo,-1,20);
    
    if (tab_delay_demo == 0)
        set_attack(tab_demo_attack);
    
    
    if (state != PS_ATTACK_AIR || state != PS_ATTACK_GROUND){
        switch (attack){
            case AT_JAB:
                if (window == 3)
                attack_pressed = true;
            break;
        }
    }

    if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && state != PS_LANDING_LAG) && state_timer > 20 && tab_delay_demo == -1{
        tab_demo = false;
        tab_demo_start = false;
        set_player_damage( tab_victim.player , tab_victim_damage );
        tab_delay_demo = 0;
    }
    
    //dont die pls
    var left_blastzone = get_stage_data( SD_X_POS ) - get_stage_data( SD_SIDE_BLASTZONE );
    var right_blastzone = (room_width - get_stage_data( SD_X_POS )) + get_stage_data( SD_SIDE_BLASTZONE );
    
    var top_blastzone = get_stage_data( SD_Y_POS ) - get_stage_data( SD_TOP_BLASTZONE );
    var bottom_blastzone = get_stage_data( SD_Y_POS ) + get_stage_data( SD_BOTTOM_BLASTZONE );
    
	x = clamp(x,left_blastzone + 100, right_blastzone - 100);
	y = clamp(y,top_blastzone + 100, bottom_blastzone - 100);
    
    
}else
{
	    tab_demo = false;
        tab_demo_start = false;
        tab_delay_demo = 0;
}




}
else{
	
	if (ai_recovering)
	{
		//distance from ledge left and right
		var stage_top = get_stage_data( SD_Y_POS );
		var dfl_r = (room_width - get_stage_data(SD_X_POS)) - x;
    	var dfl_l = (room_width - get_stage_data(SD_X_POS) - get_stage_data(SD_WIDTH)) - x  ;
		var stage_mid = ((room_width - get_stage_data( SD_X_POS )) + get_stage_data( SD_X_POS ))/2 ;
		
        if (state == PS_IDLE_AIR || (state == PS_ATTACK_AIR && attack == AT_USPECIAL && window == 1 && window_timer == 0)){
                
                if (stage_mid < x )
	            spr_dir = -1;
	            else if ( stage_mid > x )
	            spr_dir = 1;

                if (y < stage_top + 20) && ((dfl_r < -100 ) || ( dfl_l > 100 )){
                	set_state(PS_ATTACK_AIR);
	                attack = AT_FSPECIAL;
                }
                else if (move_cooldown[AT_NSPECIAL] == 0){
	                set_state(PS_ATTACK_AIR);
	                attack = AT_NSPECIAL;
               }
                
            
        }
		
		
	}
	
	if (get_training_cpu_action() == CPU_FIGHT){
		
		var target_dist = abs(x - ai_target.x);
		var target_dist_y = ai_target.y - y;
		
		//aggro
		if (target_dist > 70) && (state_cat != SC_HITSTUN){
			if (x < ai_target.x){
				right_pressed = true;
				right_down = true;
			}
			if (x > ai_target.x){
				right_pressed = true;
				left_down = true;
			}
		}
	
		//wavedash back
		var rand_wave = random_func( 1, 30, true );
		
		if (rand_wave == 1 && (state == PS_DASH || state == PS_DASH_START)){
			joy_pad_idle = false;
			
			if (spr_dir == 1)
			joy_dir = 180;
			if (spr_dir == -1)
			joy_dir = 0;
			
			set_state(PS_AIR_DODGE);
		}
		
		
		if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
			
			
			switch (attack){
				case AT_DSPECIAL:
					if (ammo > 1 && window == 1 && window_timer == 0){
						if (state == PS_ATTACK_AIR){
							attack = AT_FAIR;
						}
						if (state == PS_ATTACK_GROUND){
							attack = AT_FTILT;
						}
					}	
				break;
				
				case AT_DATTACK:
				case AT_UTILT:
				case AT_DSTRONG:
					if (has_hit_player){
						jump_pressed = true;
						ai_full_hop = true;
					}
				break;
				
			}
			
		}
		
		if (state == PS_JUMPSQUAT){
			if (ai_full_hop){
				jump_down = true;
			}
		}
		
		if (state == PS_IDLE_AIR || state == PS_IDLE){
			ai_full_hop = false;
		}
		
		if (ai_target.state_cat == SC_HITSTUN) && (!(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) || get_window_value(attack, window, AG_WINDOW_IASA) != 0){
			
			attack_pressed = true;
			jump_pressed = true;
			
	
	
			
			if (target_dist < 50) && (target_dist_y < 20 && target_dist_y > -20){
				attack = AT_FAIR;
			}
			
			if (target_dist < 30) && (target_dist_y < 20 && target_dist_y > -20){
				attack = AT_UAIR;
			}
			
			if (target_dist < 30) && (target_dist_y < 40 && target_dist_y > -10){
				attack = AT_DAIR;
			}
			
		}
		
	}
	
	
}









