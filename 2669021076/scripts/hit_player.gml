// hit_player is a script that runs code when you hit an enemy player.

var hb = my_hitboxID;
var hit_pid = hit_player_obj;

switch hb.attack {
    // strongs
    case AT_FSTRONG: case AT_USTRONG: case AT_DSTRONG:
        claws_health -= 55;
        break;
        
        
    // claw aerials
    case AT_FAIR: case AT_UAIR: case AT_BAIR:
        claws_health -= 30;
        break;
        
        
    // pogo dair lol
    case AT_DAIR:
    	old_vsp = -7;
    	break;
        
    // CRABHAMMER
    case AT_NSPECIAL:
    	claws_health -= 55;
    	break;
        
    // CRABHAMMER - charged
    case AT_NTHROW:
        if window == 2 { grab_player(); }
        break;
    
    // VICE GRIP
    case AT_FSPECIAL:
        claws_health -= 30;
    	grab_player();
    	//set_window_value(attack, 2, AG_WINDOW_HSPEED, 0);
        break;
        
    
    // BUBBLEBEAM
    case AT_USPECIAL:
        if hb.type == 2 {
            // destroy the bubble that hit
            hb.destroyed = true;
            
            /* RIP internal lockout system -- does not play nice w/ secondary player objects :(
            
            // set lockout
            variable_instance_set(hit_pid, `bubble_lockout_${player}`, 5);
            
            // tell all bubbles to chill tf out bro
            with pHitBox {
                if orig_player == other.player && attack == AT_USPECIAL && hbox_num == 2 {
                    can_hit[hit_pid.player] = 0;
                }
            }
            
            with hit_pid {
                // clear air dodge buffer? (apparently orcane's bubbles do this)
                if !free { clear_button_buffer(PC_SHIELD_PRESSED); }
                
                // deal with forsburn clone
                if clone { initial_invince = 2; }
            }
            */
        }
        break;
    
}

claws_health = clamp(claws_health, 0, 100);



#define grab_player()

if (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && hit_player_obj.clone == false {
	
	var grabbed_struct = {
	    pid : hit_player_obj,
	    relative_x : hit_player_obj.x - x,
	    relative_y : hit_player_obj.y - y
	};
	
	array_push(grabbed, grabbed_struct);
}
