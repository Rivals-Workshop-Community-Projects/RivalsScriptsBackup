//update

enum ROCK{
    INIT,
    MOVE,
    DROP,
    IDLE_1,
    IDLE_2,
    RETURN,
    KABOOM,
    THROW
}

glow_timer+= glow_phase;
glow_phase =  0 < glow_timer < glow_time ? glow_phase : -glow_phase;

//rock animation stuffs
rock_anim_frame = rock_anim_frame <= rock_anim_max ? rock_anim_frame + rock_anim_spd : 0.0;
image_index = floor(rock_anim_frame);
if(rock_state != ROCK.KABOOM and rock_state != ROCK.MOVE and rock_state != ROCK.IDLE_1){
	with(pHitBox){
		if(place_meeting(x, y, other) and (player_id.free or type == 2 or !player_id.free and player_id.y > other.y) and other.rock_state != ROCK.KABOOM){
			if(!(player_id == other.player_id and attack == AT_DAIR)){
			if(type != 2){
			player_id.hitpause = true;
			player_id.hitstop = floor(hitpause * 1.3);
			player_id.old_vsp = player_id.vsp;
			player_id.old_hsp = player_id.hsp;
			}
			has_hit = true;
			sound_play(sound_effect);
			sound_play(asset_get("sfx_kragg_rock_shatter"));
			other.hold_timer = 0;
			other.rock_state = ROCK.KABOOM;
			}

		}
	}
}
switch rock_state{
    //setes up movement before the timer starts ticking
    case ROCK.INIT:
        rock_move_timer_max = max(8, min(point_distance(x,y, rock_goal_x, rock_goal_y)/34, 24));
        rock_init_x = x;
        rock_init_y = y;
        rock_y_offset = -(abs(rock_init_x - rock_goal_x))/10;
        rock_apply_ymod = y < rock_goal_y;
        rock_state = ROCK.MOVE;
        rock_move_timer = 0;
        
        break;
    case ROCK.MOVE:
        //move rock while timer ticks, apply smoothing in both X and Y
        //Y smoothing should vary depending of the rock is above or below tenshi
        if(rock_move_timer <= rock_move_timer_max){
            mask_index = sprite_get("projectile_invis")
            var timer_ratio = rock_move_timer/rock_move_timer_max
            var smooth = smoothstep(timer_ratio);
            var squared = squarestep(timer_ratio);
            //var new_y = rock_apply_ymod ? lerp(y, rock_goal_y+10, timer_ratio) : (squared*rock_goal_y) + (rock_init_y * (1-squared));
            var new_x = (smooth*rock_goal_x) + (rock_init_x * (1-smooth));
            smooth = smooth <.5 ? smooth*2 : 2*(1-smooth);
            //var ymod = (smooth * (rock_y_offset)) + (0 * (1-smooth));
			if(!rock_first_move){
				y = round(lerp(y, rock_goal_y + min((200*(abs(rock_init_x-rock_goal_x)/600))*(1-timer_ratio), 200), timer_ratio));
			} else {
				if(timer_ratio <= .5){
					y = round(lerp(y, rock_goal_y - 200*(1-timer_ratio*2), timer_ratio*(2)));
				} else {
					y = round(lerp(y, rock_goal_y + 50*(1-(timer_ratio-.5)*2), (timer_ratio-.5)*2));
					//print_debug((timer_ratio-.5)*2)
				}

			}
            //x = round(ease_expoInOut(x, player_id.x, rock_move_timer, rock_move_timer_max));
            x = round(new_x);
        } else {
        	if(player_id.attack == AT_USPECIAL and player_id.free and (player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND)){
        		y = round(lerp(y, player_id.y, .6))
        		x = round(lerp(x, player_id.x, .6))
        		hsp = 0;
			    vsp = 0;
        	} else {
        		mask_index = sprite_get("rock_collision");
	            hsp = 0;
			    vsp = 0;
			    hold_timer = 0;
			    rock_state = ROCK.IDLE_1;
			    rock_first_move = false;
        	}

        }
        if(rock_move_timer == 1){
        	sound_play(sound_get("rock_shift"));
        } 
        rock_move_timer++;
        break;
    //for when the rock doesnt fall down after using up B
    case ROCK.IDLE_1:
        hold_timer++;
        if(hold_timer > hold_time){
        	float_y = y;
            rock_state = ROCK.IDLE_2;
            sound_play(asset_get("sfx_kragg_roll_land"), false, noone, .3);
            hold_timer = 0;
        }
        if(fast_fire){
    		player_id.can_move_rock = false;
            player_id.rock_proj = instance_create(x, y+20, "obj_article3");
			player_id.rock_proj.image_index = image_index;
            player_id.tenshi_uspecial_rock = noone;
    		player_id.rock_proj.image_angle = fast_fire_angle;
    		instance_destroy(self);
    	}
        break;
    //for when the rock falls slowly while you stand on it
    case ROCK.IDLE_2:
    	//I'm making the rock bob in this state when the player isn't standing on it
    	//to do that and make it look right I need to round out sub pixel movement
    	//so the player can actually interact with the platform properly
    	
    	//set up the sub pixel movement
    	vsp = 0;
    	float_y += ease_quadInOut(-float_phase, float_phase, float_timer, float_time)/4;
    	float_timer++;
    	if(float_timer > float_time){
    		float_phase = -float_phase;
    		float_timer = 0;
    	}
    	//set vsp if player is standing on rock so it falls when a player is on it
        with oPlayer{
            if(place_meeting(x, y+4, other) and other.y >= y){
            	other.float_y = other.y;
                other.vsp = 1;
            }
        }
        //only round subpixel motion if the rock isn't moving, ie no player is standing on it
        if(vsp == 0){
        	y = floor(float_y);
        }
        //if hitting ground return to sky
        if(collision_line(x, y, x, y+3, asset_get("par_block"), false, true)){
			rock_state = ROCK.RETURN;
		}
        break;
    //for when you send the rock do the ground with D Special or F Special
    case ROCK.DROP:
        if(y > room_height){
    		player_id.tenshi_uspecial_rock = noone;
    		instance_destroy(self);
    	} else if(collision_line(x, y, x, y+vsp+20, asset_get("par_block"), false, true)){
			vsp = 0;
    		
			rock_state = ROCK.KABOOM;
		} else {
    		vsp += .6;
		}
    	
        break;
    case ROCK.RETURN:
    	vsp = 1;
    	if(y > room_height){
    		player_id.tenshi_uspecial_rock = noone;
    		instance_destroy(self);
    	}
    	break;
    case ROCK.KABOOM:
    		vsp = 0;
    		hsp = 0;
			hold_timer++;
			if(hold_timer > 8){
				with(oPlayer){
					if(place_meeting(x, y+5, other) and !free and other.y >= y){
						free = true;
						state = PS_PRATFALL;
					}	
				}
    	    	player_id.tenshi_uspecial_rock = noone;
    			instance_destroy(self);
			}
    	break;
}


#define smoothstep(i)
{
    return (i*i*(3-2*i));
}

#define squarestep(i)
{
    return (i * i);
}

