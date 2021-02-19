//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DAIR){
	if (has_hit_player){
		hsp *= 0.97;
		can_fast_fall = true;
	}
}

if (attack == AT_NSPECIAL){
    if (window == 2 && window_timer == 1 && !hitpause){
	       nspecialused = 0;
    }
    if (was_parried){
        can_jump = false;
    }
    else if (window == 3 || (window == 2 && window_timer > 1)){
        can_jump = true;
    }
    //Old Code
    /*if (window == 1){
      if (window_timer == 1){
        nspecialcharged = false;
      }
      if (!special_down){
        window = 2;
        window_timer = 0;
        sound_play(asset_get("sfx_bubblepop"));
      }
      if (window_timer == 17){
        sound_play(asset_get("mfx_star"));
        nspecialcharged = true;
      }
    }*/
}

//Forward Special
if (attack == AT_FSPECIAL){
    //Basic setup
    if (window >= 4){
      can_move = false;
      can_wall_jump = true;
    }
  	if (window != 4){
    		can_fast_fall = false;
  	}
  	else{
    		move_cooldown[AT_FSPECIAL] = 30;
    		can_fast_fall = true;
    		if (window_timer == 26){
    	     whip_cancel = false;
    		}
  	}
    //Whip code
    if (window == 2){
        if (window_timer == 1){
          	point_hsp = 18 * spr_dir;
      			if ("ai_target" in self){ // ai
            		point_vsp = y-20>ai_target.y?-4:y+20<ai_target.y?4:0;
            }
      			else{
            		point_vsp = up_down?-4:down_down?4:0;
            }
        }
    }
    if (window == 3 && !whip_tether){
      	point_hsp -= 3 * spr_dir;
    	  if (window_timer == floor(get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH)/2)){
            point_vsp *= -1;
        }
      	hsp = 0;
      	vsp = 0;
    }
    if (point_hsp * spr_dir > 0){ //If whip is moving
      	if (!whip_tether && !whip_cancel && !has_hit_player){
        		if (place_meeting(fspecial_point[0], fspecial_point[1] + 45, pHurtBox) || place_meeting(fspecial_point[0], fspecial_point[1] + 40, pHurtBox) || place_meeting(fspecial_point[0], fspecial_point[1] + 50, pHurtBox) || place_meeting(fspecial_point[0] - 5, fspecial_point[1] + 45, pHurtBox) || place_meeting(fspecial_point[0] + 5, fspecial_point[1] + 45, pHurtBox)){
        		    create_hitbox(AT_FSPECIAL, 1, fspecial_point[0], fspecial_point[1] + 45);
            }
      	}
    }
    else{
      	if (window == 3 && window_timer < 16 && singleton_field != noone && point_distance(fspecial_point[0],fspecial_point[1] + 35,singleton_field.x,singleton_field.y)<=singleton_field.size){
      		  whip_tether = true;
      	}
    }
    if (whip_tether){
      	point_hsp = 0;
      	point_vsp = 0;
      	if (delay_pull <= 10){
        		if (special_pressed && !whip_cancel){
          			//whip_cancel = true;
          			//whip_cancel_has_hit = false;
        		}
      	}
    }
    if (whip_cancel && delay_pull > 10){
      	if (!whip_cancel_has_hit){
        		sound_play(asset_get("sfx_may_whip1"));
        		create_hitbox(AT_FSPECIAL, 2, hit_player_obj.x, hit_player_obj.y);
        		sound_play(sound_get("hittttttttttt"));
        		sound_play(sound_get("hittttttttttt"));
        		move_cooldown[AT_FSPECIAL] = 50;
        		window = 4;
        		window_timer = 0;
            whip_cancel_has_hit = true;
      	}
      	whip_tether = false;
      	hsp = clamp(hsp, -3, 3);
        vsp = clamp(vsp, -3, 3);
    }
    if (whip_tether && !hitpause && delay_pull > 10 && !whip_cancel){
    		var whip_dir = point_direction(x, y-char_height*.5, fspecial_point[0], fspecial_point[1]);
        var tether_speed = 12;
        hsp = lengthdir_x(tether_speed, whip_dir);
        vsp = lengthdir_y(tether_speed, whip_dir);
        if (!free && sign(vsp) == -1){ // So that Cupcake won't be glued to the ground
            y--;
        }
        fall_through = true;
        free = true;
        if (!free && sign(vsp) == -1){ // So that Cupcake won't be glued to the ground
            y--;
            free = true;
        }

        //stop when close
        if (point_distance(x, y-char_height*.5, fspecial_point[0], fspecial_point[1]) < 32){
          	set_state(PS_IDLE_AIR);
            if (whip_player){
  	            hsp = clamp(hsp, -3, 3);
                vsp = clamp(vsp, -3, 3);
            }
            destroy_hitboxes();
            move_cooldown[AT_FSPECIAL] = 50;
        }
    }
    if (window == 4 && window_timer == 25 && get_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY) == 0 && free && !whip_tether && !whip_player){
    	//set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 0);
    	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
    	set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
    } 
    //Window Progression
    if (window == 5 && window_timer == 15){
    	window = 6;
    	window_timer = 0;
    }
    if (window == 6 && window_timer == 4){
    	window = 7;
    	window_timer = 0;
    }
    ++delay_pull;
}

if (attack == AT_USPECIAL){
    can_move = false;
    can_wall_jump = true;
    can_fast_fall = false;
    fall_through = false;

  	if (window > 1 && window != 4){
    		if (left_pressed || left_down){
      			hsp -= 0.075;
    		}
    		if (right_pressed || right_down){
      			hsp += 0.075;
    		}
  	}
    if (has_hit_player && hit_player_obj.hitstun){
        if (window == 2){
            grab(12, -16, 4, 4);
        }
        else if (window == 3){
            grab(12, -16, 8, 6);
        }
        else if (window == 4){
            grab(24, -30, 2, 2);
        }
        if (y > room_height + 10){
            y = room_height + 10;
            vsp = 0;
        }
        if (window == 4){
            vsp = clamp(vsp, -10, 1);
        }
    }
  	if (window == 4 || window == 5){
    		hsp *= 0.99;
    		if (!has_hit_player || hit_player_obj.clone){
      			window = 8;
      			window_timer = 0;
    		}
  	}
  	if (((window > 3 && window < 5) || window > 5) && !free){
    		window = 7;
    		window_timer = 12;
  	}
  	if (window < 6){
    		fall_through = true;
  	}
}

if (attack == AT_DSPECIAL){
    switch (window)
    {
    case 1: // window 1 is 1 frame long, it checks if you're on the ground
        move_cooldown[AT_DSPECIAL] = 2;
        b_reversed = false;
        break;
    case 2:
    case 3:
        if (!free)
        {
            window = 7;
            window_timer = 0;
            spr_dir *= -1;
        }
        if (window_timer < 7){
           //invincible = true; // invince on startup
    	}
    	else if (window_timer > 12){
    		//can_attack = true;
    		//can_strong = true;
    		//can_shield = true;
    		//can_jump = true;
    	}
    case 4:
        if (!free)
        {
            window = 7;
            window_timer = 0;
            spr_dir *= -1;
        }
    case 5:
        vsp = clamp(vsp+1.3,-10,10.5);
    		if ("ai_target" in self) // ai
          	hsp += (x>ai_target.x?-0.1:0.1);
    		else
          	hsp += (left_down?-0.1:(right_down?0.1:0));
    		if (!free){
      			if (window_timer > 6){
        				window = 7;
        				window_timer = 0;
      			}
        }
        else{
        	if (window_timer == 20){
        		//window_timer = 2;
        	}
        }
        hsp = (clamp(hsp, -7, 7))
        if (has_hit_player) // boing if you hit player
        {
            window = 6;
            window_timer = 0;
            destroy_hitboxes();
            move_cooldown[AT_DSPECIAL] = 0; // you get your dspecial back if you land it
        }
        else if (window == 5 && window_timer == get_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH)) // last frame of window 5
            //spr_dir *= -1;
        break;
    case 6:
        if (window_timer == 1 && has_hit_player && hit_player_obj != noone){
            hsp = (left_down?-3:right_down?3:0); // bounce sends you left or right depending on arrow key is hit
        }
        break;
    case 7:
    	destroy_hitboxes();
    	break;
    default:
        break;
    }
    if (!was_parried & !hitstop && (window == 6 || window == 5)){
    	can_attack = true;
    	can_strong = true;
    	can_shield = true;
    	can_jump = true;
    	can_special = true;
    }
    if (window == 4 && window_timer == 7){
    	spr_dir *= -1;
    }
    if (window == 2 && window_timer < 4){// custom b reverse stuff (rivals doesnt like b reverse movement)
        if (!b_reversed && ((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down))){
            spr_dir *= -1;
            hsp *= -1;
            b_reversed = true;
        }
    }
    if (has_hit_player){
      	move_cooldown[AT_DSPECIAL] = 0;
    }
    else if (free){
      	move_cooldown[AT_DSPECIAL] = 9999;
    }
    else{
      	move_cooldown[AT_DSPECIAL] = 30;
    }
    if (window > 1 && state_timer % 5 == 0){
      	instance_create(x, y, "obj_article2");
    }
  	if ("ai_target" in self) // ai
      	fall_through = (y<ai_target.y);
  	else
    		fall_through = down_down; // hold down to dspec through platforms
        can_fast_fall = false;
        can_move = false;
        can_wall_jump = true;
}

if (attack == AT_UAIR){
  	if (window == 2 && has_hit_player && hit_player_obj.hitstun){
  		if (window_timer < 2){ // 2 frame window to fasfall cancel (same as Hikaru)
  	      move_cooldown[AT_UAIR] = 40;
  		}
  		else if (window_timer < 8){
  			   window_timer = 8;
  		}
  		else{
  			can_fast_fall = false;
  			vsp = 0;
  			hsp *= 0.8; // slow downnnnnn (when you hit them)
  		}
  		grab(0, -30, 10, 10);
      if (y > room_height + 10){
    			y = room_height + 10;
    			vsp = 0;
  		}
    }
  	if (window == 4 && has_hit_player && hit_player_obj.hitstun){
  		  move_cooldown[AT_UAIR] = 0;
  	}
}

if (attack == AT_DATTACK){
  	if (window == 2 && hsp == 0 && !hitpause){
  			window = 3;
  			window_timer = 0;
  	}
}

if (attack == AT_USTRONG){
  	if (window == 4 && window_timer < 8 && has_hit_player && hit_player_obj.hitstun){
        grab(0, -60, 10, 10);
    }
}

if (attack == AT_FSTRONG){
	if (window == 4 && has_hit_player && hit_player_obj.hitstun){
        grab(80, 10, 10, 10);
    }
}

if (attack == AT_TAUNT || attack == AT_TAUNT_2){
  	if (taunt_down && window == 1 && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)){
  		  window_timer = 0;
    }
    if (window == 2 && window_timer == 9 && practice){
    	 instance_create(floor(x + (spr_dir * 23)), floor(y)-64, "obj_article1");
    }
}


#define grab(xpos, ypos, xsmooth, ysmooth)

if (xsmooth != 0){
		hit_player_obj.x += ((x + spr_dir * xpos) - hit_player_obj.x)/xsmooth;
		hit_player_obj.x = clamp(hit_player_obj.x, -10, room_width + 10);
		x = clamp(x, -10, room_width + 10);
		hit_player_obj.hsp = 0;
		hit_player_obj.old_hsp = 0;
}
if (ysmooth != 0){
		hit_player_obj.y += ((y + ypos) - hit_player_obj.y)/ysmooth;
		hit_player_obj.y = clamp(hit_player_obj.y, -10, room_height);
		y = clamp(y, -10, room_height);
		hit_player_obj.vsp = 0;
		hit_player_obj.old_vsp = 0;
}
