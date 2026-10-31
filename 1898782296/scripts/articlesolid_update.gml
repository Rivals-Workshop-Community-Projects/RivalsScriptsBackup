//Stilts article
state_timer++;
//print(state)
switch(state) {
	case 0: //spawn
		if(sg_window > 1){
			state = 1;
			state_timer = 0;
			left_pressed = false;
			right_pressed = false;
		} else {
			image_yscale = height_multiplier*sg_timer*-1 - 2;
		}
		if(position_meeting(x, y + 8 + vsp, player_id.carpet) && player_id.carpet.platform_type == 0){
			y = player_id.carpet.y
		}
		//vsp = 2;
	break;
	case 1: //idle & detect player input
		hsp = 0;
		if(front_step = true){
			image_index = 3
		} else {
			image_index = 7;
		}
		if(left_pressed or right_pressed and state_timer >=5){
			state = 2;
			state_timer = 0;
		}
	break;
	case 2: //go
		if(left_pressed){
			hsp -= step_speed;
			if(spr_dir = 1){
				image_index -= 3/25
			} else {
				image_index += 3/25
			}
		} else if(right_pressed){
			hsp += step_speed;
			if(spr_dir = -1){
				image_index -= 3/25
			} else {
				image_index += 3/25
			}
		}
		if(image_index <= 3){
			image_index = 10.99;
		}
		if(image_index >= 3.1 and image_index < 4){
			image_index = 4;
		}
		if(image_index >= 7.1 and image_index < 8){
			image_index = 8;
		}
		//print(state_timer)
		if(state_timer == 25){
			left_pressed = false;
			right_pressed = false;
			state = 1;
			state_timer = 0;
			sound_play(asset_get("sfx_land_heavy"));
			create_hitbox( AT_DSPECIAL, 1, x + 12*spr_dir, y - 10 );
			if(front_step == false){
				image_index = 3
			}
			front_step = !front_step;
		}
	break;
	case 3: //die
		//image_index = 4;
		mask_index = asset_get("empty_sprite");
		sg_sprite = sprite_get("dspecial_shygone");
		hsp = lerp(hsp, 0, 0.02);
		vsp += 0.5
		ignores_walls = true;
		can_be_grounded = false;
		if(state_timer >= 90){
			instance_destroy();
			exit;
		}
	break;
}

//Reading from source Shy Guy
with(oPlayer){
	if(id == other.player_id){
		if(other.state != 3){
			if(other.state != 2){
				if(left_down){
					other.left_pressed = true;
				}
				if(right_down){
					other.right_pressed = true;
				}
			}
			if(state == PS_FIRST_JUMP or state == PS_HITSTUN or state == PS_DOUBLE_JUMP or state == PS_IDLE_AIR or state == PS_IDLE or state == PS_PRATFALL or attack != AT_DSPECIAL){
				other.state_timer = 0;
				other.state = 3;
				//other.hsp *= 2;
				other.vsp = -5;
			}
			if(state == PS_JUMPSQUAT){
				other.sg_sprite = sprite_get("dspecial_shygone");
			}
			other.sg_window = window;
			other.sg_timer = window_timer;
			x = other.x;
			y = other.y + other.image_yscale;
			other.spr_dir = spr_dir;
			if(other.state == 0){
				other.image_index = image_index;	
			}
		}
	}
}

if(!(position_meeting(x,y + 10 + vsp,asset_get("par_block")) 
	|| position_meeting(x,y + 10 + vsp,asset_get("par_jumpthrough"))
	|| position_meeting(x, y + 4 + vsp, player_id.carpet)) 
	&& state >= 0 and state < 3){
	with(oPlayer){
		if(id == other.player_id){
			state = PS_ATTACK_AIR
			attack = AT_DSPECIAL_AIR
			window = 1
			window_timer = 20;
			state_timer = 0;
			other.state = 3;
			other.state_timer = 90;
			random_voice = random_func( 0, 3, true);
    		if (random_voice < 3){
    			voice_cooldown = 20;
    	    	sound_play(voice_attack[random_voice+1]);
    		} 
		}
	}
}

if(position_meeting(x,y+2,asset_get("par_jumpthrough"))){
	shoe_draw_mod = -3;
}