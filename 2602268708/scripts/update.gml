muno_event_type = 1;
user_event(14);

if spawn_still = true && (hsp != 0 || vsp != 0 || !(state = PS_IDLE || state = PS_SPAWN)) {
spawn_still = false;
    if alt = 6 {
        spawn_hit_fx(x, y, seasonal_break);
    }
wait_time = 0;
}

if !instance_exists(bomb_exists) {
sound_stop(sm64_fuse);
}

if has_rune("L") {
if wobble_timer > 0 && nspecial_grabbed_player = noone {
wobble_timer--;
} else if wobble_timer = 0 {
sound_stop(sound_get("looping_steps"));
wobble_timer2 = 0;
}

if wobble_timer2 = 4 && !hitpause {
wobble_timer2 = 5;
loop_song = sound_play(sound_get("looping_steps"), true, noone, 0, 1);
}

if wobble_timer2 > 1 {
suppress_stage_music(0, 0.001);
}
if wobble_timer2 > 4 {
sound_volume(loop_song, 1, 8000);
}

}	 

//NSPECIAL CODE
if nspecial_grabbed_player != noone {
	if instance_exists(nspecial_grabbed_player){ // switch/case statements dont work here btw
		
		//depth
		nspecial_grabbed_player.force_depth = true;
		nspecial_grabbed_player.depth = depth +1;
		
	    //bobombs, heaveho, cannon
		if (nspecial_grabbed_player.object_index == asset_get("pHitBox")) || (nspecial_grabbed_player.object_index == asset_get("obj_article1")) || (nspecial_grabbed_player.object_index == asset_get("obj_article3")) {
			
			throw_offset = 16;
			
			nspecial_grabbed_player.x = floor(lerp(nspecial_grabbed_player.x, x+hsp, 0.25))
			nspecial_grabbed_player.y = floor(lerp(nspecial_grabbed_player.y, y-20+vsp-char_height, 0.6))
			with nspecial_grabbed_player
			{
				vsp = 0;
				hsp = 0;
			}
            if state == PS_PARRY_START || state == PS_AIR_DODGE || state == PS_WALL_JUMP || state == PS_HITSTUN || state == PS_HITSTUN_LAND
			{
				nspecial_grabbed_player.vsp = -4
				nspecial_grabbed_player = noone
			}
		}
		else{
		throw_offset = 0;
		
		if has_rune("L"){
		    if wobble_timer2 > 1 {
			    nspecial_grabbed_player.force_depth = true;
		        nspecial_grabbed_player.depth = depth -1;
			}
		}
		
			if !hitpause && !((state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND) && attack = AT_NSPECIAL) {
				nspecial_grab_timer = max(0,nspecial_grab_timer-1)
			}
			
			nspecial_grabbed_player.x = floor(lerp(nspecial_grabbed_player.x, x+hsp, 0.25))
			nspecial_grabbed_player.y = floor(lerp(nspecial_grabbed_player.y, y-20+vsp-(nspecial_grabbed_player.char_height/2), 0.6))
			
			white_flash_timer = 0;
			
			//shaking
			if nspecial_grab_timer <= 15 && nspecial_grab_timer != 0 && nspecial_grab_timer % 4 >= 2 {
			nspecial_grabbed_player.x += -4; nspecial_grabbed_player.y += 4; nspecial_grabbed_player.spr_dir = 1;
			}
			if nspecial_grab_timer <= 15 && nspecial_grab_timer != 0 && nspecial_grab_timer % 4 < 2 {
			nspecial_grabbed_player.x += 4; nspecial_grabbed_player.y += -4; nspecial_grabbed_player.spr_dir = -1;
			}
			
			with nspecial_grabbed_player
			{
				hitstop = 2;
				hitstop_full = 2;
			}
			//player drops
			if !phone_cheats[CHEAT_INFGRAB] && (nspecial_grab_timer == 0 || (y > get_stage_data(SD_BOTTOM_BLASTZONE_Y) - 256) || state == PS_PARRY_START || state == PS_AIR_DODGE || state == PS_WALL_JUMP || state == PS_HITSTUN || state == PS_HITSTUN_LAND)
			{
			    if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) || (y > get_stage_data(SD_BOTTOM_BLASTZONE_Y) - 256){
					if !has_rune("L") {
				        move_cooldown[AT_NSPECIAL] = 20;
				        if !free {
				            set_state(PS_LANDING_LAG);
				            landing_lag_time = 20;
						}
				    } else {
					    wobble_timer = 30;
						wobble_timer2++;
						nspecial_grabbed_player.hitstop = 10;
				        nspecial_grabbed_player.hitstop_full = 10;
					}
					nspecial_grabbed_player = noone;
				}
			}
		}
	
		if (state != PS_WALK_TURN && state != PS_DASH_TURN)
			nspecial_prevangleturn = spr_dir;
			
		//THROWS
		if nspecial_grabbed_player != noone {
		switch (attack) {
		    case AT_FTHROW:
			nspecial_grabbed_player.depth = depth -1;
			nspecial_grabbed_player.spr_dir = spr_dir;
			    switch (state_timer) {
				    case 0: case 1:
					nspecial_grabbed_player.x = x +12 *spr_dir;
			        nspecial_grabbed_player.y = y -34 -throw_offset;
					break;
					case 2: case 3:
					nspecial_grabbed_player.x = x +4 *spr_dir;
			        nspecial_grabbed_player.y = y -48 -throw_offset;
					break;
					case 4: case 5:
					nspecial_grabbed_player.x = x -4 *spr_dir;
			        nspecial_grabbed_player.y = y -58 -throw_offset;
					break;
					case 6: case 7:
					nspecial_grabbed_player.x = x -20 *spr_dir;
			        nspecial_grabbed_player.y = y -54 -throw_offset;
					break;
					case 8: case 9:
					nspecial_grabbed_player.x = x;
			        nspecial_grabbed_player.y = y -64 -throw_offset;
					break;
					case 10: case 11:
					nspecial_grabbed_player.x = x + 8 *spr_dir;
			        nspecial_grabbed_player.y = y -70 -throw_offset;
					nspecial_grabbed_player.depth = depth +1;
					break;
				}
			break;
			case AT_DTHROW:
			nspecial_grabbed_player.depth = depth -2;
			nspecial_grabbed_player.spr_dir = spr_dir;
			    switch (state_timer) {
				    case 0: case 1: case 2: case 3: case 4:
					nspecial_grabbed_player.x = x;
			        nspecial_grabbed_player.y = y -78 -throw_offset;
					break;
					case 5: case 6: case 7: case 8: case 9:
					nspecial_grabbed_player.x = x;
			        nspecial_grabbed_player.y = y -84 -throw_offset;
					break;
					case 10:
					nspecial_grabbed_player.x = x;
			        nspecial_grabbed_player.y = y -64 -throw_offset;
					break;
					case 11:
					nspecial_grabbed_player.x = x;
			        nspecial_grabbed_player.y = y -54 -throw_offset;
					nspecial_grabbed_player.depth = depth +1;
					break;
				}
			break;
			
			case AT_UTHROW:
			nspecial_grabbed_player.depth = depth -1;
			nspecial_grabbed_player.spr_dir = spr_dir;
			    switch (state_timer) {
				    case 0: case 1:
					nspecial_grabbed_player.x = x +24 *spr_dir;
			        nspecial_grabbed_player.y = y -28 -throw_offset;
					break;
					case 2: case 3:
					nspecial_grabbed_player.x = x +20 *spr_dir;
			        nspecial_grabbed_player.y = y -16 -throw_offset;
					break;
					case 4: case 5:
					nspecial_grabbed_player.x = x +4 *spr_dir;
			        nspecial_grabbed_player.y = y -10 -throw_offset;
					break;
					case 6: case 7:
					nspecial_grabbed_player.x = x -24 *spr_dir;
			        nspecial_grabbed_player.y = y -12 -throw_offset;
					break;
					case 8: case 9:
					nspecial_grabbed_player.x = x -20 *spr_dir;
			        nspecial_grabbed_player.y = y -16 -throw_offset;
					break;
					case 10: case 11:
					nspecial_grabbed_player.x = x;
			        nspecial_grabbed_player.y = y -32 -throw_offset;
					break;
				}
			break;
			
			case AT_EXTRA_1:
			nspecial_grabbed_player.depth = depth -1;
			nspecial_grabbed_player.spr_dir = spr_dir;
			    switch (state_timer) {
				    case 0: case 1: case 2: case 3:
					nspecial_grabbed_player.x = x +24 *spr_dir;
			        nspecial_grabbed_player.y = y -40 -throw_offset;
					break;
					case 4: case 5: case 6:
					nspecial_grabbed_player.x = x +22 *spr_dir;
			        nspecial_grabbed_player.y = y -30 -throw_offset;
					nspecial_grabbed_player.depth = depth +1;
					break;
					case 7: case 8: case 9: 
					nspecial_grabbed_player.x = x -8 *spr_dir;
			        nspecial_grabbed_player.y = y -32 -throw_offset;
					nspecial_grabbed_player.depth = depth +1;
					break;
					case 10: case 11:
					nspecial_grabbed_player.x = x -16 *spr_dir;
			        nspecial_grabbed_player.y = y -32 -throw_offset;
					nspecial_grabbed_player.depth = depth +1;
					break;
				}
			break;
			
		}
		}
	}
	else
		nspecial_grabbed_player = noone;
}

//OTHER STUFF

switch (state)
{
	case PS_WAVELAND:
		if (!free and state_timer == 1) sound_stop(air_dodge_sound);
	break;
	case PS_PARRY:
	    if (state_timer == 1) && !hitpause{ sound_play(sound_get("sm64_clink")); }
	break;
	
	case PS_RESPAWN:
	    hoot_trigger = true;
	break;
	
	case PS_IDLE:
	//RANDOMIZE WAIT ANIM
	if sprite_index = sprite_get("idle") && !spawn_still {
		chosen_idle = random_func(11, 2, true);
        if chosen_idle = 0 {
	        wait_sprite = sprite_get("idle2");
	        wait_length = 40;
	    } else {
	        wait_sprite = sprite_get("idle3");
	        wait_length = 35;
	    }
		
		if wait_time = 0 {
		    wait_time = 135;
		}
	}
	break;
}

if state == PS_HITSTUN || !(attack = AT_TAUNT_2 || attack = AT_EXTRA_3) {
	sound_stop(lgbt_music);
}

if !(state = PS_RESPAWN || respawn_taunt) && hoot_trigger = true {
    hoot_trigger = false;
    create_hitbox(AT_TAUNT_2, 3, x, y);
    sound_stop(lgbt_music);
}

//bthrow nonsense
if (prev_dir != spr_dir*7) && !(state = PS_WALK_TURN || state = PS_DASH_TURN || state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND) {
    prev_dir += spr_dir;
}

//floppos directional hfx rotation fix!
with(hit_fx_obj) {
	if player == other.player && draw_angle != 0 {
	spr_dir = 1;
	}
}

//INTRO
if was_reloaded || object_index == oTestPlayer || alt = 6{
introTimer = 16;
}

if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

//this increments introTimer every few frames, depending on the number entered
if (introTimer < 15) {
    draw_indicator = false;
	switch (state_timer)
		{
			case 10:
                sound_play(sound_get("sm64_warpeject"));
			break;
			case 31:
			    sound_play(sound_get("sm64_clonk"));
			break;
			case 32:
				shake_camera( 8, 6 );
			break;
			case 44:
			    sound_play(sound_get("sm64_pullout"));
			break;
		}
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

//ALTS
//stolen from ASDF Guy which stole it from Kirby, if you steal this keep the chain going
if !("hue" in self) hue = 0

if alt = 23 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(255, 92, 239);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(23,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	
		color_rgb=make_color_rgb(186, 35, 171);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(255, 173, 247);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(254, 252, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(254, 252, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(146, 92, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(250, 255, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(146, 92, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
}
init_shader();

//DIALOGUE BUDDY
if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Chuchya"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "EE OING!",
    "EE OING!",
    "EE OING!"]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == "" && diag != "") //Change the url into a specific character's
    {
        diag = "EE OING!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
}