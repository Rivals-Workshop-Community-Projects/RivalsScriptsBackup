//hit_player.gml
// Variable Definition
var hitmove = my_hitboxID.attack; // Checks the hitbox of the attack

print("Hitbox Num: " + string(my_hitboxID.hbox_num))

hit_player_obj.pen_can_det = my_hitboxID.no_other_hit;

switch(hitmove){
	case AT_JAB:
		switch(my_hitboxID.hbox_num){
			case 2:
				give_pen_install();
				break;
		}
		break;
    case AT_FTILT:
    	if my_hitboxID.hbox_num == 1{
    		penny_ftilt_two = true;
    		give_pen_install();
    	}
    	if my_hitboxID.hbox_num == 2{
	        // Charge
	        penny_ftilt_two = false;
	        apply_pen_status();
    	}
    	break;
    case AT_FSTRONG:
    case AT_USTRONG:
    	give_pen_install();
    	break;
	case AT_DAIR:
		switch(my_hitboxID.hbox_num){
			case 1:
				if !down_down or down_pressed{
					old_vsp = -1;
				}
				set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
				give_pen_install();
				break;
			case 2:
				apply_pen_status();
				break;
		}
		break;
    case AT_FSPECIAL:
    	switch(my_hitboxID.hbox_num){
    		case 1:
    			give_pen_install();
    			apply_pen_status();
    			break;
    		case 2:
    			apply_pen_status();
    			break;
    	}
    	break;
    case AT_USPECIAL_2:
		apply_pen_status();
        break;
    case AT_NSPECIAL:
    case AT_NSPECIAL_AIR:
        if (window == 2 and grabbedid == noone and !hit_player_obj.clone) {
            hit_player_obj.grabbed = 1;
            grabbedid = hit_player_obj;
            grabbedid.ungrab = 0;
        }
        if my_hitboxID.hbox_num > 1 and my_hitboxID.type != 2{
            give_pen_install();
            
        	if !shield_down{
        		/*
			    if instance_exists(mine){
			        instance_destroy(mine);
			        mine = noone;
			    }*/
			    
	        	if hit_player_obj.strapped_id != id and hit_player_obj.strapped_id != -4{
	        		hit_player_obj.strapped_id.mine_active = 0;
	                hit_player_obj.strapped_id.opponent_strapped = false;
	                hit_player_obj.penny_strapped = false;
	        	}
	            if hit_player_obj.penny_strapped != true{
	                mine_active = 0;
	                
	                if hit_player_obj.was_parried == false and hit_player_obj.state != PS_PRATLAND || hit_player_obj.state != PS_PRATFALL{
	                    cooldown_mine = cooldown_mine_max;
	                }
	                
	                with (oPlayer){
	                	if id != other.id{
	                		penny_strapped = false;
	                	}
	                }
	                
	                opponent_strapped = true;
	                hit_player_obj.penny_strapped = true;
	                hit_player_obj.strapped_id = id;
	                mine_player = hit_player_obj.id;
	                
	                sound_play(asset_get("sfx_ell_dspecial_stick"));
	            }
        	}
        }
        break;
    case AT_DSPECIAL:
        if my_hitboxID.hbox_num == 2{
        	apply_pen_status();
        }
    	if instance_exists(obj_article2){
    		with(obj_article2){
            	if (("pen_c4_charged" in self) and (player_id == other.id)){
            		if instance_exists(hbox_mine){
            			instance_destroy(hbox_mine);
            			pen_mine_hbox_dead = true;
            		}
            		state = 5;
            		state_timer = 0;
            	}
    		}
    	}
    	if hit_player_obj.strapped_id != id and hit_player_obj.strapped_id != -4{
    		hit_player_obj.strapped_id.mine_active = 0;
            hit_player_obj.strapped_id.opponent_strapped = false;
            hit_player_obj.penny_strapped = false;
    	}
        if hit_player_obj.penny_strapped != true{
            mine_active = 0;
            if hit_player_obj.was_parried == false and hit_player_obj.state != PS_PRATLAND || hit_player_obj.state != PS_PRATFALL{
                cooldown_mine = cooldown_mine_max;
            }
            opponent_strapped = false;
            
            with (oPlayer){
            	if id != other.id{
            		penny_strapped = false;
            	}
            }
            
            opponent_strapped = true;
            hit_player_obj.penny_strapped = true;
            hit_player_obj.strapped_id = id;
            mine_player = hit_player_obj.id;
            sound_play(asset_get("sfx_ell_dspecial_stick"));
        }
        break;
	case AT_DSPECIAL_2:
		switch(my_hitboxID.hbox_num){
			case 2:
				apply_pen_status();
				break;
		}
		break;
}
#define give_pen_install
if hit_player_obj.penny_is_charged or pen_mine_unstable and !penny_install{
	sound_play(asset_get("sfx_absa_concentrate"));
	penny_install = true;
	hit_player_obj.penny_is_charged = false;
	hit_player_obj.penny_charge_timer = 0;
	hit_player_obj.penny_charged_id = noone;
	pen_mine_unstable = false;
	hit_player_obj.outline_color = [0, 0, 0];
	resetcolours = 1;
}

#define apply_pen_status
if hit_player_obj.penny_strapped{
    if hit_player_obj.strapped_id.goboom == false{
        // Charge It
        if !hit_player_obj.strapped_id.pen_mine_unstable{
            hit_player_obj.strapped_id.pen_mine_unstable = true;
            hit_player_obj.strapped_id.mine_active = 0;
            if hit_player_obj.state != was_parried and hit_player_obj.strapped_id.cooldown_mine == 0{
                hit_player_obj.strapped_id.cooldown_mine = hit_player_obj.strapped_id.cooldown_mine_max / 4;
            }
        }
    }
} else {
    if hit_player_obj.penny_is_charged != true{
        hit_player_obj.penny_charged_id = id;
        hit_player_obj.penny_is_charged = true;
        hit_player_obj.penny_charge_timer = 0;
        with hit_player_obj{
            sound_play(asset_get("sfx_clairen_sword_activate"));
        }
    } else {
        hit_player_obj.penny_charge_timer = 0;
    }
}