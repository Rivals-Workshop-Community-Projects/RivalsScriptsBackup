// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

//spawn in

if ("hue"in self){
	hue++;
}

if  get_gameplay_time() < 30 && get_gameplay_time() > 2 //(attack == AT_TAUNT) 
{
    if(attack != AT_EXTRA_2)
    {   
        set_attack(AT_EXTRA_2);
		sound_play(sound_get("teleport"), false, 0, 1, 0.6);
		sound_play(sound_get("teleport"), false, 0, 1, 0.8);
		sound_play(sound_get("dspecial"), false, 0, 1, 0.4);
		// sbSFX[0] = sound_play(sound_get("nspecstart"), false, 0, 0.6+shadowBallCharge/shadowBallChargeMax*0.15, 0.8+shadowBallCharge/shadowBallChargeMax*0.25);


    }
}

if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;

if state == PS_DASH || state == PS_DASH_TURN || state == PS_DASH_START || state == PS_DASH_STOP {
    hurtboxID.sprite_index = sprite_get("dash_hurt");
} else if (state == PS_DOUBLE_JUMP){
    hurtboxID.sprite_index = sprite_get("doublejump1");
	if(state_timer > 35){
		hurtboxID.sprite_index = sprite_get("doublejump6");
	}
	else if(state_timer > 27){
		hurtboxID.sprite_index = sprite_get("doublejump5");
	} 
	else if(state_timer > 19){
		hurtboxID.sprite_index = sprite_get("doublejump4");
	} 
	else if(state_timer > 11){
		hurtboxID.sprite_index = sprite_get("doublejump3");
	}
	else if(state_timer > 5){
		hurtboxID.sprite_index = sprite_get("doublejump2");
	}
} else if (state == PS_WALK){
	hurtboxID.sprite_index = sprite_get("walk_hurt");
} else if (state == PS_IDLE){
    hurtboxID.sprite_index = sprite_get("idle_hurt");
} else if(state == PS_JUMPSQUAT || (state == PS_FIRST_JUMP && state_timer < 2)) {
	hurtboxID.sprite_index = sprite_get("jumpstart_hurt");
} else if (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_WALL_JUMP || free == true && state == 13){
    hurtboxID.sprite_index = sprite_get("jump_hurt");
	if(state_timer > 26 || (state_timer > 3 && state == 1) || state == 13){
		hurtboxID.sprite_index = sprite_get("jump2");
	}
} else if (state == PS_PARRY){
	hurtboxID.sprite_index = sprite_get("parry_hurt");
}

renderer.depth = depth-1;
renderer2.depth = depth+1;

//custom hitfall
if(myFall){
	gravity_speed = fast_fall;	
	if(vsp > fast_fall){
		vsp = fast_fall;
	}
	djump_accel = 0;
}

if(!hitpause || state_cat == SC_HITSTUN){
	gravity_speed = default_gravity_speed;
	myFall = false;
	djump_accel = base_djump_accel;	
}

//allow fastfalling at an earlier threshold than normal.
// if (!hitpause && epinel_heavy_state == 0 && down_hard_pressed && can_fast_fall && vsp < 0.01 && vsp >= -1.24) { //1.25
// 	vsp = -0.01;
// 	clear_button_buffer( PC_DOWN_STRONG_PRESSED );
// }

//double-jump protection code from epinel
if (epinel_grav_jump) {
	epinel_grav_jump = 0;
	if (fast_falling && djumps > 0) djumps--;
}

if (state == PS_DOUBLE_JUMP && check_fast_fall && djumps > 0) epinel_grav_jump = 1;

grabbedRecently--;

if(!hitpause){
	nairDragHsp = hsp;
	nairDragVsp = vsp;
}

//nspecial ends
if(hitpause || (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || attack != AT_NSPECIAL){
	air_accel = default_air_accel;
	sound_stop(sbSFX[1]);
}

if(hitpause || (state != PS_ATTACK_GROUND) || attack != AT_DSTRONG){
	dstrongReversed = false;
}

if(hitpause || !free){
	dspecialStall = false;
}


//uspecial ends
if(free && state == PS_PRATFALL && ledgeCancelling){
	ledgeCancelling = false;
	state = PS_IDLE_AIR;
}
if(hitpause || (!((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL) && state != PS_LANDING_LAG && state != PS_PRATLAND && state != PS_PRATFALL)){
	ground_friction = default_ground_friction;
	ledgeCancelling = false;
}

// if(taunt_down && attack != AT_TAUNT && attack != AT_TAUNT_2 && !free){
// 	//reaction time test

// 	time++;

// 	if(time%10==0){
// 		randomer = random_func_2(floor(x%199)+1, 100, 1)
// 	}

// 	if(shield_down){
// 		//make mewtwo invisible
// 		draw_indicator = false;
// 		sprite_change_offset("idle", 44442, 72);
// 	} else {
// 		sprite_change_offset("idle", 62, 80);
// 	}

// 	count++;
// 	if(count > 120 && time >= timeTarget){
// 		x=1000-x;
// 		count = 0;
// 		timeTarget = 120+random_func_2(floor(randomer)+1, 200, 1)

// 		time = 0;

// 		with (oPlayer){
// 			reactionTime = 0;
// 		}
// 		if(shield_down){
// 			sound_play(asset_get("sfx_abyss_explosion_big"));
// 		}
// 	}

// 	with (oPlayer){
//         if(attack_pressed){
//             clear_button_buffer(PC_ATTACK_PRESSED);
// 			reactionTime = other.count;
// 		}
// 	}
// }
	


//trap activation code
//can hit self

if(trapboxCurrentTime > trapboxSetupTime){
	if(instance_exists(trapbox)){
	with (oPlayer) {
		if ("mewtwoOrbId" in self) {
			other.trapbox.can_hit[player] = (state_cat == SC_HITSTUN && !hitstop);
		}
	}
	}
	if(instance_exists(trapboxCollectable)){
		trapboxCollectable.can_hit[player] = lastTrapCollect;
	}
} else {
	trapboxCurrentTime++;
}
lastTrapCollect = (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && !hitstop)


with (oPlayer) {
	if ("slowmo" in self) {
		if(slowmo > 0){
			slowmo --;
			hitstop = 1;
			hitstop_full = hitstop;
			hitpause = true;
			can_jump = false;
			can_shield = false;
		}
	}
}

//Modified code from anthem fspecial
//mewtwo orbs orbit an enemy or mewtwo
with (oPlayer) {
	if ("mewtwoOrbId" in self) {
		if (mewtwoOrbId == other.id) {
			//make sure this is the right mewtwo
			if (array_length(mewtwoOrbStacks) > 0) {
				for (var i = 0; i < array_length(mewtwoOrbStacks); i++) {
					var stack = mewtwoOrbStacks[i];
					//delete the stack from the array if the hitbox is gone
					if (!instance_exists(stack)) {
						other.mewtwoOrbStacks = array_cut(mewtwoOrbStacks, i);
						continue;
					}
					
					with (stack) {
						var rot_current = (360 * (i / array_length(other.mewtwoOrbStacks)) + hitbox_timer * 5) % 360;
						var len_current = 64;
						var time_end = (length - 1) - (i * 3);
						if (other.state == PS_DEAD || other.state == PS_RESPAWN) {
							instance_destroy(id);
							other.mewtwoOrbStacks = array_cut(other.mewtwoOrbStacks, i);
							continue;
						}
						can_hit[orig_player] = false;
						can_hit[player] = false;
						exploding = 0;
				    	if (hitbox_timer >= time_end - other.mewtwoOrbId.orb_warning_frames) {
				    		len_current = ease_backIn(64, 8, hitbox_timer - (time_end - other.mewtwoOrbId.orb_warning_frames), other.mewtwoOrbId.orb_warning_frames, 5);
							exploding = hitbox_timer - (time_end-other.mewtwoOrbId.orb_warning_frames);
				    		image_index = ease_linear(0, 6, hitbox_timer - (time_end - other.mewtwoOrbId.orb_warning_frames), other.mewtwoOrbId.orb_warning_frames)
				    	}
				    	
				    	x = other.x + lengthdir_x(len_current, rot_current);
				    	y = other.y - (other.char_height / 2) + lengthdir_y(len_current, rot_current);
				    	
				    	if (hitbox_timer >= time_end) {

							var hbox = create_hitbox(AT_FSPECIAL, 4, round(x), round(y))
							hbox.player = player;

							hbox.can_hit_self = true;
							
							other.mewtwoOrbStacks = array_cut(other.mewtwoOrbStacks, i);
							sound_play(asset_get("sfx_abyss_explosion_big"));
							instance_destroy(id);
							continue;
				    	} else {
							var first_time_end = (length - 1)-(array_length(other.mewtwoOrbStacks)*3) + 2;
							if(hitbox_timer == first_time_end && other.mewtwoOrbId == other.id && other.attack == AT_USPECIAL && (other.state == PS_ATTACK_AIR || other.state == PS_ATTACK_GROUND) && (other.window == 1 || other.window_timer <= 2)){
								hitbox_timer-= 1;
							}
						}
					}
				}
			}
			else {
				mewtwoOrbId = noone;
			}
		}
		
	}
	else {
		mewtwoOrbId = noone;
		mewtwoOrbStacks = [];
	}
}

//trap orbs orbiting a trap
if (array_length(trapOrbStacks) > 0) {
	for (var i = 0; i < array_length(trapOrbStacks); i++) {
		var stack = trapOrbStacks[i];
		//delete the stack from the array if the hitbox is gone
		if (!instance_exists(stack)) {
			trapOrbStacks = array_cut(trapOrbStacks, i);
			continue;
		}
		
		with (stack) {
			var rot_current = (360 * (i / array_length(other.trapOrbStacks)) + hitbox_timer * 5) % 360;
			var len_current = 64;
			if(other.trapboxCurrentTime < other.trapboxSetupTime){
				len_current = ease_quadInOut(8, 64, other.trapboxCurrentTime, other.trapboxSetupTime);
				setupAmount = other.trapboxCurrentTime;
			}

			var time_end = (length - 1) - (i * 3);
			if (other.state == PS_DEAD || other.state == PS_RESPAWN) {
				instance_destroy(id);
				other.trapOrbStacks = array_cut(other.trapOrbStacks, i);
				continue;
			}
			can_hit[orig_player] = false;
			can_hit[player] = false;
			exploding = 0;
			if (hitbox_timer >= time_end - other.orb_warning_frames) {
				// //clear trap hitboxes
				// with (other.trapboxCollectable) {
				// 	instance_destroy(id);
				// }
				// with (other.trapbox) {
				// 	instance_destroy(id);
				// }
				
				len_current = ease_backIn(64, 8, hitbox_timer - (time_end - other.orb_warning_frames), other.orb_warning_frames, 5);
				exploding = hitbox_timer - (time_end-other.orb_warning_frames);
				image_index = ease_linear(0, 6, hitbox_timer - (time_end - other.orb_warning_frames), other.orb_warning_frames)
			}
			
			x = other.trapX + lengthdir_x(len_current, rot_current);
			y = other.trapY + lengthdir_y(len_current, rot_current);

			if (hitbox_timer >= time_end) {
				var hbox = create_hitbox(AT_FSPECIAL, 4, other.trapX, other.trapY)
				hbox.player = player;

				hbox.can_hit_self = true;

				other.trapOrbStacks = array_cut(other.trapOrbStacks, i);
				sound_play(asset_get("sfx_abyss_explosion_big"));
				instance_destroy(id);
				continue;
			}
		}
	}
}

//fading trap orbs
if (array_length(fadingTrapOrbStacks) > 0) {
	var laststack = fadingTrapOrbStacks[array_length(fadingTrapOrbStacks) - 1];
	var explodeanyway = false;		

	with (laststack) {
		if ("exploding" in self) {
			if exploding > 0 {
				explodeanyway = true; //make all orbs explode even though fading
			}
		}
	}

	for (var i = 0; i < array_length(fadingTrapOrbStacks); i++) {
		var stack = fadingTrapOrbStacks[i];
		//delete the stack from the array if the hitbox is gone
		if (!instance_exists(stack)) {
			fadingTrapOrbStacks = array_cut(fadingTrapOrbStacks, i);
			continue;
		}

		var deadtime = fadingTrapbox.hitbox_timer;

		with (stack) {
			var rot_current = (360 * (i / array_length(other.fadingTrapOrbStacks)) + hitbox_timer * 5) % 360;
			var len_current = 64;
			var time_end = (300 - 1) - (i * 3);
			if (other.state == PS_DEAD || other.state == PS_RESPAWN) {
				instance_destroy(id);
				other.fadingTrapOrbStacks = array_cut(other.fadingTrapOrbStacks, i);
				continue;
			}

			len_current = ease_backIn(64, 8, deadtime, 29, 0);

			can_hit[orig_player] = false;
			can_hit[player] = false;

			//fading trap orbs only explode if they are already exploding
			if explodeanyway {
				if (hitbox_timer >= time_end - other.orb_warning_frames) {
					len_current = ease_backIn(64, 8, hitbox_timer - (time_end - other.orb_warning_frames), other.orb_warning_frames, 5);
					with (player_id) other.sprite_index = asset_get("empty_sprite");
					exploding = hitbox_timer - (time_end-other.orb_warning_frames);
					image_index = ease_linear(0, 6, hitbox_timer - (time_end - other.orb_warning_frames), other.orb_warning_frames)
				}

				if (hitbox_timer >= time_end) {
					var hbox = create_hitbox(AT_FSPECIAL, 4, other.fadingTrapX, other.fadingTrapY)
					hbox.player = player;

					hbox.can_hit_self = true;
					other.fadingTrapOrbStacks = array_cut(other.fadingTrapOrbStacks, i);
					sound_play(asset_get("sfx_abyss_explosion_big"));
					instance_destroy(id);
					continue;
				}
			} else {
				if(deadtime == 30){
					//kill all non-exploding orbs
					other.fadingTrapOrbStacks = array_cut(other.fadingTrapOrbStacks, i);
					instance_destroy(id);
					i--;
					continue;
				}
				if !("fade" in self) {
					fade = 0;
				}
				fade++;
			}

			x = other.fadingTrapX + lengthdir_x(len_current, rot_current);
			y = other.fadingTrapY + lengthdir_y(len_current, rot_current);
		}
	}
}

//shadow ball orbs
with (pHitBox) 
{
	if(!instance_exists(self)) continue;
	// if !(player_id == other.id) continue;
	if !(attack == AT_NSPECIAL && hbox_num == 2 && sprite_index == asset_get("empty_sprite")) continue;
	if !(("shadowBallOrbStacks" in self)) {
		continue;
	}

	if (array_length(shadowBallOrbStacks) > 0) {
		for (var i = 0; i < array_length(shadowBallOrbStacks); i++) {
			var stack = shadowBallOrbStacks[i];
			//delete the stack from the array if the hitbox is gone
			if (!instance_exists(stack)) {
				other.shadowBallOrbStacks = array_cut(shadowBallOrbStacks, i);
				continue;
			}
			
			with (stack) {
				var rot_current = (360 * (i / array_length(other.shadowBallOrbStacks)) + hitbox_timer * 5) % 360;
				var len_current = 64;
				var time_end = (length - 1) - (i * 3);
				// if (other.hitpause) {
				// 	instance_destroy(id);
				// 	other.shadowBallOrbStacks = array_cut(other.shadowBallOrbStacks, i);
				// 	continue;
				// }
				if("setupAmount" in self){
					if(setupAmount < 29){
						setupAmount ++;
					}
				}

				can_hit[orig_player] = false;
				can_hit[player] = false;

				if(other.hitbox_timer > 80){
					len_current = ease_backIn(64, 0, other.hitbox_timer-80, 20, 0);
				}

				hitbox_timer = 200+other.hitbox_timer;
				


				x = other.x + lengthdir_x(len_current, rot_current);
				y = other.y - 0 + lengthdir_y(len_current, rot_current);
			}
		}
	}
}

    // for (var i = 0; i < array_length(shadowBallOrbStacks); i++) {
    //     var stack = shadowBallOrbStacks[i];
    //     instance_destroy(stack.id);
    // }



with (oPlayer) {
	if ("activated_kill_effect" in hit_player_obj) {
		hit_player_obj.lastHitPurpled = hit_player_obj.activated_kill_effect;
	}
}

//funny orb instakill if they were purpled
with (oPlayer) {
	if ("lastHitPurpled" in self) {
		if (lastHitPurpled) {
			if(!hitstun || state == PS_DEAD){
				lastHitPurpled = false;
				deathMark = false;
			}
		}
	}
	if ("deathMark" in self) {
		if (deathMark) {
			if(!hitpause){
				deathMark = false;
				y = 9999;
			}
		}
	}
}

if(shadowBallCharge > shadowBallChargeMax){
	shadowBallCharge = shadowBallChargeMax;
}

// if(taunt_down){
// 	// slowmo += 20;
// 	shadowBallCharge+=0.25;
// }

//Noelle shader swap/rainbow code modified
var playerAlt = get_player_color(player);
switch (playerAlt)
{
	case 0:
	{
		if ("hue" not in self) hue = 0;
		var color_rgb1=make_color_rgb(160, 136, 234);
		var color_rgb2=make_color_rgb(156, 103, 143);
		AltColour(2, make_color_hsv((color_get_hue(color_rgb1)),color_get_saturation(color_rgb1),color_get_value(color_rgb1)));
		AltColour(3, make_color_hsv((color_get_hue(color_rgb2)),color_get_saturation(color_rgb2),color_get_value(color_rgb2)));
	}
	break;
	case 11: //rbg
	{

		if ("hue" not in self) hue = 0;
		var color_rgb1=make_color_rgb(216, 136, 219);
		var color_rgb2=make_color_rgb(115, 85, 163);
		AltColour(0, make_color_hsv((color_get_hue(color_rgb1)+hue)%255,color_get_saturation(color_rgb1),color_get_value(color_rgb1)));
		//AltColour(1, make_color_hsv((color_get_hue(color_rgb1)+hue)%255,color_get_saturation(color_rgb1),color_get_value(color_rgb1)));
		AltColour(2, make_color_hsv((color_get_hue(color_rgb2)+hue)%255,color_get_saturation(color_rgb1),color_get_value(color_rgb1)));
		AltColour(3, make_color_hsv((color_get_hue(color_rgb2)+hue)%255,color_get_saturation(color_rgb2),color_get_value(color_rgb2)));
	}
	break;
}

outline_colour = [0, 0, 0];
switch (playerAlt)
{
	case 99:  outline_colour =	[0,0,0]; break;
}
outline_color = outline_colour;

#define AltColour(_index, _colour)
{
	var temp_r = color_get_red(_colour);
	var temp_g = color_get_green(_colour);
	var temp_b = color_get_blue(_colour);
	set_character_color_slot(_index, temp_r, temp_g, temp_b, 1);
	set_article_color_slot(_index, temp_r, temp_g, temp_b, 1);
}

#define array_cut(_array, _index)
var _array_cut = array_create(array_length_1d(_array)-1);
var j = 0;
for (var i = 0; i < array_length_1d(_array); i++) {
	if i != _index {
		_array_cut[@j] = _array[i];
		j++;
	}
}
return _array_cut;