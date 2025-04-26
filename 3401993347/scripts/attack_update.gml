//B - Reversals
switch(attack){
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
	case AT_DSTRONG:
		trigger_b_reverse();
		break;
}

// //7axel7 hitbox visualizer
// if(attack != AT_FAIR && attack != AT_BAIR && attack != AT_UAIR && attack != AT_NAIR && attack != AT_USTRONG && attack != AT_FSTRONG && attack != AT_DSTRONG &&attack != AT_FTILT && attack != AT_JAB && attack != AT_UTILT && attack != AT_DATTACK && attack != AT_DTILT){
// 	for(var i = 0; i <= get_num_hitboxes(attack); i++){
// 		if (window == get_hitbox_value( attack, i, HG_WINDOW) && 
// 		(get_hitbox_value( attack, i, HG_WINDOW_CREATION_FRAME) == window_timer || (window_timer == 1 && get_hitbox_value( attack, i, HG_WINDOW_CREATION_FRAME) == 0))
// 		&& get_hitbox_value( attack, i, HG_HITBOX_TYPE) == 1) {
// 			Visualize(attack, i);
// 		}
// 	}
// } else {
// 	hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
// }
// if(attack == AT_USTRONG){
// 	hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
// }


// switch(attack){
// 	case AT_FSPECIAL:
// 	case AT_DSPECIAL:
// 	case AT_USPECIAL:
// 	case AT_NSPECIAL:
// 		if (window == 1 && window_timer == 1) {
// 			if (free) vsp = max(vsp, 0);
// 		}
// 		break;
// }

// per-attack logic
switch(attack){
	case AT_JAB:
		if(grabbedRecently && window == 1){
			window_timer = 0;
			window = 4;
			jabalternate = 0;
		}
		if (has_hit_player && instance_exists(hit_player_obj) && !hit_player_obj.super_armor)
		{
			if (window < 4) {
				Grab(82, -30, 8, 8);
			}
			if(window == 3){
				grabbedRecently = 12;
			}
		}
		if(window == 8){
			if(window_timer%7==1){
				test = create_hitbox(AT_JAB, 5, 0, 0);
				sound_play(asset_get("sfx_swipe_medium2"));
				var hfx = spawn_hit_fx( x + spr_dir*22, y-50, jabbyfx)
				if(jabalternate%2==0){
					hfx.spr_dir *= -1;
					hfx.draw_angle = 180;
					hfx.y+=30;
				}
				hfx.depth = depth-1;
				jabalternate++;
			}
			if(window_timer%7==0){
				if(!attack_down){
					window = 9;
					window_timer = 0;
				} 

			}

			if(window_timer == 42 && attack_down){
				window_timer = 0;
			}
		}
		break;
	case AT_FTILT:
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_UTILT:
		if(window == 1 && window_timer == 1){
			hsp = spr_dir*6;
			utiltReverse = false;
		}
		if (window == 1 && !utiltReverse && (spr_dir==1?left_down:right_down) && window_timer < 6)
		{
			spr_dir *= -1;
			utiltReverse = true;
		}

		if window == 1 && window_timer == phone_window_end{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
		}
		break;
	case AT_FSTRONG:
		if window == 2 && window_timer == phone_window_end{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		break;
	case AT_USTRONG:
		if window == 2 && window_timer == phone_window_end{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
	case AT_DSTRONG:
		// if(window == 1){
		// 	dstrongReversed = false;
		// }
		// if (!dstrongReversed && window == 2 && window_timer == 1) {
		// 	if((left_down && !right_down && spr_dir == 1) || (!left_down && right_down && spr_dir == -1)){
		// 		spr_dir = -spr_dir;
		// 		dstrongReversed = true;
		// 	}
		// }

		//boomfx
		if(window == 2 && window_timer == phone_window_end){
			var hfx = spawn_hit_fx( x + spr_dir*27, y-50, dstrongsplosion)
			hfx.depth = depth-1;
		}
		//hfx.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 9
		break;
	case AT_NAIR:
		// visual = instance_create(x, y, "obj_article2");

		// with visual {

		// 	render_sprite = sprite_get("example");
		// 	spr_dir = other.spr_dir;
		// 	_image_index = 0;
		// 	state = 1;
		// 	_type = "nair_visual";
		// 	_player = other;
		// 	x = _player.x+_player.hNairDrag*_player.hsp
		// 	y = _player.y+_player.vNairDrag*_player.vsp-_player.aboveNairDragOffset
			
		// }
		// visual.lifetime = get_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH)*5;
		break;
	
	// case AT_FAIR:
	// 	fairoffsetx = x + spr_dir * 40
	// 	fairoffsety = y - 35
	// 	if(window == 1 && window_timer == phone_window_end - 3){
	// 		fairfx = spawn_hit_fx(fairoffsetx, fairoffsety, 305);
	// 	}
	// 	break;

	// 	if(fairfx != noone){
			
	// 	}
	// 	fairfx.x = fairoffsetx;
	// 	fairfx.y = fairoffsety;
	
	
	
	case AT_NSPECIAL:
		switch (window)
		{
			case 1:
				if (window_timer == 1)
				{
					clear_button_buffer(PC_SPECIAL_PRESSED);
					shadowBallReverse = false;
					// set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, shadowBallCharge*2+20);
					// set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, shadowBallCharge*2+20);
					sbSFX[0] = sound_play(sound_get("nspecstart"), false, 0, 0.6+shadowBallCharge/shadowBallChargeMax*0.15, 0.8+shadowBallCharge/shadowBallChargeMax*0.25);

					sbSFX[1] = sound_play(sound_get("nspeccharge"), true, 0, 0.55+shadowBallCharge/shadowBallChargeMax*0.25, 0.8+shadowBallCharge/shadowBallChargeMax*0.25);
					air_accel = default_air_accel*0.75;
				}
				if (!shadowBallReverse && (spr_dir==1?left_down:right_down) && window_timer < 5)
				{
					hsp *= -1;
					spr_dir *= -1;
					shadowBallReverse = true;
				}
				break;

			case 2:
				if (state_timer == 120 && !hitpause) 
				set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, shadowBallCharge*2+20);
				set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, shadowBallCharge*2+20);
				can_jump = !was_parried;
				can_shield = !was_parried;
				move_cooldown[attack] = 10;
				if (was_parried || (free && djumps == 1 && jump_pressed) || (free && shield_pressed && !has_airdodge))
				{
					window = 5;
					window_timer = 0;
					air_accel = default_air_accel;
					sound_stop(sbSFX[1]);
				}
				if (special_pressed) {
					InitAuraSphere();
					air_accel = default_air_accel;

					sound_stop(sbSFX[1]);
				}
				break;

			case 3:
				sound_stop(sbSFX[0]);
				sound_stop(sbSFX[1]);
				if(window_timer == 1){
					if(shadowBallCharge < shadowBallChargeMax/3){
						sound_play(sound_get("smallnspec"));
					} else if(shadowBallCharge < shadowBallChargeMax*2/3){
						sound_play(sound_get("midnspec"));
					} else {
						sound_play(sound_get("largenspec"));
					}
				}

				break;

			case 4:
				// if(window_timer == 0){
				// 	//spawn the orb
				// 	orb = create_hitbox(AT_NSPECIAL, 2, 0, 0);
				// 	orb.x = x;
				// 	orb.y = y-30;
				// }
				
				move_cooldown[attack] = 20;
				break;
		}
		break;
	
	case AT_FSPECIAL:
		move_cooldown[AT_FSPECIAL] = 10;
		if(window == 1 && window_timer == 13){
			//can_fast_fall = false;
			if (free) {
				vsp = clamp(vsp, -1,1)
				hsp = clamp(hsp, -1,1)
			}
		}

		if(window == 2 && window_timer == phone_window_end && !has_hit_player && !was_parried){
			//missed fspecial, summon trap
			fadingTrapX = trapX;
			fadingTrapY = trapY;

			trapX = x + 120 * spr_dir;
			trapY = y - 45;

			trapboxCurrentTime = 0;

			if(array_length(trapOrbStacks) > 0){
				//clean up fadingtraporbstacks
				for (var i = 0; i < array_length(fadingTrapOrbStacks); i++) {
					var stack = fadingTrapOrbStacks[i];
					instance_destroy(stack.id);
				}

				var _len = array_length(trapOrbStacks);
				fadingTrapOrbStacks = [];
				array_copy(fadingTrapOrbStacks, 0, trapOrbStacks, 0, _len);

				//print(array_length(fadingTrapOrbStacks))
				
				//summon fading trap hitbox
				fadingTrapbox = create_hitbox(AT_FSPECIAL, 7, 0, 0);
				fadingTrapbox.x = fadingTrapX;
				fadingTrapbox.y = fadingTrapY;
			}

			trapOrbStacks = [];

			//clear trap hitboxes
			with (trapboxCollectable) {
				instance_destroy(id);
			}
			with (trapbox) {
				instance_destroy(id);
			}

			var orbsToAdd = 3;
			repeat(orbsToAdd) {
				var hbox = create_hitbox(AT_FSPECIAL, 3, 0, 0);
				// hbox.player = my_hitboxID.player;
				// hbox.can_hit[hit_player_obj.player] = false;
				hbox.can_hit[player] = true;
				hbox.player = player;
				trapOrbStacks = array_push(trapOrbStacks, hbox);
			}

			//create trapbox, which is the actual light+ hitbox for the trap
			trapbox = create_hitbox(AT_FSPECIAL, 5, 0, 0);
			trapbox.x = trapX;
			trapbox.y = trapY;
			trapbox.can_hit_self = true;
			trapbox.player = player;

			trapboxCollectable = create_hitbox(AT_FSPECIAL, 6, 0, 0);
			trapboxCollectable.x = trapX;
			trapboxCollectable.y = trapY;

			trapboxCollectable.can_hit_self = true;
			trapboxCollectable.player = player;
			trapboxCollectable.can_hit[player] = true;
			with (oPlayer) {
				if ("mewtwoOrbId" in self) {
					other.trapbox.can_hit[player] = false;
					other.trapboxCollectable.can_hit[player] = false;
				}
			}
		}
    break;
	

	case AT_USPECIAL:
		can_move = false;
		can_fast_fall = false;
		var spd = 16;
		uspecial_dist = 175;
		teleframes = 4;
		switch(window){
			case 1:
				if(window_timer == 1){
					sound_play(sound_get("teleport"));
				}
				if(window_timer < phone_window_end){
					hsp = 0;
					vsp = 0;
				}
				// ground_friction = 0.1;
				// if !free{
				// 	vsp = -10;
				// }
				hsp *= 0.85;
				vsp *= 0.85;
				if !joy_pad_idle{
					array_push(uspecial_direction_arr, joy_dir);
				}
				if(window_timer >= 14){
					//make mewtwo invisible and invincible
					set_attack_value(AT_USPECIAL, AG_SPRITE, asset_get("empty_sprite"));
					hurtboxID.sprite_index = asset_get("empty_sprite");
					draw_indicator = false;
				}
				if window_timer == phone_window_end{
					//Ledge Snap 
					moved_up = false;
					uspecial_direction = uspecial_direction_arr[max(0, array_length(uspecial_direction_arr) - 4)]; // ignore the last 3 frames of non-idle joystick input, because of weird pseudo-snapback behavior on analog sticks
					//add a small direction of uair and dair on keyboards
					var angledUp = false;
					var angledDown = false;
					if(down_strong_down){
						angledUp = true;
						
						// print("angled down" + string(uspecial_direction))
					}
					if(up_strong_down){
						angledDown = true;
						
						// print("angled up" + string(uspecial_direction))
					}
					if(uspecial_direction < 90 || uspecial_direction > 270 || (uspecial_direction == 90 && spr_dir == 1) || (uspecial_direction == 270 && spr_dir == 1)){
						var swap = angledUp;
						angledUp = angledDown;
						angledDown = swap;
					}
					if(angledUp){
						uspecial_direction += 15;
					}
					if(angledDown){
						uspecial_direction -= 15;
					}
					// print(string(uspecial_direction) + "new")
					hsp = lengthdir_x(uspecial_dist/teleframes, uspecial_direction);
					vsp = lengthdir_y(uspecial_dist/teleframes, uspecial_direction);
					fall_through = true;
				}
				break;
			case 2:
				// free = true;
				can_wall_jump = true;

				if window_timer < teleframes{
					hsp = lengthdir_x(uspecial_dist/teleframes, uspecial_direction);
					vsp = lengthdir_y(uspecial_dist/teleframes, uspecial_direction);
					if (!moved_up){
						if (free && place_meeting(x+spr_dir,y,asset_get("par_block"))){
							for (var i = 0; i < 40; i++){
								if (!place_meeting(x+spr_dir,y-(i+1),asset_get("par_block"))){
									y -= i;
									moved_up = true;
									
									break;
								}
							}
							y -= 1;
							//go further since you were stopped early
							hsp = lengthdir_x(uspecial_dist*2/teleframes, uspecial_direction);
						}
					}
					draw_indicator = false;
				}
				if window_timer == teleframes{
					hsp = lengthdir_x(spd, uspecial_direction);
					vsp = lengthdir_y(spd, uspecial_direction);
					//make mewtwo go forwards a little bit minimum
					if(abs(hsp) <= abs(8*spr_dir)){
						hsp = 8 * spr_dir;
					}
					//make mewtwo go down a little bit minimum
					if(abs(vsp) <= abs(8)){
						vsp = 8;
					}
					//make mewtwo visible and vulnerable
					set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
					hurtboxID.sprite_index = sprite_get("uspecial_hurt");
					ledgeCancelling = false;
				}
				if window_timer > teleframes{
					if(!free){
						ledgeCancelling = true;
					}
					hsp *= 0.8;
					vsp *= 0.8;
					if(free && ledgeCancelling){
						ledgeCancelling = false;
						state = PS_IDLE_AIR;
					}
				}

				
				
				break;
		}
		break;
	
	
	case AT_DSPECIAL:
		can_move = false;
    	can_fast_fall = false;
    	can_move = window < 7;
    	move_cooldown[AT_DSPECIAL] = 20;
    	if (free && window < 7) hsp = clamp(hsp, -2, 2);
		if (window < 7 && dspecialStall == false) vsp = clamp(vsp, -2, 2);
		if(window < 7 && dspecialStall == true){
			vsp = clamp(vsp, -4, 4)
		}

    	if (window == 1 && window_timer == phone_window_end && !hitpause) {
			meleeCounter = false;
			var nspecial_article = instance_create(x, y - 32, "obj_article1");
			nspecial_article.spr_dir = spr_dir;
			set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20); //reset endlag length
			// invince_time = 200;
			// invincible = true;
			hurtboxID.sprite_index = asset_get("empty_sprite");
			projDamageEaten = 0;
    	}
		if(window == 2 && dspecialStall == false){
			vsp = 0;
			hsp = 0;
		}
		if(window == 3){
			can_move = true;
			// invince_time = 0;
			// invincible = false;
			dspecialStall = true;
			if(window_timer >= 4){
				hurtboxID.sprite_index = sprite_get("dspecial_hurt");
			}
		}
		break;
	
	case AT_TAUNT:

		break;
}

//7axel7 hitbox visualizer
#define Visualize(attack, hitboxNumber){
	var visual = instance_create(x, y, "obj_article2");

	with visual {
		render_sprite = sprite_get("7axel7visualizer");
		spr_dir = other.spr_dir;
		_image_index = 0;
		state = 1;
		_player = other;
	}

	visual.xOffset = get_hitbox_value( attack, hitboxNumber, HG_HITBOX_X );
	visual.yOffset = get_hitbox_value( attack, hitboxNumber, HG_HITBOX_Y );
	visual.width = get_hitbox_value( attack, hitboxNumber, HG_WIDTH );
	visual.height = get_hitbox_value( attack, hitboxNumber, HG_HEIGHT );
	visual.lifetime = get_hitbox_value( attack, hitboxNumber, HG_LIFETIME );

	var parent = get_hitbox_value(attack,hitboxNumber,HG_PARENT_HITBOX);


	if(parent != 0){
		visual.xOffset = get_hitbox_value( attack, parent, HG_HITBOX_X );
		visual.yOffset = get_hitbox_value( attack, parent, HG_HITBOX_Y );
		visual.width = get_hitbox_value( attack, parent, HG_WIDTH );
		visual.height = get_hitbox_value( attack, parent, HG_HEIGHT );
		visual.lifetime = get_hitbox_value( attack, parent, HG_LIFETIME );
	}

	visual.x = x+visual.xOffset*visual.spr_dir;
	visual.y = y+visual.yOffset;
}

//lucario gradual aura sphere charge code
#define InitAuraSphere()
{
	if(shadowBallCharge > shadowBallChargeMax){
		shadowBallCharge = shadowBallChargeMax;
	}
	destroy_hitboxes();
	set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, shadowBallCharge*2+20);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, shadowBallCharge*2+20);
	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, floor(lerp(3, 15, shadowBallCharge/shadowBallChargeMax)));
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, lerp(4, 10, shadowBallCharge/shadowBallChargeMax));
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, lerp(0.3, 0.9, shadowBallCharge/shadowBallChargeMax));
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, lerp(7, 15, shadowBallCharge/shadowBallChargeMax));
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, lerp(0.3, 1, shadowBallCharge/shadowBallChargeMax));
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, lerp(3, 10, shadowBallCharge/shadowBallChargeMax));
	// set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, shadowBallCharge/shadowBallChargeMax>0.5?aurabig_effect:aura_effect);
	// set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, shadowBallCharge/shadowBallChargeMax>0.5?aurabig_effect:aura_effect);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_"+(shadowBallCharge/shadowBallChargeMax>0.5?"heavy":"medium")));
	// set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, shadowBallCharge/shadowBallChargeMax>0.2?0:9);
	set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, lerp(-2, -6, min(shadowBallCharge/shadowBallChargeMax,1)));
	window = 3;
	window_timer = 0;
	clear_button_buffer(PC_SPECIAL_PRESSED);
}

#define Grab(xpos, ypos, xsmooth, ysmooth) //modified lukastar grab code
{
	var target = hit_player_obj;
	
	if(target == noone) {
		return;
	}

	if (ysmooth == 0 || xsmooth == 0)
	{
		return;
	}

	var dx = ((x + spr_dir * xpos) - target.x)/(xsmooth)
	var dy = ((y + ypos) - target.y)/(ysmooth)

	//avoid constant y flooring errors
	if(abs(dy) < 1 && dy != 0){
		dy = dy/abs(dy);
	}

	if(abs(dx) < 1 && dx != 0){
		dx = dx/abs(dx);
	}

	target.x += dx;

	target.y += dy;

	target.hsp = 0;
	target.old_hsp = 0;
	target.old_vsp = 0;
	target.vsp = 0; 

	// print("miss" + string((abs((y +  ypos) - target.y))) + " " + string(dy));
}

#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion