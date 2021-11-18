//Article solid functionality
// if(hitstop) exit;

switch(variant) {
	case "ice block":
		//#region Ice Block
		// user_event(5);
		if(age == 0) {
			life = -1;
			eject_coins = true;
			
			// neo_carry_data.is_grabbable = true;
			
			unbashable = false;
			
			image_alpha = 0;
			
			slip_sfx_array = [noone, noone, noone];
			rumble_sfx_array = [noone, noone, noone];
			fall_rumbling = false;
			escape_rumbling = false;
			render_rumble = false;
			sfx_ice_slide = sound_get("skid_ice");
			sfx_ice_rumble = sound_get("ice_rumble");
			sfx_ice_shatter = sound_get("ice_escape");
			sfx_ice_land = sound_get("footstep_block2");
			spr_no_mask = sprite_get("pmask_holp");
			spr_ice_block = sprite_get("item_ice_block2");
			
			shatter_hsp = (get_gameplay_time() % 2 == 0)?6.5:-6.5;
			shatter_vsp = -10;
			
			transform_hitbox_player = -1; points_owner = noone;
			
			register_offscreen_indicator("item_ice_offscreen");
			
			transition_safelist = [
				//Article
				"spr_dir", "unbashable", "ignores_walls", "can_be_grounded", "hsp", "vsp", "free", "hitstop", "player_id",
				
				//Hitbox
				"steve_death_message", "orig_steve_death_message",
				
				//Init
				"neo_carry_data", "default_owner", "variant", "subvariant", "state", "frozen_sprite", "frozen_xscale",
				"frozen_yscale", "frozen_angle", "frozen_colour", "frozen_shader_owner", "frozen_use_shader", "frozen_image",
				"contains_player", "frozen_xoffset", "frozen_yoffset", "neo_freeze_data", "state_timer", "bashed_id",
				
				//Age0 init
				"life", "age", "slip_sfx_array", "rumble_sfx_array", "fall_rumbling", "escape_rumbling", "render_rumble",
				"sfx_ice_slide", "sfx_ice_rumble", "sfx_ice_shatter", "sfx_ice_land", "spr_no_mask", "spr_ice_block",
				"shatter_hsp", "shatter_vsp", "transform_hitbox_player", "points_owner", "eject_coins",
			];
			// transition_safelist = variable_instance_get_names(id);
		}
		
		if(true && age % round(((1024 / image_xscale) + (1024 / image_yscale)) / 2) == 0) {
			var old_player = player; player = player_id.player;
			var frost_cloud = instance_create(round(x - image_xscale) + random_func(0, floor(image_xscale * 2), true), round(y - image_yscale) + random_func(1, floor(image_yscale * 2), true), "obj_article1");
			frost_cloud.variant = "frost cloud";
			frost_cloud.image_xscale = 2; frost_cloud.image_yscale = 2; frost_cloud.spin = random_func(2, 2, true)?1:-1;
			frost_cloud.image_alpha = 0.4; frost_cloud.image_angle = random_func(3, 360, true);
			frost_cloud.life = 120;
			
			player = old_player;
		}
		
		with(oPlayer) if(!free && url == other.player_id.url && place_meeting(x, y + 1, other)) movetype_override = MOVESTATS_OBJ.ice;
		
		if(neo_carry_data.carried_type) {
			default_owner = neo_carry_data.carrier_id;
		}
		
		if(getting_bashed) state = "Bashed";
		else if(neo_carry_data.was_released && !hitstop) {
			switch(neo_carry_data.was_released) {
				case 1:
					free = false;
					neo_carry_data.was_released = 0;
					// print("placed gently!");
				break;
				case 2:
					hsp += neo_carry_data.carried_dir * 3.4; vsp = 0;
					transform_hitbox_player = neo_carry_data.carrier;
					// print(`Thrown; now belongs to player ${neo_carry_data.carrier}`)
					points_owner = neo_carry_data.carrier_id;
				case 3:
					transform_hitbox_player = neo_carry_data.carrier;
					// print(`Thrown; now belongs to player ${neo_carry_data.carrier}`)
					points_owner = neo_carry_data.carrier_id;
				break;
				case 4:
					hsp += neo_carry_data.carried_dir * 2; vsp = -2;
					transform_hitbox_player = neo_carry_data.carrier;
					// print(`Thrown; now belongs to player ${neo_carry_data.carrier}`)
					points_owner = neo_carry_data.carrier_id;
				break;
			}
			state = "Grounded";
		}
		
		if(transform_hitbox_player == -1 && !hitstop) switch(state) {
			case "Bashed":
				if(!getting_bashed) {
					transform_hitbox_player = player;
					player = player_id.player;
					state = "Grounded";
				}
				else {
					mask_index = spr_no_mask;
				}
			break;
			
			case "Initial":
				if(!free)
					change_state("Grounded");
				else if(state_timer > 75) {
					transform_hitbox_player = default_owner.player;
					if(instance_exists(contains_player))
						contains_player.neo_data.frozen_frames *= 0.5;
				}
				else if(state_timer > 40)
					fall_rumbling = true;
				
				if(age > 2) {
					var hit_data = get_attacked_data(false, 50, 1, true, true, true, true, "ice_block_filter");
					if(hit_data.hit) {
						state = "Shatter";
						shatter_hsp = hit_data.launch_hsp; shatter_vsp = hit_data.launch_vsp;
						give_coins_id = hit_data.hitbox_id.player_id;
							
						//Shatter hitbox
						make_shatter_hitbox(hit_data);
					}
				}
			break;
			
			case "Grounded":
				if(free || abs(hsp) > 4) {
					transform_hitbox_player = default_owner.player;
				}
				else {
					hsp = (abs(hsp) < 0.06)?0:(hsp - sign(hsp) * 0.06);
					if(age > 2) {
						var hit_data = get_attacked_data(false, 50, 1, true, true, true, true, "ice_block_filter");
						if(hit_data.hit) {
							state = "Shatter";
							shatter_hsp = hit_data.launch_hsp; shatter_vsp = hit_data.launch_vsp;
							give_coins_id = hit_data.hitbox_id.player_id;
							
							//Shatter hitbox
							make_shatter_hitbox(hit_data);
						}
					}
				}
			break;
		}
		
		if(state == "Shatter") {
			if(eject_coins) {
				if("give_coins_id" not in self) give_coins_id = player_id; //god almighty this is bad
				player_id.queued_earn_coins_for = [true, x, y, give_coins_id, player_id, 3, true];
			}
			
			var ice_chunk_dir = 1;
			var bottom_y = y + image_yscale; if(image_yscale < 0) bottom_y -= image_yscale;
			var ice_chunk_index = 0;
			
			var ice_chunks_count = 3;
			
			repeat(2) {
				for(var chunk_index = 0; chunk_index < ice_chunks_count; chunk_index++;) {
					var chunk_x = round(x + image_xscale * 0.5 * ice_chunk_dir);
					var chunk_y = round(y + image_yscale - (chunk_index * (image_yscale * 2 / ice_chunks_count)));
					
					var ice_chunk = instance_create(chunk_x, chunk_y, "obj_article1");
					ice_chunk.variant = "ice chunk"; ice_chunk.sprite_index = sprite_get("decal_ice_chunk");
					ice_chunk.life = 200; //ice_chunk.random_seed = 3 + random_func(chunk_index % 10, 5, true);
					ice_chunk.fake_hsp = lengthdir_x(6, point_direction(x, bottom_y, ice_chunk.x, ice_chunk.y));
					ice_chunk.fake_vsp = lengthdir_y(6, point_direction(x, bottom_y, ice_chunk.x, ice_chunk.y));
				}
				
				ice_chunk_dir *= -1;
				ice_chunk_index = 0;
			}
			
			sound_play(sfx_ice_shatter);
			if(subvariant == "frozen player") {
				
			}
			else {
				var tossed_sprite = instance_create(round(x + spr_dir * frozen_xoffset), round(y + frozen_yoffset), "obj_article1");
				tossed_sprite.variant = "tossed sprite shader"; tossed_sprite.life = 300;
				
				tossed_sprite.shader_owner = frozen_shader_owner;
				tossed_sprite.sprite_index = frozen_sprite; tossed_sprite.image_index = frozen_image;
				tossed_sprite.image_xscale = spr_dir * frozen_xscale; tossed_sprite.image_yscale = frozen_yscale;
				tossed_sprite.image_angle = frozen_angle; tossed_sprite.image_blend = frozen_colour;
				
				tossed_sprite.fake_hsp = shatter_hsp; tossed_sprite.fake_vsp = shatter_vsp;
			}
			
			sound_stop(rumble_sfx_array[0]);
			sound_stop(rumble_sfx_array[1]);
			sound_stop(rumble_sfx_array[2]);
			
			instance_destroy(); exit;
		}
		
		if(!hitstop && transform_hitbox_player != -1) {
			player = player_id.player; mask_index = sprite_index;
			var ice_hitbox = transform_to_instance(flotbox_article(player_id.ATTACKS_OBJ.ice_block, x, y), false, [], transition_safelist);
			ice_hitbox.transition_safelist = transition_safelist;
			if(instance_exists(contains_player)) {
				contains_player.neo_data.frozen_ice_instance = ice_hitbox;
				ice_hitbox.can_hit[contains_player.player + (contains_player.clone || contains_player.custom_clone) * 10] = false;
			}
			ice_hitbox.image_xscale = image_xscale / 100;
			ice_hitbox.image_yscale = image_yscale / 100;
			
			array_push(player_id.neo_data_compat.carryable_objects, ice_hitbox);
			
			instance_destroy(); exit;
		}
		
		if(fall_rumbling || escape_rumbling) {
			if(get_gameplay_time() % 4 == 0) {
				sound_stop(rumble_sfx_array[2]);
				rumble_sfx_array[2] = rumble_sfx_array[1];
				rumble_sfx_array[1] = rumble_sfx_array[0];
				rumble_sfx_array[0] = sound_play(sfx_ice_rumble);
			}
			fall_rumbling = false;
			escape_rumbling = false;
			render_rumble = true;
		}
		else {
			render_rumble = false;
			sound_stop(rumble_sfx_array[0]);
			sound_stop(rumble_sfx_array[1]);
			sound_stop(rumble_sfx_array[2]);
		}
		
		//#endregion
	break;
	
	// case "stone block":
		//#region Stone Block
		
	// 	//Prepare object properties
	// 	if(age == 0) {
	// 		is_liftable = true;
	// 		life = -1;
			
	// 		fall_accel_active = 0.75; fall_speed_active = 24;
			
	// 		// register_offscreen_indicator("item_stone_block_offscreen");
	// 	}
	// 	//React to getting tossed
	// 	if(process_liftthrow) {
			
	// 		//Ensure correct properties
	// 		can_be_grounded = true;
	// 		ignores_walls = false;
	// 		process_liftthrow = false;
	// 		interactable_time = get_gameplay_time() + 4;
			
	// 		//Apply throwing velocities
	// 		if(lifter.url == player_id.url) {
	// 			hsp = kick_dir * 9;
	// 			vsp = -2;
	// 		}
			
	// 		//Put in tossed state
	// 		mark_for_destruction = true;
	// 		// var thrown_stone = create_flotbox_article(AT_USPECIAL, 5, round(x), round(y));
	// 		thrown_stone.player_id = player_id; thrown_stone.spr_dir = kick_dir;
	// 		thrown_stone.hsp = hsp; thrown_stone.vsp = vsp;
	// 		thrown_stone.image_index = image_index;
	// 		thrown_stone.player = lifter.player;
	// 	}
	// 	if(!mark_for_destruction) switch(state) {
	// 		case "Offer":
	// 			perform_offer();
	// 		break;
	// 		case "Drop-in":
	// 			perform_dropin();
				
	// 			with(oPlayer) {
	// 				if(place_meeting(x, y - other.vsp, other)) {
	// 					var bounce_dir = sign(other.x - x); if(bounce_dir == 0) bounce_dir = spr_dir;
	// 					other.hsp = bounce_dir * 4; other.vsp = -6; other.state = "Active";
	// 					other.ignores_walls = false; other.can_be_grounded = true;
	// 				}
	// 			}
	// 		break;
	// 		case "Active":
	// 			if(free) {
	// 				vsp += fall_accel_active;
	// 				if(vsp > fall_speed_active) vsp = fall_speed_active;
					
	// 				if(vsp > 3 && (place_meeting(x + hsp, y + vsp, asset_get("par_block")) || (place_meeting(x + hsp, y + vsp, asset_get("par_jumpthrough")) && !place_meeting(x + hsp, y, asset_get("par_jumpthrough"))))) {
	// 					hsp *= 0.25;
	// 					vsp *= -0.25;
	// 					create_burst_decal(x, y + 16 + vsp);
	// 					sound_play(sound_get("pow_block"));
	// 					shake_camera(5, 3);
	// 				}
	// 			}
	// 			else {
	// 				if(abs(hsp) > 0.6) {
	// 					hsp += sign(hsp) * -0.6;
	// 				}
	// 				else {
	// 					hsp = 0;
	// 				}
	// 			}
				
	// 			var change_x = x - prev_x;
	// 			if(change_x != 0) {
	// 				with(oPlayer) if(!free && place_meeting(x, y + 1, other)) {
	// 					x += change_x;
	// 				}
	// 			}
				
	// 			var found_hitbox = noone;
	// 			with(pHitBox) if(throws_rock && place_meeting(x, y, other)) {
	// 				found_hitbox = id;
	// 			}
				
	// 			if(found_hitbox != noone) {
	// 				var enemy = found_hitbox.player_id;
					
	// 				var muno_launch_angle = 0;
	// 				with(enemy) muno_launch_angle = get_hitbox_value(found_hitbox.attack, found_hitbox.hbox_num, other.HG_MUNO_OBJECT_LAUNCH_ANGLE);
	// 				var using_muno_launch_angle = (muno_launch_angle != 0);
					
	// 				var angle = using_muno_launch_angle?muno_launch_angle:get_hitbox_angle(found_hitbox);
	// 				var magnitude = found_hitbox.kb_value + (found_hitbox.kb_scale * 180 * 0.06);
					
	// 				var launch_hsp = lengthdir_x(magnitude, angle) * (using_muno_launch_angle?found_hitbox.spr_dir:1);
	// 				var launch_vsp = lengthdir_y(magnitude, angle);
	// 				if(launch_vsp > 0 && !free) {
	// 					create_burst_decal(x, y + 8);
	// 					launch_vsp *= -1;
	// 				}
					
	// 				hsp = launch_hsp;
	// 				vsp = launch_vsp;
	// 				lifter = enemy;
	// 				process_liftthrow = true;
	// 				kick_dir = sign(hsp); if(kick_dir == 0) kick_dir = enemy.spr_dir;
	// 				free = true;
					
	// 				if(found_hitbox.type == 1) {
	// 					var attack_hitstop = ceil(found_hitbox.hitpause + (found_hitbox.hitpause_growth * 100 * 0.12));
	// 					if(attack_hitstop > 0) {
	// 						if(enemy.hitpause) {
	// 							enemy.hitstop += attack_hitstop;
	// 						}
	// 						else {
	// 							enemy.hitpause = true; enemy.hitstop = attack_hitstop; enemy.hitstop_full = attack_hitstop;
	// 							enemy.old_hsp = enemy.hsp; enemy.old_vsp = enemy.vsp;
	// 							enemy.hsp = 0; enemy.vsp = 0;
	// 						}
	// 					}
						
	// 					enemy.has_hit = true;
	// 				}
	// 				else {
	// 					if(found_hitbox.enemies == 0) found_hitbox.destroyed = true;
	// 				}
					
	// 				sound_play(found_hitbox.sound_effect);
	// 				with(enemy) spawn_hit_fx(
	// 						0.5 * (other.x + (found_hitbox.x + found_hitbox.hit_effect_x)),
	// 						0.5 * (other.y + (found_hitbox.y + found_hitbox.hit_effect_y)),
	// 						found_hitbox.hit_effect);
	// 			}
	// 		break;
	// 		case "Carry":
	// 			x = lifter.x;
	// 		break;
	// 	}
		
		//#endregion
	// break;
	
	case "POW":
		//#region POW Block
		
		//Prepare object properties
		if(age == 0) {
			is_liftable = true;
			life = -1;
			
			carry_turn = false;
			
			powplode = false;
			pow_sfx = sound_get("pow_block");
			
			register_offscreen_indicator("item_pow_block_offscreen");
		}
		//Animate
		image_index += 0.05;
		//React to getting tossed
		if(process_liftthrow) {
			//Ensure correct properties
			can_be_grounded = true;
			ignores_walls = false;
			process_liftthrow = false;
			interactable_time = get_gameplay_time() + 4;
			
			//Apply throwing velocities
			hsp = kick_dir * 9;
			vsp = -2;
			
			//Put in tossed state
			mark_for_destruction = true;
			// var thrown_pow = create_flotbox_article(AT_USPECIAL, 2, round(x), round(y));
			thrown_pow.hsp = kick_dir * 9; thrown_pow.vsp = -2;
			thrown_pow.image_index = image_index;
		}
		//React to instant Powplosion
		if(powplode) {
			sound_play(pow_sfx);
			mark_for_destruction = true;
			shake_camera(43, 31);
			
			// var powplosion = create_flotbox_article(AT_USPECIAL, 3, round(x), round(y));
		}
		
		if(false) {
			
			sound_play(pow_sfx);
			mark_for_destruction = true;
			shake_camera(43, 31);
			
			// var powplosion = create_flotbox_article(AT_USPECIAL, 3, round(x), round(y));
			powplosion.player = enemy.player;
		}
		
		switch(state) {
			case "Offer":
				perform_offer();
			break;
			case "Drop-in":
				perform_dropin();
			break;
			case "Active":
				if(free) {
					vsp += fall_accel_active;
					if(vsp > fall_speed_active) vsp = fall_speed_active;
					
					if(vsp > 3 && (place_meeting(x, y + vsp, asset_get("par_block")) || (place_meeting(x, y + vsp, asset_get("par_jumpthrough")) && !place_meeting(x, y, asset_get("par_jumpthrough"))))) {
						hsp *= 0.25;
						vsp *= -0.25;
						create_burst_decal(x, y + 16 + vsp);
						sound_play(sound_get("bump"));
					}
				}
				else {
					if(abs(hsp) > 0.6) {
						hsp += sign(hsp) * -0.6;
					}
					else {
						hsp = 0;
					}
				}
			break;
			case "Carry":
				
			break;
		}
		
		//#endregion
	break;
}

//Collisions are disabled when invisible or manually told not to collide
// if(visible && can_collide) {
// 	if(mask_index == sprite_get("mask_dead"))
// 		mask_index = last_colliding_mask;
// 	else
// 		last_colliding_mask = mask_index;
// }
// else {
// 	mask_index = sprite_get("mask_dead");
// }

prev_x = x; prev_y = y;

age++; state_timer++;
if(age > life && life != -1) mark_for_destruction = true;
if((x > phone_blastzone_r && x > room_width) || (x < phone_blastzone_l && x < 0) || (y > phone_blastzone_b && y > room_height)) { instance_destroy(); exit; }
if(mark_for_destruction) instance_destroy();

#define hitbox_matches(hitbox_id, attack_entry)
	return(hitbox_id.player_id.url == attack_entry.url && hitbox_id.attack == attack_entry.attack && hitbox_id.hbox_num == attack_entry.hbox_num);

#define ice_block_filter(block_id)
	if(player_id.url == block_id.player_id.url) {
		var mario_id = block_id.player_id;
		if(hitbox_matches(id, mario_id.ATTACKS_OBJ.stomp) || hitbox_matches(id, mario_id.ATTACKS_OBJ.spin_jump))
			return(false);
	}
	return(true);

#define change_state(new_state)
	state = new_state;
	state_timer = 0;

#define perform_offer
	x = player_id.x;
	if(player_id.STAGE_COMPAT_OBJ.desynced_camera)
		y = player_id.y - 300;
	else
		y = get_instance_y(asset_get("camera_obj")) - (0.45 * view_get_hview());
	
	image_alpha = (state_timer % 10 < 5)?1.0:0.0;
	
	if(state_timer > 70) {
		change_state("Drop-in");
		image_alpha = 1.0;
		tangible_y = player_id.y - 64;
		exclusive = false;
		return(true);
	}
	return(false);

#define perform_dropin
	vsp += fall_accel_dropin;
	if(vsp > fall_speed_dropin) vsp = fall_speed_dropin;
	if(y > tangible_y) {
		can_be_grounded = true;
		ignores_walls = false;
		if(!free) change_state("Active");
	}

#define register_offscreen_indicator
/// register_offscreen_indicator(sprite, index = 0, x_offset = 0, y_offset = 0, leeway = 16)
var sprite = argument[0];
var index = argument_count > 1 ? argument[1] : 0;
var x_offset = argument_count > 2 ? argument[2] : 0;
var y_offset = argument_count > 3 ? argument[3] : 0;
var leeway = argument_count > 4 ? argument[4] : 16;
	return;
	// array_push(player_id.phone_offscreen, self); //TODO: re-enable for offscreen icons
	phone_offscr_sprite = sprite_get(sprite); // icon to display
	phone_offscr_index = index; // image_index of the icon
	phone_offscr_x_offset = x_offset; // x offset to draw the arrow at; uses spr_dir
	phone_offscr_y_offset = y_offset; // y offset to draw the arrow at
	phone_offscr_leeway = leeway; // approximate width/height of obj

#define create_burst_decal
/// create_burst_decal(burst_x = x, burst_y = y + vsp, rng_index = 0)
var burst_x = argument_count > 0 ? argument[0] : x;
var burst_y = argument_count > 1 ? argument[1] : y + vsp;
var rng_index = argument_count > 2 ? argument[2] : 0;
	var burst = instance_create(round(burst_x), round(burst_y), "obj_article1");
	burst.sprite_index = sprite_get("decal_burst");
	burst.image_angle = random_func(rng_index, 4, true) * 90;
	burst.life = 6; burst.variant = "burst";
	
	return(burst);

///LIB FUNCTIONS
#define get_attacked_data
/// get_attacked_data(should_launch = true, my_damage = 50, knockback_adj = 1, should_hitstop = true, owner_can_hit = true, teammates_can_hit = true, enemies_can_hit = true, ?filter_func = undefined)
var should_launch = argument_count > 0 ? argument[0] : true;
var my_damage = argument_count > 1 ? argument[1] : 50;
var knockback_adj = argument_count > 2 ? argument[2] : 1;
var should_hitstop = argument_count > 3 ? argument[3] : true;
var owner_can_hit = argument_count > 4 ? argument[4] : true;
var teammates_can_hit = argument_count > 5 ? argument[5] : true;
var enemies_can_hit = argument_count > 6 ? argument[6] : true;
var filter_func = argument_count > 7 ? argument[7] : undefined;
///ARGUMENTS
//should_launch: If true, the object will be launched on hit.
//my_damage: Used in knockback & hitstun calculations.
//knockback_adj: Used in knockback & hitstun calculations.
//should_hitstop: If true, the object will go into hitstop when attacked. If false, only the attacker can receive hitpause.
//owner_can_hit: If false, the owner cannot attack the object
//teammates_can_hit: If false, the owner's teammates cannot attack the object.
//respect_rock_ignore: If true, attacks that are configured to ignore Kragg's rock cannot hit this object.
//enemies_can_hit: If false, enemies (and stage hitboxes) cannot attack the object.
/*filter_func:
		If set to the name of a function (as a string), the function with that name will run on hitboxes
	that have gotten through the *_can_hit checks. It receives the object's instance ID as an argument.
	The function must return either true or false. If the function returns false, the hitbox cannot hit
	the object. If it returns true, it will continue processing normally. The filter function is run
	BEFORE collision is checked.*/

///RETURN
//The function returns a struct with the following values:
/*{
	hit: <boolean>,
	hitbox_id: <instance ID>,
	
	hitstop: <number>,
	hitstun: <number>,
	
	launch_angle: <number>,
	launch_magnitude: <number>,
	launch_hsp: <number>,
	launch_vsp: <number>
}*/
//If the object didn't get hit, only the first value (hit) will exist; everything else will be missing.
//You can use these values however you see fit if you store the output in a variable, like so:
// var hit_data = get_attacked_data(true); if(hit_data.hit) print(hit_data.hitbox_id.throws_rock);
	if("_hittable_time" not in self) _hittable_time = -100;
	if(_hittable_time > get_gameplay_time()) return({hit: false});
	
	var found_hitbox = noone, found_priority = -1, use_filter_func = filter_func != undefined, filter_func_index = (use_filter_func?script_get_index(filter_func):undefined);
	with(pHitBox) {
		//Cancel if the hitbox is in hitpause, it's the object running the function, or its priority is too low
		if(in_hitpause || id == other || hit_priority <= found_priority) continue;
		
		//Cancel if the hitbox owner isn't allowed to hit the object
		if(!owner_can_hit && player == other.player) continue;
		if(!teammates_can_hit && player != other.player && get_player_team(player) == get_player_team(other.player)) continue;
		if(!enemies_can_hit && get_player_team(player) != get_player_team(other.player)) continue;
		
		//Cancel if this hitbox is set up to ignore Kragg's rocks, or it has 0 damage (0-damage hitboxes ignore base-game articles)
		if(throws_rock == 2 || damage <= 0) continue;
		
		//Cancel if we're using a filter function and it says so
		if(use_filter_func && !script_execute(filter_func_index, other, id)) continue;
		
		//Cancel if the hitbox can only hit from above, and it wouldn't be hitting from above
		if("only_hit_below" in self && only_hit_below)
			if(!place_meeting(x + hsp - other.hsp, y + vsp - other.vsp, other) || place_meeting(x + hsp - other.hsp, y + vsp - other.vsp - 20, other))
				continue;
		
		//Cancel if the hitbox doesn't match our groundedness
		if((groundedness == 1 && other.free) || (groundedness == 2 && !other.free)) continue;
		
		//Remember this hitbox if it can hit the object
		if(place_meeting(x + hsp - other.hsp, y + vsp - other.vsp, other)) {
			found_hitbox = id;
			found_priority = hit_priority;
		}
	}
	if(found_hitbox == noone)
		return({hit: false});
	else {
		//Polite hitboxes don't cause knockback or hitstun or whatevs...
		if(found_hitbox.effect == 9) {
			should_launch = false;
			should_hitstop = false;
		}
		
		//Hit lockout
		_hittable_time = get_gameplay_time() + found_hitbox.no_other_hit + 10;
		
		//Process knockback
		var attack_angle = get_hitbox_angle(found_hitbox), attack_uses_muno_angle = false;
		if(found_hitbox.effect == 9)
			var attack_magnitude = 0;
		else
			var attack_magnitude = knockback_adj * (found_hitbox.kb_value + (found_hitbox.kb_scale * my_damage * 0.06));
		
		if("HG_MUNO_OBJECT_LAUNCH_ANGLE" in found_hitbox.player_id) {
			//If the attack's owner is a MunoPhone character, then respect their Muno Object Launch Angle hitbox grid index
			with(found_hitbox.player_id) var muno_launch_angle = get_hitbox_value(found_hitbox.attack, found_hitbox.hbox_num, HG_MUNO_OBJECT_LAUNCH_ANGLE);
			
			//If the muno launch angle isn't zero, then we should use it
			if(muno_launch_angle != 0) {
				if(found_hitbox.spr_dir < 0) muno_launch_angle = (180 - muno_launch_angle) % 360;
				attack_angle = muno_launch_angle;
				attack_uses_muno_angle = true;
			}
			
			//Note: If the hitbox has a Muno Object Launch Angle, then it will ignore its angle flipper.
		}
		var attack_launch_hsp = lengthdir_x(attack_magnitude, attack_angle), attack_launch_vsp = lengthdir_y(attack_magnitude, attack_angle);
		if(attack_launch_vsp > 0 && !free) attack_launch_vsp *= -1; //Launch up if we're spiked on the ground
		
		//Apply knockback
		if(should_launch) { hsp = attack_launch_hsp; vsp = attack_launch_vsp; }
		
		//Process hitpause
		var attack_hitstop = found_hitbox.hitpause, attacker_hitstop = 0;
		if(found_hitbox.type == 1 && attack_hitstop > 0) {
			attacker_hitstop = attack_hitstop;
			//For melee attacks, the enemy gets hitpause
			if(found_hitbox.player_id.hitpause) {
				found_hitbox.player_id.hitstop = max(attack_hitstop, found_hitbox.player_id.hitstop);
			}
			else {
				found_hitbox.player_id.hitpause = true;
				found_hitbox.player_id.hitstop = attack_hitstop;
				found_hitbox.player_id.hitstop_full = attack_hitstop;
				found_hitbox.player_id.old_hsp = found_hitbox.player_id.hsp;
				found_hitbox.player_id.old_vsp = found_hitbox.player_id.vsp;
				found_hitbox.player_id.hsp = 0; found_hitbox.player_id.vsp = 0;
			}
		}
		//Apply hitpause to object
		attack_hitstop += found_hitbox.extra_hitpause;
		if(should_hitstop && attack_hitstop > 0) {
			hitstop = max(hitstop, attack_hitstop);
			_hittable_time += attack_hitstop;
		}
		
		//Calculate hitstun
		if(found_hitbox.effect == 9)
			var attack_hitstun = 0;
		else
			var attack_hitstun = (found_hitbox.hitstun_factor == 0?1:found_hitbox.hitstun_factor) * (found_hitbox.kb_value * 4 * ((knockback_adj - 1) * 0.6 + 1) + my_damage * 0.12 * found_hitbox.kb_scale * 4 * 0.65 * knockback_adj);
		
		//Hit reactions
		if(found_hitbox.type == 1) {
			found_hitbox.player_id.has_hit = true;
		}
		else {
			if(found_hitbox.enemies == 0) found_hitbox.destroyed = true;
		}
		
		//Hit FX and sound effect
		sound_play(found_hitbox.sound_effect);
		if(found_hitbox.hit_effect != 1) with(found_hitbox) spawn_hit_fx((x + other.x + hit_effect_x) / 2, (y + other.y + hit_effect_y) / 2, hit_effect);
		
		//Return struct
		return({
			hit: true,
			hitbox_id: found_hitbox,
			
			hitstop: attack_hitstop,
			hitstun: attack_hitstun,
			
			launch_angle: attack_angle, launch_angle_uses_muno_angle: attack_uses_muno_angle,
			launch_magnitude: attack_magnitude,
			launch_hsp: attack_launch_hsp, launch_vsp: attack_launch_vsp
		});
	}

#define transform_to_instance
/// transform_instance(new_instance, should_delete = true, blocklist = [], safelist = [])
//Note from function author: It's a good idea to always write "exit;" after this function, unless you really know what you're doing.
//Example use: transform_to_instance(instance_create(x, y, "obj_article3")); exit;
//Example use: transform_to_instance(hitbox_create(AT_FSPECIAL, 1, x, y)); exit;
var new_instance = argument[0];
var should_delete = argument_count > 1 ? argument[1] : true;
var blocklist = argument_count > 2 ? argument[2] : [];
var safelist = argument_count > 3 ? argument[3] : [];
	//Some things will be pushed into the blocklist for safety
	
	var was_hitbox = object_index == pHitBox, is_hitbox = new_instance.object_index == pHitBox;
	if(is_hitbox) { //do NOT mess with these variables on hitboxes :(
		array_push(blocklist, "type");
		array_push(blocklist, "attack");
		array_push(blocklist, "hbox_num");
		array_push(blocklist, "hitbox_timer");
	}
	else array_push(blocklist, "num");
	array_push(blocklist, "init");
	array_push(blocklist, "sync_id");
	
	//Transfer variables
	if(array_length_1d(safelist) > 0)
		merge_instance_data(new_instance, safelist, blocklist);
	else
		merge_instance_data(new_instance, variable_instance_get_names(id), blocklist);
	
	//Transfer instance properties
	merge_instance_data(new_instance, (is_hitbox)?[
		"visible",
		"depth",
		
		"sprite_index",
		"image_alpha",
		"image_blend",
		"image_index"
	]:[
		"visible",
		"depth",
		
		"sprite_index",
		"image_alpha",
		"image_angle",
		"image_blend",
		"image_index",
		"image_xscale",
		"image_yscale",
		
		"mask_index"
	], blocklist);
	
	if(was_hitbox != is_hitbox) {
		if(is_hitbox) {
			new_instance.proj_angle = image_angle;
			new_instance.collision_sprite = mask_index;
		}
		else {
			new_instance.image_angle = proj_angle;
			new_instance.mask_index = collision_sprite;
		}
	}
	
	if(should_delete) instance_destroy();
	return(new_instance);

#define merge_instance_data(new_instance, vars_names, blocklist)
//This is a helper function used by transform_to_instance. You probably shouldn't be calling it yourself.
	var vars_count = array_length_1d(vars_names), blocklist_count = array_length_1d(blocklist);
	for(var incrementeroo = 0; incrementeroo < vars_count; incrementeroo++;) {
		var in_blocklist = false;
		for(var counteroo = 0; !in_blocklist && counteroo < blocklist_count; counteroo++;)
			if(blocklist[counteroo] == vars_names[incrementeroo])
				in_blocklist = true;
		
		if(!in_blocklist)
			variable_instance_set(new_instance, vars_names[incrementeroo], variable_instance_get(id, vars_names[incrementeroo], undefined));
	}

#define make_shatter_hitbox(hit_data)
	if(subvariant == "frozen player") {
		hit_data.hitbox_id.can_hit[@contains_player.player] = false;
		
		player = player_id.player;
		var shatterbox = flotbox_article(player_id.ATTACKS_OBJ.ice_shatter, x, y);
		for(var incrementeroo = 0, total = array_length(shatterbox.can_hit); incrementeroo < total; incrementeroo++;) {
			shatterbox.can_hit[@incrementeroo] = false;
		}
		shatterbox.can_hit[@contains_player.player] = true;
		
		shatterbox.player = hit_data.hitbox_id.player;
		// shatterbox.visible = false;
		shatterbox.image_xscale = image_xscale / 100;
		shatterbox.image_yscale = image_yscale / 100;
		
		shatterbox.spr_dir = hit_data.hitbox_id.spr_dir;
		
		shatterbox.damage = hit_data.hitbox_id.damage * 2;
		shatterbox.kb_angle = hit_data.hitbox_id.kb_angle;
		shatterbox.kb_value = hit_data.hitbox_id.kb_value * 1.25;
		shatterbox.kb_scale = hit_data.hitbox_id.kb_scale + 0.1;
		shatterbox.effect = hit_data.hitbox_id.effect;
		shatterbox.hitpause = hit_data.hitbox_id.hitpause;
		shatterbox.hitpause_growth = hit_data.hitbox_id.hitpause_growth;
		shatterbox.hit_effect = hit_data.hitbox_id.hit_effect;
		shatterbox.fx_particles = hit_data.hitbox_id.fx_particles;
		shatterbox.extra_hitpause = hit_data.hitbox_id.extra_hitpause;
		shatterbox.camera_shake = hit_data.hitbox_id.camera_shake;
		shatterbox.no_other_hit = max(10, hit_data.hitbox_id.no_other_hit);
		shatterbox.hitstun_factor = hit_data.hitbox_id.hitstun_factor;
		shatterbox.dumb_di_mult = hit_data.hitbox_id.dumb_di_mult;
		shatterbox.can_tech = hit_data.hitbox_id.can_tech;
		shatterbox.force_flinch = hit_data.hitbox_id.force_flinch;
	}

#define flotbox_article(hitbox_obj, x, y)
	//Create a hitbox with fixed FX Particles
	var new_hitbox = create_hitbox(hitbox_obj.attack, hitbox_obj.hbox_num, round(x), round(y));
	with(player_id) {
		new_hitbox.fx_particles = get_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_HIT_PARTICLE_NUM);
		new_hitbox.steve_death_message = string_replace(get_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_FQF_STEVE_DEATH_MESSAGE), "%s", muno_char_name);
	}
	
	//Assign the hitbox object to the new hitbox
	new_hitbox.identity = hitbox_obj;
	return(new_hitbox);