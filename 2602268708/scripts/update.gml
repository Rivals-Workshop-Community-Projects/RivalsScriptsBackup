user_event(14);

if(get_player_color( player ) == 8) || (get_player_color( player ) == 27) || (get_player_color( player ) == 28) || (get_player_color( player ) == 29){
bits = 1;
}

if state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR and state != PS_AIR_DODGE and (up_down and shield_pressed) and !free y-=4

//USPECIAL BODY HITBOX
if(attack == AT_USPECIAL && window == 3){
fired = 20;
}

if !(state == PS_PRATFALL || attack == AT_USPECIAL){
fired = 0;
} else if (fired > 0) && (has_hit == false) && (state == PS_PRATFALL){
create_hitbox(AT_DATTACK, 2, x, y);
fired--;
}
//i shouldnt need multiple reset things but dan moment or something idk
if !(free) && (fired > 0){
fired = 0;
}

if nspecial_grabbed_player != noone
{
	if instance_exists(nspecial_grabbed_player){ // switch/case statements dont work here btw
		if (nspecial_grabbed_player.object_index == asset_get("pHitBox")){
			if (!hitpause)
				nspecial_grab_timer = max(0,nspecial_grab_timer-1)
			
			nspecial_grabbed_player.x = floor(lerp(nspecial_grabbed_player.x, x+hsp, 0.25))
			nspecial_grabbed_player.y = floor(lerp(nspecial_grabbed_player.y, y-20+vsp-char_height, 0.6))
			with nspecial_grabbed_player
			{
				vsp = 0;
				hsp = 0;
			}
		    if state == PS_PARRY_START || state == PS_AIR_DODGE
			{
				nspecial_grabbed_player.vsp = -4
				nspecial_grabbed_player = noone
			}
		}
		else if (nspecial_grabbed_player.object_index == asset_get("obj_article1")){
			if (!hitpause)
				nspecial_grab_timer = max(0,nspecial_grab_timer-1)
			
			nspecial_grabbed_player.x = floor(lerp(nspecial_grabbed_player.x, x+hsp, 0.25))
			nspecial_grabbed_player.y = floor(lerp(nspecial_grabbed_player.y, y-20+vsp-char_height, 0.6))
			with nspecial_grabbed_player
			{
				vsp = 0;
				hsp = 0;
			}
            if state == PS_PARRY_START || state == PS_AIR_DODGE
			{
				nspecial_grabbed_player.vsp = -4
				nspecial_grabbed_player = noone
			}
		}
		else if (nspecial_grabbed_player.object_index == asset_get("obj_article3")){
			if (!hitpause)
				nspecial_grab_timer = max(0,nspecial_grab_timer-1)
			
			nspecial_grabbed_player.x = floor(lerp(nspecial_grabbed_player.x, x+hsp, 0.25))
			nspecial_grabbed_player.y = floor(lerp(nspecial_grabbed_player.y, y-20+vsp-char_height, 0.6))
			with nspecial_grabbed_player
			{
				vsp = 0;
				hsp = 0;
			}
            if state == PS_PARRY_START || state == PS_AIR_DODGE
			{
				nspecial_grabbed_player.vsp = -4
				nspecial_grabbed_player = noone
			}
		}
		else{
			if (!hitpause)
				nspecial_grab_timer = max(0,nspecial_grab_timer-1)
			
			nspecial_grabbed_player.x = floor(lerp(nspecial_grabbed_player.x, x+hsp, 0.25))
			nspecial_grabbed_player.y = floor(lerp(nspecial_grabbed_player.y, y-20+vsp-(nspecial_grabbed_player.char_height/2), 0.6))
			
			//innefficient as hell manual shaking baybeeee
			if (nspecial_grab_timer == 15) || (nspecial_grab_timer == 12) || (nspecial_grab_timer == 11) || (nspecial_grab_timer == 8) || (nspecial_grab_timer == 7) || (nspecial_grab_timer == 4) || (nspecial_grab_timer == 3){
			nspecial_grabbed_player.x += -4; nspecial_grabbed_player.y += 4; }
			if (nspecial_grab_timer == 14) || (nspecial_grab_timer == 13) || (nspecial_grab_timer == 10) || (nspecial_grab_timer == 9) || (nspecial_grab_timer == 6) || (nspecial_grab_timer == 5) || (nspecial_grab_timer == 2) || (nspecial_grab_timer == 1){
			nspecial_grabbed_player.x += 4; nspecial_grabbed_player.y += -4; }
			
			with nspecial_grabbed_player
			{
				hitstop = 10;
				hitstop_full = 10;
			}
			if nspecial_grab_timer == 0 || y > get_stage_data(SD_Y_POS) + 96 || state == PS_PARRY_START || state == PS_AIR_DODGE
			{
				nspecial_grabbed_player = noone
				move_cooldown[AT_NSPECIAL] = 20;
				if !free{
				set_state(PS_LANDING_LAG);
				landing_lag_time = 20;
				}
			}
		}
	
		if (state != PS_WALK_TURN && state != PS_DASH_TURN)
			nspecial_prevangleturn = spr_dir;
	}
	else
		nspecial_grabbed_player = noone;
}

switch (state)
{
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
	switch (attack)
	{
		case AT_NAIR:
		case AT_BAIR:
		case AT_USTRONG:
		var diff = (attack == AT_USTRONG)
			if clamp(window,2+diff,3+diff) == window and window_timer mod nbair_intervals[attack == AT_BAIR] == 0 and !hitpause
			{
				//print(window)
				if window == 3+diff and window_timer != 0 break;
				
				create_hitbox(attack, window-1 - diff, x, y)
			}
		break;
		case AT_USPECIAL:
			if window < 3 
			{
				super_armor = true;
				cannon_button_down = special_down
			}
		break;
	}
	break;
	case PS_WAVELAND:
		if (!free and state_timer == 1) sound_stop(air_dodge_sound);
	break;
	case PS_SPAWN:
	
		switch (state_timer)
		{
			case 10:
			    if(bits = 1){
				sound_play(sound_get("8bit_enter"));
				} else { sound_play(sound_get("sm64_warpeject")); }
			break;
			case 31:
			    if(bits = 1){
				sound_play(sound_get("8bit_blast"));
				} else { sound_play(sound_get("sm64_clonk")); }
			break;
			case 32:
				shake_camera( 8, 6 );
			break;
			case 44:
			    if(bits = 1){
				sound_play(sound_get("smb2_pluck"));
				} else { sound_play(sound_get("sm64_pullout")); }
			break;
		}
	
	break;
	case PS_PARRY:
	    if (state_timer == 1){ sound_play(sound_get("sm64_clink")); }
	break;
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
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

//stolen from ASDF Guy which stole it from Kirby, if you steal this keep the chain going
if !("hue" in self) hue = 0

if get_player_color(player) = 23 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(192, 33, 255);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(23,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	
		color_rgb=make_color_rgb(255, 155, 217);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(164, 161, 173);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(255, 231, 0);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(213, 7, 7);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(255, 124, 10);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(173, 173, 209);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(250, 255, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
}
init_shader();


if state == PS_HITSTUN || attack != AT_TAUNT_2 {
	sound_stop( sound_get( "trans_rights" ));
	sound_stop( sound_get( "the_big_homo" ));
	sound_stop( sound_get( "numerous_bees" ));
}


if (get_player_color(player) == 8) || (get_player_color(player) == 26) || (get_player_color(player) == 27) || (get_player_color(player) == 28) || (get_player_color(player) == 29){
funkyalts = 1;
}
if (funkyalts != 1){
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("chuckyanoise"));
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("FUNNY CHUCKYA MOVE"));
}

//8bit Sounds
if(bits = 1){
waveland_sound = sound_get("8bit_slide");
air_dodge_sound = sound_get("8bit_warp");
}

if(state != PS_WALL_JUMP){
cling = 0;
wallanim = 0;
}