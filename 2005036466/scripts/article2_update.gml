// State Machine
// 1 - Grounded
// 2 - Attached (OFF)
// 3 - Pause
// 4 - Exploding ( Grounded )
// 5 - Delete that shit
// 6 - Exploding ( Strapped )

state_timer++;

if hitstop == 0{
	if old_hsp != 0{
		hsp = floor(old_hsp);
		old_hsp = 0;
	}
	if old_vsp != 0{
		vsp = floor(old_vsp);
		old_vsp = 0;
	}
}

if get_player_color(player) == 17{
	if pen_c4_charged == 1 and state == 1{
		suppress_stage_music(0, 1);
		if is_laststock(){
			sfx_loop = sound_get("sfx_poolparty_loop_laststock")
		}
	}
}

if ((y > (room_height + 100)) || x > room_width || x < 0){
	instance_destroy(hbox_mine);
	instance_destroy();
}

if (free and (state == 1 or state == 2)){
	state = 0;
}

if state != 0{
	instance_destroy(hbox_mine);
	image_angle = 0;
}

if state != 1{
	sound_stop(sfx_loop);
	charge_loop_started = false;
}

switch(state){
	case 7:
		// planted
		is_hittable = false;
		sprite_index = spr_plant;
		pen_c4_interact(1);
		image_index = state_timer / 2;
		
		if state_timer == 11{
			sound_play(sfx_active);
			state = 1;
			state_timer = 0;
		}
		break;
	case 0:
		is_hittable = true;
		sprite_index = asset_get("empty_sprite");
		image_index = get_gameplay_time() *.15;
		
		pen_c4_interact(0);
		
		//image_angle = point_direction(x, y, x + hsp, y + vsp) + 90;
		
		if !instance_exists(hbox_mine) and !pen_mine_hbox_dead{
			if !pen_c4_charged{
				hbox_mine = create_hitbox(AT_DSPECIAL, 1, x, y);
				hbox_mine.orig_player_id = penny_orig_owner;
				hbox_mine.player_id = player_id;
			} else {
				hbox_mine = create_hitbox(AT_DSPECIAL, 2, x, y);
				hbox_mine.orig_player_id = penny_orig_owner;
				hbox_mine.player_id = player_id;
			}
		} else {
			if instance_exists(hbox_mine){
				hbox_mine.x = floor(x + hsp);
				hbox_mine.y = floor(y + vsp);
			}
		}
		
		if vsp < 12{
			vsp += gravity_mine;
		}
		if hsp > 0.08{
			hsp = round(hsp - air_friction_mine);
		}
		if hsp < -0.08{
			hsp = round(hsp + air_friction_mine);
		}
		if hsp == 0.08 or hsp == -0.08{
			hsp = 0;
		}
		
		if !free{
			if pen_mine_parried{
				state = 5;
				state_timer = 0;
				image_angle = 0;
			}
			sound_play(sfx_ground);
			hsp = 0;
			vsp = 0;
			state = 7;
			state_timer = 0;
			image_angle = 0;
			pen_mine_hbox_dead = false;
		}
		break;
    // Grounded
    case 1:
    	is_hittable = false;
    	unbashable = 0;
        sprite_index = spr_ground;
        if get_player_color(player) == 17{
        	if !pen_c4_charged{
        		image_index = 0;
        	} else {
        		image_index = get_gameplay_time() / 6;
        	}
        } else {
        	image_index = get_gameplay_time() *.1;
        }
        
        if !charge_loop_started and pen_c4_charged == 1{
        	if get_player_color(player) == 17{
        		sound_play(sfx_loop, true, 0);
        	} else {
        		sound_play(sfx_loop, true);
        	}
        	charge_loop_started = true;
        }
        
    	if hsp != 0{
    		hsp = 0;
    	}
        
		pen_c4_interact(2);
        
    	with oPlayer{
    		if id != other.player_id{
	    		if ((penny_is_charged or (state == PS_HITSTUN or state == PS_HITSTUN_LAND)) and state != PS_WRAPPED and state != PS_FROZEN and pen_can_det == 0){
	    			switch(other.pen_c4_charged){
	    				case 0:
			    			if point_distance(x, y, other.x + other.hsp, other.y + other.vsp) <= 60{
			    				other.state = 6;
			    				other.state_timer = 0;
			    			}
	    					break;
	    				case 1:
			    			if point_distance(x, y, other.x + other.hsp, other.y + other.vsp) <= 80{
			    				other.state = 8;
			    				other.state_timer = 0;
			    			}
	    					break;
	    			}
	    		}
    		}
    	}
        
        break;
    case 2:
        state = 1;
        state_timer = 0;
        break;
    case 3:
    	is_hittable = false;
    	sprite_index = spr_det;
    	switch(state_timer){
    		case 0:
    		case 1:
    		case 2:
    			image_index = 0;
    			break;
    		case 13:
    		case 14:
    			image_index = 2;
    			break;
    		case 15:
    		case 16:
    			image_index = 3;
    			break;
    		default:
    			image_index = 1;
    			break;
    	}
        if state_timer == 16{
        	state = 4;
        	state_timer = 0;
        }
        break;
    case 4:
    	is_hittable = false;
    	switch(pen_c4_charged){
    		case 0:
    			spawn_hit_fx(x, y - 16, 143);
    			sound_play(sfx_explo);
    			create_hitbox(AT_DSPECIAL_2, 1, x, y - 16);
    			state = 5;
    			break;
    		case 1:
				spawn_hit_fx(x, y - 16, vfx_dspecchargeexplo);
				sound_play(sfx_char_explo);
				create_hitbox(AT_DSPECIAL_2, 2, x, y - 16);
				state = 5;
    			break;
    	}
        break;
    
    // Deleting That Shit
    case 5:
    	is_hittable = false;
        instance_destroy();
        break;
    case 6: // Uncharged
    	is_hittable = false;
    	sprite_index = spr_det;
    	switch(state_timer){
    		case 0:
    			image_index = 0;
    			break;
    		case 1:
    		case 2:
    		case 3:
    			image_index = 1;
    			break;
    		case 4:
    			image_index = 2;
    			break;
    		case 5:
    			image_index = 3;
    			break;
    	}
        if state_timer == 5{
        	state = 4;
        	state_timer = 0;
        }
        break;
    case 8: // Charged
    	is_hittable = false;
    	sprite_index = spr_det;
    	switch(state_timer){
    		case 0:
    			image_index = 0;
    			break;
    		case 1:
    		case 2:
    			image_index = 1;
    			break;
    		case 3:
    		case 4:
    			image_index = 2;
    			break;
    		case 5:
    		case 6:
    			image_index = 3;
    			break;
    	}
        if state_timer == 6{
        	state = 4;
        	state_timer = 0;
        }
        break;
}
#define pen_c4_interact(toggle)
var detected_object = instance_place(x, y, pHitBox);

if (detected_object != noone and detected_object.player_id.url == player_id.url){
	if (detected_object.attack == AT_FSPECIAL or ((detected_object.attack == AT_FTILT or detected_object.attack == AT_DAIR) and detected_object.hbox_num == 2)){
		if !charge_sound_played{
			sound_play(sfx_charge);
			switch get_player_color(player){
				case 17:
					sound_play(asset_get("sfx_bite"))
					break;
			}
			charge_sound_played = true;
		}
		pen_c4_charged = 1;
		if detected_object.player_id != player_id{
			player_id = detected_object.player_id;
			if detected_object.player_id == penny_orig_owner{
				penny_orig_owner.mine = penny_orig_mine_id;
			}
			penny_orig_owner.mine = noone;
		}
	}
	/*
	if toggle == 1 or toggle == 2{
		if (pHitBox.player_id.penny_install != true and (((pHitBox.attack == AT_NSPECIAL or pHitBox.attack == AT_FTILT or pHitBox.attack == AT_DAIR) and pHitBox.hbox_num == 1) or
		(pHitBox.attack == AT_JAB and pHitBox.hbox_num == 2) or (pHitBox.attack == AT_USTRONG or pHitBox.attack == AT_FSTRONG))) and pen_c4_charged{
			with pHitBox.player_id{
				penny_install = true;
				resetcolours = 1;
				sound_play(asset_get("sfx_absa_concentrate"));
			}
			pen_c4_charged = 0;
			sound_stop(sfx_loop);
			charge_loop_started = false;
		}
	}*/
	
	if toggle == 2{
		if (detected_object.attack == AT_DTILT){
			hsp = 2 * detected_object.player_id.spr_dir;
			vsp = -12;
			sound_play(detected_object.sound_effect);
			if detected_object.player_id != player_id{
    			player_id = detected_object.player_id;
    			if detected_object.player_id == penny_orig_owner{
    				penny_orig_owner.mine = penny_orig_mine_id;
    			}
    			penny_orig_owner.mine = noone;
			}
		}
	}
} else {
	charge_sound_played = false;
}