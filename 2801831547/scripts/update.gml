if(get_player_color(player) == 22){
	init_shader();
	var cur_time = get_gameplay_time();
	rainbow_color = make_colour_hsv((cur_time/12)%255, 185, 125); //default rainbow
	rainbow_color2 = make_colour_hsv(((cur_time/12))%255, 185, 205); //default shifed halfway through cycle
	rainbow_color3 = make_colour_hsv(((cur_time/12))%255, 185, 50); //default shifed halfway through cycle
	dodge_trail_color = rainbow_color;
}

if(!free){
    uspecial_pratfall_go_brr = false;
    nspecial_used = false;
}
if(state == PS_JUMPSQUAT and down_down and special_pressed){
    set_attack(AT_DSPECIAL);
}



if(state == PS_WALL_JUMP){
	invincible = false;
	with(wisp){
		if(place_meeting(x, y, other)){
			
			if(other.special_down or other.jump_down){
				other.free = true;
				other.clinging = true;
				other.vsp = 0;
				other.hsp = 0;
			    if (!other.joy_pad_idle){
		            hsp += lengthdir_x(1, other.joy_dir);
		            vsp += lengthdir_y(1, other.joy_dir);
		        } else {
		        	vsp-=1;
		            hsp *= .6;
		            vsp *= .6;
		        }
		        var fly_dir = point_direction(0,0,hsp,vsp);
		        var fly_dist = point_distance(0,0,hsp,vsp);
		        var max_speed = 9;
		        if (fly_dist > max_speed){
		            hsp = lengthdir_x(max_speed, fly_dir);
		            vsp = lengthdir_y(max_speed, fly_dir);
		        }
		        other.x = x+other.spr_dir*26;
			    other.y = y+12;
			    other.hsp = hsp;
			    other.vsp = vsp;
				other.can_attack = true;
				if(other.state_timer == 30){
					other.set_extra = true;
					
				}
			}
		}
	}
}
if(set_extra){
	set_extra = false;
	clinging = false;
	set_attack(AT_EXTRA_2);
}

if(state == PS_AIR_DODGE){
    if(state_timer == 0){
        for(var i = 0; i < dodge_trail_size; i++){
			dodge_trail[i].life = 0;
		}
    }
    
    for(var i = 0; i < dodge_trail_size; i++){
		dodge_trail[i].life--;
	}
    
	var current_trail = dodge_trail[floor(state_timer/4)%8];
	if(current_trail.life <= 0){
		current_trail.x = x;
		current_trail.y = y;
		current_trail.sprite_index = sprite_index;
		current_trail.image_index = image_index;
		current_trail.spr_dir = spr_dir;
		
		//if we walk we make the trail last longer so it looks cooler
			current_trail.life = 16;
	}
    
}

//crouch hitfx
if(state == PS_CROUCH and state_timer == 3){
    var poof = spawn_hit_fx(x, y, hfx_crouch);
    sound_play(sound_get("poof"));
    sound_stop(sound_get("meow"));
    if(random_func(0, 100, true) < 30){
        sound_play(sound_get("meow"));
    }
    poof.depth = depth-1;
    crouching_state = 1;
    prev_crouching_state = 1;
    prev_image_index = 0;
    crouching_loop_count = 0;
}

if(state == PS_CROUCH){

    crouching_state_timer++;
    if(right_down){
        crouching_loop_count = 0;
        spr_dir = 1;
        if(hsp < 2)
        	hsp = 2;
        crouching_state = 4;
    } else if (left_down){
        crouching_loop_count = 0;
        spr_dir = -1;
        if(hsp > -2)
	        hsp = -2;
        crouching_state = 4;
    } else if(((crouching_state == 1 and image_index >= 8) or (crouching_state == 2 and crouching_state_timer >= 88) or (crouching_state == 3 and crouching_state_timer >= 64)) and prev_image_index != image_index){
        crouching_loop_count++;
        prev_crouching_state = crouching_state;
        if(crouching_state == 1){
            var rng = random_func(0, 10, true);
            if(rng < 4){
                crouching_state = 1;
            } else if (rng < 7){
                crouching_state = 2;
            } else {
                crouching_state = 3;
            }
        } else {
            crouching_state = 1;
        }
        image_index = 0;
        crouching_state_timer = 0;
    } else if (crouching_state == 4 and !(left_down or right_down)){
        crouching_state = 1;
        image_index = 0;
        crouching_state_timer = 0;
    }
    if(crouching_loop_count > 6 and crouching_state != 5){
        crouching_state = 5;
        image_index = 0;
        crouching_state_timer = 0;
    } 
    
    if(crouching_state == 5 and crouching_state_timer == 20){
        take_damage(player, player, -1);
    }

    prev_image_index = image_index;

}



//diminishing_multi_jumps();
//accelerator_run();



#define diminishing_multi_jumps()
//reduce height gain based on jumps used
switch(djumps){
case 0:
    djump_speed = 1;
    break;
case 1:
    djump_speed = 0;
    break;
case 2:
    djump_speed = -1;
    break;
case 3:
    djump_speed = -2;
    break;
}

#define accelerator_run()
if(state == PS_DASH){
    dash_speed = clamp(dash_speed*1.01, 0, 10);
    dash_turn_time = clamp(dash_turn_time*1.01, 0, 30);
    dash_stop_percent = clamp(dash_stop_percent*1.01, 0, .9);
} else {
    if(state!= PS_DASH_STOP and state != PS_DASH_TURN){
        dash_speed = 5;
        dash_turn_time = 10;
        dash_stop_percent = .35;
    }
}

