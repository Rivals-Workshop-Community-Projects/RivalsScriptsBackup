// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);
switch(state){
	case PS_AIR_DODGE:
		if(state_timer == 1){
			spawn_hit_fx(x+0*spr_dir,y,fx_dodge_start);
		}
		if(state_timer == 15){
			spawn_hit_fx(x+0*spr_dir,y,fx_dodge_end);
		}
	break;
	case PS_ROLL_BACKWARD:
	case PS_TECH_BACKWARD:
	case PS_TECH_FORWARD:
	case PS_ROLL_FORWARD:
		if(state_timer == 1){
			spawn_hit_fx(x+0*spr_dir,y,fx_dodge_start);
		}
		if(state_timer == 21){
			spawn_hit_fx(x+0*spr_dir,y,fx_dodge_end);
		}
	break;
	case PS_DOUBLE_JUMP:
		if(state_timer == 0){
			var wing_sound = random_func(0,4,true);
			if(wing_sound == 0){
				wing_sound = 1;
			}
			sound_play(sound_get("wing" + string(wing_sound)));
		}
	break;
}
if(was_on_puddle){
	move_cooldown[AT_DSPECIAL] = 2;
}
//Float Credit to FelixBlobDev
if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
    if(!free){
        float = floatmax;
    }djumpfloat = 0;
    can_float = true;
    move_cooldown[AT_FSPECIAL] = 0;
    move_cooldown[AT_USPECIAL] = 0;
}
if(free && (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) && taunt_pressed && down_down){
   set_attack(AT_TAUNT_2);
}
if ((state == PS_CROUCH || state == PS_JUMPSQUAT) && jump_down && (down_down || floatbuffer > 0)){
	if (!free){
		y -= 2;
	}
}
if(can_float && free && (vsp >= 0 && (state != PS_DOUBLE_JUMP || floating) || (down_down || floatbuffer > 0)) && jump_down && float > 0 && state != PS_HITSTUN && state != PS_AIR_DODGE
	&& state != PS_PRATFALL && state != PS_RESPAWN && state != PS_DEAD && !hitpause){
    float -= 1;vsp = 0;
    floating = true;
    if (state == PS_DOUBLE_JUMP && state_timer < 9){
    	set_state(PS_IDLE_AIR);clear_button_buffer(PC_JUMP_PRESSED);
	    if(djumpfloat < 1){
    		djumps = 0;djumpfloat += 1;
    	}
    }
}else{
    floating = false;
}

//bleeding
with (oPlayer)
if (self != other && bee_victim == other)
{
    if(poi_cooldown > 0)
    {
    	poi_cooldown--;
    	//Credit to FelixBlobDev for outline code
	    outline_color = [outline_timer/2, outline_timer/6, outline_timer/2];
		if (outline_timer > 200) outline_rev = true;
		if (outline_timer < 5) outline_rev = false;
		if (outline_rev) outline_timer -= 6;
		else outline_timer += 6;
		init_shader();
       if(get_gameplay_time() % 30 == 0)
          take_damage(player, other.player, 1);
    }else{
       outline_color = [0,0,0];
       init_shader();    	
    }
}

if(buff_timer != 0){
	with (asset_get("pHitBox")){
	if (orig_player_id == other && ("already_buffed" not in self)){
			damage = floor(damage * 1.5);
			hitpause = floor(hitpause * 1.5);
			kb_value += 1;
			already_buffed = true;
		}
	}
	buff_timer--;
	outline_color = [outline_timer, outline_timer/6, outline_timer/2];
	if (outline_timer > 200) outline_rev = true;
	if (outline_timer < 5) outline_rev = false;
	if (outline_rev) outline_timer -= 6;
	else outline_timer += 6;
	init_shader();
}else{
	already_buffed = false;
	outline_color = [0,0,0];
}

with (oPlayer) {
	if (id != other.id) {
		if ((state == PS_RESPAWN || state == PS_DEAD) && state_timer == 1) {
			with other{
				if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self && killed_with_fstrong {
					sound_play(sound_get("stat_up"))
					buff_timer = 500;
				}
			}
		}
	}
}

if get_player_color(player) = 29 {
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb(71, 164, 86); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 29, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours

color_rgb=make_color_rgb(97, 224, 93); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 29, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours

color_rgb=make_color_rgb(97, 224, 93); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 29, 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours

color_rgb=make_color_rgb(97, 224, 93); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 29, 7, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours

init_shader();
}
/*
if(has_hit || instance_exists(fair_target)){
	if(attack == AT_FAIR){
		with (hit_player_obj){
			if state_cat == SC_HITSTUN{
				if (hitstop == hitstop_full){
					other.fair_hit_count++;
					other.fair_target = self;
				}
			}else{
				other.fair_hit_count=0;
				other.fair_target = noone;
			}
		}
	}else{
		fair_hit_count=0;
		fair_target = noone;
	}
}
*/

on_puddle= false;
with (asset_get("obj_article1")){
	if ("amBeedrill" in player_id && !other.free){
  		if(place_meeting(x, y - 12, other.id)){
		    other.on_puddle= true;
		    other.puddle_hb = self;
  		}else{
			if (point_distance(x,y - 12,other.x,other.y) < 100){
				other.puddle_hb = self;
			}else{
	  			if(!instance_exists(other.og_puddle)){
					other.puddle_hb = noone;  
	  			}
				else{
					other.puddle_hb = other.og_puddle;
				}
			}
  		}
	}
}