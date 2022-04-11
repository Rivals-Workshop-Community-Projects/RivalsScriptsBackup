// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

//rainbow
//stolen from Chuckya which stole it from ASDF Guy which stole it from Kirby, if you steal this keep the chain going
if !("hue" in self) hue = 0
if get_player_color(player) = 27 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(235, 244, 255);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(27,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	
		color_rgb=make_color_rgb(32, 149, 188);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(27, 85, 150);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(42, 42, 42);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(125, 203, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(254, 199, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(253, 84, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(133, 39, 196);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
}
init_shader();

if (introTimer2 < 3)
    introTimer2++;
else{
    introTimer2 = 0;
    introTimer++;
}

if (sprite_index == sprite_get("intro")){
    if (state_timer == 20 || state_timer == 28)
		sound_play(asset_get("sfx_swipe_weak1"));
	
	if (state_timer == 48){
		sound_play(sound_get("cry"));
		sound_play(asset_get("sfx_swipe_heavy2"));
	}
}

//this increments introTimer every few frames, depending on the number entered

if (introTimer < 15) 
    draw_indicator = false;
else
    draw_indicator = true;

//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;
if phone_cheats[CHEAT_INF_NSPECIAL] wow_chrg = wow_chrg_max;

if (fspecial_grab_id != noone){
	if (!instance_exists(fspecial_grab_id) || attack != AT_FSPECIAL || state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR || fspecial_grab_id.state == PS_DEAD || fspecial_grab_id.state == PS_RESPAWN || state == PS_RESPAWN || state == PS_DEAD){ // abort
		fspecial_grab_id = noone;
		fspecial_grab_time = 0;
	}
	else{
		if (window != 7){ // not release
			var grab_off_x = 0;
			var grab_off_y = 0;
			
			switch(window){
				case 2:
					if (window_timer >= 6){
						grab_off_x = -30;
						grab_off_y = -25;
					}
					else{
						grab_off_x = 87;
						grab_off_y = -25;
					}
				break;
				case 3: 
					grab_off_y = -48;
				break;
				case 4:
					grab_off_x = 69;
					grab_off_y = -18;
				break;
				case 5: case 6:
					grab_off_x = 69;
				break;
			}
			
			with(fspecial_grab_id){ // stuff
				x = other.x + other.hsp + (grab_off_x*other.spr_dir);
				y = other.y + other.vsp + grab_off_y;
				
				hitpause = true;
				hitstop_full = max(hitstop_full, 5);
				hitstop = hitstop_full;
				
			}
		}
	}
}

//compat
if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Cofagrigus"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "GEUEUEWEH!",]
}

// nspecial groups
// flop told me to not bother resetting it but i did it anyway
// sorry flop
var nspecial_inst_exists = false;
with(asset_get("pHitBox")){
	if (player_id == other && attack == AT_NSPECIAL){
		nspecial_inst_exists = true;
	}
}
if (!nspecial_inst_exists)
	wow_hitbox_group = 0;
			
var cursefx_1 = hit_fx_create(sprite_get("cursed_fx1"), 6*4);
var cursefx_2 = hit_fx_create(sprite_get("cursed_fx2"), 4*4);
var cursefx_used = (round(get_gameplay_time() / 4.5) % 2 == 0) ? cursefx_2 : cursefx_1;

var omenfx_1 = hit_fx_create(sprite_get("wwisp_fx1"), 6*4);
var omenfx_2 = hit_fx_create(sprite_get("wwisp_fx2"), 4*4);
var omenfx_used = (round(get_gameplay_time() / 4.5) % 2 == 0) ? omenfx_2 : omenfx_1;

// i forgot to store the sounds (lmao)
// yeah so sprite_get / sound_get pull from your perspective, so like, if you call sound_get("mcurse_lift") in the with statement, it'll uhhh
// call it from them, like it tries to pull the files from their folders
// idk im bad at explaining have you read my code
// this does not apply to asset_get because it pulls from rivals itself (you can call it from anywhere and it will actually get the corresponding file)

var curselift_snd = sound_get("mcurse_lift");
var cursedamage_snd = sound_get("mcurse_damage");
var curseapply_snd = sound_get("mcurse_apply");

omegacurser = phone_cheats[CHEAT_INFINICURSE];

//REFLECTED CURSE CODE
if (cofa_mummy){
	if (cofa_mummy_id.state == PS_RESPAWN || cofa_mummy_id.state == PS_DEAD || state == PS_RESPAWN || state == PS_DEAD){ // inflictor or target died
		if (cofa_mummy_timer != 0)
			sound_play(curselift_snd); // snd
		cofa_mummy_timer = 0;
	}
	else{ // no
		if (!hitpause){
			// bunch of checks
			if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
				cofa_mummy_atktimer = 2;
			if (get_num_hitboxes(attack) == 0 || attack == AT_TAUNT || attack == AT_TAUNT_2) // not taunt or has no hitboxes in attack
				cofa_mummy_atktimer = 0;
				
			var should_take_dmg = false;
			if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) && (!has_hit_player && !hitpause) && (cofa_mummy_atktimer == 1) && (get_num_hitboxes(attack) != 0) // vine boom
				should_take_dmg = true;
			
			if (should_take_dmg){ // yes
				take_damage(player, -1, 1); // take damage
				sound_play(cursedamage_snd); // snd
				cofa_mummy_atktimer = 0;
			}
			
			cofa_mummy_atktimer = max(cofa_mummy_atktimer-1, 0);
			cofa_mummy_timer = max(cofa_mummy_timer-1, (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) ? 1 : 0);
			
			if (cofa_mummy_timer <= 0){
				cofa_mummy = false;
				sound_play(curselift_snd);
			}
		}
		
		if (cofa_mummy_fx_timer == 0){
			var fx1 = spawn_hit_fx(round(x + random_func(0, 85, true)) - 42, round(y + random_func_2(0, char_height + 1, true)) - char_height, cursefx_used);
			fx1.depth = depth-1; // move above player
			cofa_mummy_fx_timer = 2;
		}
		cofa_mummy_fx_timer--;
	}
}

//OTHER PLAYER CURSE CODE
with (oPlayer) {
	if player != other.player {	
		if (cofa_mummy_id == other.id && cofa_mummy){
		//transfer to non-cofa players



			if (cofa_mummy_id.state == PS_RESPAWN || cofa_mummy_id.state == PS_DEAD || state == PS_RESPAWN || state == PS_DEAD){ // inflictor or target died
				if (cofa_mummy_timer != 0)
					sound_play(curselift_snd); // snd
				cofa_mummy_timer = 0;
			}
			else{ // no
				if (!hitpause){
					// bunch of checks
					if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
						cofa_mummy_atktimer = 2;
					if (get_num_hitboxes(attack) == 0 || attack == AT_TAUNT || attack == AT_TAUNT_2) // not taunt or has no hitboxes in attack
						cofa_mummy_atktimer = 0;
						
					var should_take_dmg = false;
					if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) && (!has_hit_player && !hitpause) && (cofa_mummy_atktimer == 1) && (get_num_hitboxes(attack) != 0) // vine boom
						should_take_dmg = true;
					
					if (should_take_dmg){ // yes
						take_damage(player, -1, 1); // take damage
						sound_play(cursedamage_snd); // snd
						cofa_mummy_atktimer = 0;
					}
					
					cofa_mummy_atktimer = max(cofa_mummy_atktimer-1, 0);
					
					omegacursed = other.omegacurser;
					
					if (omegacursed){
					cofa_mummy_timer = 180;
					} else {
					cofa_mummy_timer = max(cofa_mummy_timer-1, (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) ? 1 : 0);
					}
					
					if (cofa_mummy_timer <= 0){
						cofa_mummy = false;
						sound_play(curselift_snd);
					}
				}
				
				if (cofa_mummy_fx_timer == 0){
					with(other){
						var fx1 = spawn_hit_fx(round(other.x + random_func(0, 85, true)) - 42, round(other.y + random_func_2(0, other.char_height + 1, true)) - other.char_height, cursefx_used);
						fx1.depth = other.depth-1; // move above player
					}
					cofa_mummy_fx_timer = 2;
				}
				cofa_mummy_fx_timer--;		
			}
		}
	}
}
