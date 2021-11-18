//this is where crazy power up things happen
if(!instance_exists(self)) exit;
if((x > player_id.phone_blastzone_r && x > room_width) || (x < player_id.phone_blastzone_l && x < 0) || (y > player_id.phone_blastzone_b && y > room_height)) { instance_destroy(); exit; }
if(identity.player_dependent_fx) hit_effect = identity.fx_array[(player > player_id.MAX_PLAYER_NUM)?0:player];
if(identity.destroy_fx_type == 2) destroy_fx = identity.destroy_fx_array[(player > player_id.MAX_PLAYER_NUM)?0:player];

// print(`${identity.name}: ${identity.player_dependent_fx?"true":"false"}; (${hit_effect})`);

//Dan please make solid stage articles interact with projectiles better
//if(free && place_meeting(x, y + 1, obj_stage_article_solid)) free = false;

switch(identity.name) {
	case "Fireball":
		// if(x < player_id.phone_blastzone_l || x > player_id.phone_blastzone_r || y > player_id.phone_blastzone_b) {
		// 	instance_destroy(); exit;
		// }
		if(!free) {
			// var puddled = false;
			// with(asset_get("puddle_obj")) {
			// 	if(collision_line(get_instance_x(self) + 1 - 20, get_instance_y(self) - 5, get_instance_x(self) + 1 + 20, get_instance_y(self) - 5, other, true, false)) {
			// 		puddled = true;
			// 	}
			// }
			
			if(place_meeting(x, y + 3, asset_get("puddle_obj"))) {
				sound_play(splash_sfx); player = player_id.player;
				
				//Oh, that isn't dust! It's steam. Steam from the steamed clams we're having! Mmmm, steamed clams!
				var steam = instance_create(x, y, "obj_article1");
				steam.variant = "dust_rising"; steam.image_alpha = 0.3;
				steam.image_xscale = 3; steam.image_yscale = 3;
				steam.life = 60;
				instance_destroy(); exit;
			}
			else {
				vsp = -8;
				sound_play(wall_sfx, false, noone, 0.9, 0.75);
			}
		}
		
		if(get_gameplay_time() % 3 == 0) proj_angle += sign(spr_dir) * -90;
		
		// if(!was_parried) with(pHitBox) {
		// 	if(player != other.player && place_meeting(x, y, other)) {
		// 		other.destroyed = true;
		// 	}
		// }
	break;
	
	case "Iceball":
		if(getting_bashed) bounces = -6;
		
		/*if(get_gameplay_time() % 5 == 0) {
			array_push(player_id.order_particles, {
				name: my_name,
				variant: "snowflake",
				sprite: "decal_snowflake",
				image: 0,
				xpos: x + round((random_func(0, 1, false) - 0.5) * 16),
				ypos: y + round((random_func(1, 1, false) - 0.5) * 16),
				alpha: 1.0,
				hsp: (random_func(2, 1, false) - 0.5),
				vsp: (random_func(3, 1, false) - 0.5),
				life: 20 + random_func(0, 12, true),
				size: 2
			});
		}*/
		
		if(get_gameplay_time() % 5 == 0) {
			var old_player = player; player = player_id.player;
			
			var snowflakeroo = instance_create(round(x + (random_func(0, 1, false) - 0.5) * 16), round(y + (random_func(1, 1, false) - 0.5) * 16), "obj_article1");
			snowflakeroo.variant = "snowflake"; snowflakeroo.sprite_index = snowflake_decal_sprite;
			snowflakeroo.hsp = random_func(2, 1, false) - 0.5; snowflakeroo.vsp = random_func(3, 1, false) - 0.5;
			snowflakeroo.life = 20 + random_func(3, 12, true);
			
			player = old_player;
		}
		
		var froze_something = noone;
		// with(obj_article1) if(!disable_movement) froze_something = freeze_object(other);
		// if(!froze_something) with(obj_article2) if(!disable_movement) froze_something = freeze_object(other);
		// if(!froze_something) with(obj_article3) if(!disable_movement) froze_something = freeze_object(other);
		// if(!froze_something) with(obj_article_solid) froze_something = freeze_object(other);
		// if(!froze_something) with(obj_article_platform) froze_something = freeze_object(other);
		// if(!froze_something) with(pHitBox) froze_something = freeze_object(other);
		
		if(froze_something || attempt_freeze()) {
			instance_destroy();
			exit;
		}
		
		if(!free) {
			if(bounces >= 1) {
				destroyed = true;
			}
			else {
				bounces++;
				vsp = -8.5;
				sound_play(wall_sfx, false, noone, 0.4, 0.8);
			}
		}
	break;
	
	
	case "Ice Block":
		damage = 12 + 0.8 * sqrt(power(hsp, 2) + power(vsp, 2));
		
		if(neo_carry_data.carried_type) {
			player = player_id.player; transform_hitbox_player = -1;
			var block_article = transform_to_instance(instance_create(round(x), round(y), "obj_article_solid"), false, ["can_hit"], transition_safelist);
			block_article.transition_safelist = transition_safelist;
			if(instance_exists(contains_player)) {
				contains_player.neo_data.frozen_ice_instance = block_article;
			}
			block_article.image_xscale = image_xscale * 100; block_article.image_yscale = image_yscale * 100;
			block_article.neo_carry_data.carrier_id.carry_obj = block_article;
			array_push(player_id.neo_data_compat.carryable_objects, block_article);
			instance_destroy(); exit;
		}
		
		//Correct small rounding errors in prediction
		// if(abs(x - prev_predicted_x) == 1) prev_predicted_x = x;
		// if(abs(y - prev_predicted_y) == 1) prev_predicted_y = y;
		
		//Check if projectile pos doesn't match prediction
		if(abs(x - prev_predicted_x) > 1 || abs(y - prev_predicted_y) > 1) {
			//Move collider to my new pos
			// print(`VQPP's position was changed! Expected (${prev_predicted_x}, ${prev_predicted_y}), got (${x}, ${y})`);
			if(collisions_qpp.y > y) collisions_qpp.free = true; //if we're moving the block up, it's probably now in midair
			collisions_qpp.x = x;
			collisions_qpp.y = y;
		}
		else {
			//Check if collider's pos doesn't match prediction
			if((collisions_qpp.x - prev_predicted_x) > 1 || abs(collisions_qpp.y - prev_predicted_y) > 1) {
				//Move me to collider's new pos
				// print(`CQPP's position was changed! Expected (${prev_predicted_x}, ${prev_predicted_y}), got (${collisions_qpp.x}, ${collisions_qpp.y})`);
				x = collisions_qpp.x;
				y = collisions_qpp.y;
			}
		}
		
		//Check if projectile's vel doesn't match prediction
		if(hsp != prev_predicted_hsp || vsp != prev_predicted_vsp) {
			//Adjust collider to match my new vel
			// print(`VQPP's motion was changed! Expected (${prev_predicted_hsp}, ${prev_predicted_vsp}), got (${hsp}, ${vsp})`);
			collisions_qpp.hsp = hsp;
			collisions_qpp.vsp = vsp;
			if(vsp < 0) collisions_qpp.free = true; //if the block is moving upwards, it's probably now in midair
		}
		else {
			//Check if collider's vel doesn't match prediction
			if(collisions_qpp.hsp != prev_predicted_hsp || collisions_qpp.vsp != prev_predicted_vsp) {
				//Adjust me to match collider's new vel
				// print(`CQPP's motion was changed! Expected (${prev_predicted_hsp}, ${prev_predicted_vsp}), got (${collisions_qpp.hsp}, ${collisions_qpp.vsp})`);
				hsp = collisions_qpp.hsp;
				vsp = collisions_qpp.vsp;
				x = collisions_qpp.x;
				y = collisions_qpp.y;
			}
		}
		
		//Inherit freedom from CQPP
		free = collisions_qpp.free;
		
		//Ice update behaviour
		// user_event(5); length++;
		if(-1 * sign(hsp) == spr_dir) {
			spr_dir *= -1; frozen_xscale *= -1; frozen_xoffset *= -1;
		}
		length++;
		var hit_data = get_attacked_data(false, 50, 1, true, true, true, true, "ice_block_filter");
		if(hit_data.hit) {
			state = "Shatter";
			shatter_hsp = hit_data.launch_hsp; shatter_vsp = hit_data.launch_vsp;
			give_coins_id = hit_data.hitbox_id.player_id;
			
			make_shatter_hitbox_from_hitbox(hit_data);
		}
		if(collisions_qpp.hit_wall) {
			state = "Shatter";
			shatter_hsp = prev_hsp; shatter_vsp = max(-5, vsp);
		}
		
		if(free) {
			vsp = min(vsp + 0.4, 15);
		}
		else {
			fall_rumbling = false;
			
			if(abs(hsp) < 3.5) {
				if(vsp >= 14) {
					//shatter
					state = "Shatter";
				}
				else {
					//land intact
					player = player_id.player; transform_hitbox_player = -1;
					var block_article = transform_to_instance(instance_create(round(x), round(y), "obj_article_solid"), false, ["can_hit"]);
					if(instance_exists(contains_player)) {
						contains_player.neo_data.frozen_ice_instance = block_article;
					}
					block_article.image_xscale = image_xscale * 100; block_article.image_yscale = image_yscale * 100;
					array_push(player_id.neo_data_compat.carryable_objects, block_article);
					instance_destroy(); exit;
				}
			}
			else {
				if(get_gameplay_time() % 6 == 0) {
					slip_sfx_array[2] = slip_sfx_array[1];
					slip_sfx_array[1] = slip_sfx_array[0];
					slip_sfx_array[0] = sound_play(sfx_ice_slide);
				}
			}
			if(vsp > 0) {
				sound_play(sfx_ice_land, false, noone, 1.0, 0.5);
				vsp = 0;
			}
		}
		
		
		//Make sure the platform is in the right spot
		if(!no_attachment) {
			attached_platform.x = x; attached_platform.y = y - attached_platform.attach_height;
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
		
		if(state == "Shatter") {
			var old_player = player; player = player_id.player;
			
			if(eject_coins) {
				if("give_coins_id" not in self) give_coins_id = player_id; //god almighty this is bad
				player_id.queued_earn_coins_for = [true, x, y, give_coins_id, player_id, 3, true];
			}
			
			var ice_chunk_dir = 1;
			var bottom_y = y + (100 * image_yscale); if((100 * image_yscale) < 0) bottom_y -= (100 * image_yscale);
			var ice_chunk_index = 0;
			
			var ice_chunks_count = 3;
			
			repeat(2) {
				for(var chunk_index = 0; chunk_index < ice_chunks_count; chunk_index++;) {
					var chunk_x = round(x + (100 * image_xscale) * 0.5 * ice_chunk_dir);
					var chunk_y = round(y + (100 * image_yscale) - (chunk_index * ((100 * image_yscale) * 2 / ice_chunks_count)));
					
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
		
		//Save predictions
		collisions_qpp.x = x; collisions_qpp.y = y; collisions_qpp.hsp = hsp; collisions_qpp.vsp = vsp;
		prev_predicted_x = round(x + hsp); prev_predicted_y = round(y + vsp);
		prev_predicted_hsp = hsp; prev_predicted_vsp = vsp;
		
		//Steve death message shenanigans
		var owner_name = variable_instance_get(player_id.player_instances[player], "muno_char_name", get_char_info(player, INFO_STR_NAME));
		steve_death_message = string_replace(orig_steve_death_message, "%s", owner_name);
		
		// print(`on viol's update: ${collisions_qpp.y}`);
		
		// if(false && !player_id.down_down) {
		// 	if(collisions_qpp.affected_x) x = collisions_qpp.x;
		// 	else collisions_qpp.x = x;
		// 	if(collisions_qpp.affected_y) y = collisions_qpp.y;
		// 	else collisions_qpp.y = y;
		// 	if(collisions_qpp.affected_hsp) hsp = collisions_qpp.hsp;
		// 	else collisions_qpp.hsp = hsp;
		// 	if(collisions_qpp.affected_vsp) vsp = collisions_qpp.vsp;
		// 	else collisions_qpp.vsp = vsp;
			
			
		// 	collisions_qpp.assigned_x = collisions_qpp.x;
		// 	collisions_qpp.assigned_y = collisions_qpp.y;
		// 	collisions_qpp.assigned_hsp = collisions_qpp.hsp;
		// 	collisions_qpp.assigned_vsp = collisions_qpp.vsp;
		// }
		
		
		// //#region QPP-based physics
		// var predicted_vsp = free?min(prev_vsp + 0.4, 15):prev_vsp;
		// var affected_hsp = hsp != prev_hsp, affected_vsp = vsp != predicted_vsp;
		// var affected_x = x != prev_x + prev_hsp, affected_y = y != prev_y + predicted_vsp;
		
		// // print(`hsp: ${hsp}; vsp: ${vsp}`);
		
		// affected_x = false; affected_y = false; affected_hsp = false; affected_vsp = false;
		
		// if(!collisions_qpp.free) {
		// 	// collisions_qpp.affected_vsp = false;
		// 	// vsp = 1;
		// 	// collisions_qpp
		// }
		
		// if(collisions_qpp.affected_x || collisions_qpp.affected_y || collisions_qpp.affected_hsp || collisions_qpp.affected_vsp)
		// 	print(`AX: ${collisions_qpp.affected_x}; AY: ${collisions_qpp.affected_y}; AH: ${collisions_qpp.affected_hsp}; AV: ${collisions_qpp.affected_vsp}`);
		
		// if(collisions_qpp.affected_x && !affected_x) x = collisions_qpp.x;
		// else collisions_qpp.x = x;
		// if(collisions_qpp.affected_y && !affected_y) y = collisions_qpp.y;
		// else collisions_qpp.y = y;
		// if(collisions_qpp.affected_hsp && !affected_hsp) hsp = collisions_qpp.hsp;
		// else collisions_qpp.hsp = hsp;
		// if(collisions_qpp.affected_vsp && !affected_vsp) vsp = collisions_qpp.vsp;
		// else collisions_qpp.vsp = vsp;
		
		// collisions_qpp.assigned_x = collisions_qpp.x; collisions_qpp.assigned_y = collisions_qpp.y;
		// collisions_qpp.assigned_hsp = collisions_qpp.hsp; collisions_qpp.assigned_vsp = collisions_qpp.vsp;
		// // collisions_qpp.x = x; collisions_qpp.y = y; collisions_qpp.hsp = hsp; collisions_qpp.vsp = vsp;
		
		// // print(`viol: ${get_gameplay_time()}`);
		
		// // free = collisions_qpp.free;
		// //#endregion
		
		prev_hsp = hsp; prev_vsp = vsp; prev_x = x; prev_y = y;
	break;
	
	
	case "Koopa Troopa Shell":
		// debug_monitor_variables(id, ["debug_hud_x", "debug_hud_y", "length", "hitbox_timer", "vsp"]);
		
		stop_effect = false;
		
		if(neo_carry_data.carried_type) {
			player = player_id.player; transform_hitbox_player = -1;
			var shell_article = transform_to_instance(instance_create(round(x), round(y), "obj_article2"), true, [], transition_safelist);
			shell_article.image_xscale = 1; shell_article.image_yscale = 1;
			shell_article.neo_carry_data.is_grabbable = true; shell_article.neo_carry_data.is_liftable = true;
			shell_article.consecutive_hits = 0;
			// shell_article.neo_carry_data.no_interact_time = get_gameplay_time() + 20;
			shell_article.neo_carry_data.carrier_id.carry_obj = shell_article;
			array_push(shell_article.player_id.neo_data_compat.carryable_objects, shell_article);
			array_push(shell_article.player_id.neo_data_compat.freezable_objects, shell_article);
			exit;
		}
		
		if(abs(hsp) > 6 && get_gameplay_time() % 3 == 0) {
			var old_player = player; player = player_id.player;
			
			var afterimage = instance_create(round(x), round(y), "obj_article1");
			afterimage.variant = "afterimage";
			afterimage.sprite_index = sprite_index; afterimage.image_index = image_index;
			afterimage.image_xscale = 1; afterimage.image_yscale = 1;
			
			afterimage.life = 8;
			afterimage.depth = depth + 1;
			
			player = old_player;
		}
		
		if(place_meeting(x + hsp, y, asset_get("par_block"))) {
			var old_player = player; player = player_id.player;
			
			sound_play(sound_get("bump"));
			var burst = instance_create(round(x + hsp), round(y), "obj_article1");
			burst.sprite_index = sprite_get("decal_burst");
			burst.image_angle = random_func(0, 4, true) * 90;
			burst.life = 6; burst.variant = "burst";
			
			player = old_player;
			can_hit_self = true;
			hsp *= -1;
		}
		
		length++;
		if(hsp != 0) spr_dir = sign(hsp);
		var total_speed = point_distance(0, 0, hsp, vsp);
		damage = total_speed * 1.5; kb_value = total_speed / 4;
		if(!getting_bashed) with(oPlayer) if(!clone && !custom_clone) {
			if(url == other.player_id.url) {
				if(give_flicker_frames <= 0) other.can_hit[player] = true;
			}
			else {
				if(state != PS_HITSTUN) other.can_hit[player] = true;
			}
		}
		
		var hit_data = get_attacked_data(true, 60, 1, true, true, true, true, "ban_projectiles_filter");
		if(hit_data.hit) {
			player = hit_data.hitbox_id.player; points_owner = hit_data.hitbox_id.player_id; can_hit[player] = false;
			var attacks = player_id.ATTACKS_OBJ;
			if(hitbox_matches(hit_data.hitbox_id, attacks.spin_jump) || hitbox_matches(hit_data.hitbox_id, attacks.spin_jump)) {
				player = player_id.player;
				var tossed_sprite = instance_create(round(x), round(y), "obj_article1");
				tossed_sprite.variant = "tossed sprite";
				tossed_sprite.sprite_index = sprite_index; tossed_sprite.image_index = image_index;
				tossed_sprite.image_xscale = 1; tossed_sprite.image_yscale = 1;
				tossed_sprite.fake_hsp = sign(hit_data.launch_hsp) * 12; tossed_sprite.fake_vsp = -12;
				
				instance_destroy(); exit;
			}
		}
		
		var old_image_index = floor(image_index);
		image_index += hsp / 20 * sign(image_xscale);
		if(abs(hsp) > 4.5 && floor(image_index) != old_image_index && old_image_index = 0)
			sound_play(sfx_shell_spin, false, noone, 0.35, 1.0);
		
		//Only grabbable when in midair at low horizontal speed
		neo_carry_data.is_grabbable = (free && abs(hsp) < 4.5);
		neo_carry_data.is_liftable = neo_carry_data.is_grabbable;
		
		if(free) {
			vsp = min(vsp + 0.5, 10);
			// if(abs(hsp) <= 4.5) {
			// 	neo_carry_data.is_grabbable = true; neo_carry_data.is_liftable = true;
			// }
		}
		else {
			if(abs(hsp) <= 4.5) {
				player = player_id.player; transform_hitbox_player = -1;
				var shell_article = transform_to_instance(instance_create(round(x), round(y), "obj_article2"), true, [], transition_safelist);
				shell_article.image_xscale = 1; shell_article.image_yscale = 1;
				shell_article.neo_carry_data.is_grabbable = true; shell_article.neo_carry_data.is_liftable = true;
				// shell_article.neo_carry_data.no_interact_time = get_gameplay_time() + 20;
				array_push(shell_article.player_id.neo_data_compat.carryable_objects, shell_article);
				array_push(shell_article.player_id.neo_data_compat.freezable_objects, shell_article);
				exit;
			}
			else if(get_gameplay_time() % 6 == 0) {
				skid_sfx_instances[2] = skid_sfx_instances[1];
				skid_sfx_instances[1] = skid_sfx_instances[0];
				skid_sfx_instances[0] = sound_play(sfx_skid, false, noone, 0.4);
			}
		}
	break;
	
	case "item-2": //thrown POW
		if(!free || destroyed || powplode || place_meeting(x + hsp, y + vsp, asset_get("par_block"))) {
			sound_play(pow_sfx);
			destroyed = true;
			shake_camera(43, 31);
			
			var powplosion = create_hitbox(AT_USPECIAL, 3, round(x), round(y));
			powplosion.player = player;
		}
	break;
	
	case "item-3": //POW-plosion
		image_xscale += 0.75;
		image_yscale += 0.75;
		groundedness = 1;
	break;
	
	case "item-4": //Starman active hitbox
		with(pHitBox) if(player != other.player && type == 2 && !unbashable && !transcendent) {
			if(place_meeting(x, y, other)) {
				destroyed = true;
				other.destroyed = true;
			}
		}
		
		with(oPlayer) if(!clone) {
			 if(neo_data.hit_by_star == other.player_id) other.can_hit[player] = false;
			else other.can_hit[player] = true;
		}
	break;
	
	case "item-5": //thrown stone block
		if(slamma || place_meeting(x + hsp, y + vsp, asset_get("par_block")) || (place_meeting(x + hsp, y + vsp, asset_get("par_jumpthrough")) && !place_meeting(x + hsp, y, asset_get("par_jumpthrough")))) {
			player = player_id.player;
			
			var stone_block = instance_create(x, y, "obj_article_solid");
			stone_block.variant = "stone block"; stone_block.player_id = player_id;
			stone_block.life = -1; stone_block.sprite_index = stone_sprite;
			
			stone_block.hsp = hsp; stone_block.vsp = vsp; stone_block.state = "Active";
			stone_block.ignores_walls = false; stone_block.can_be_grounded = true;
			stone_block.exclusive = false;
			
			stone_block.spr_dir = spr_dir;
			destroyed = true;
		}
	break;
	
	case "item-6": //Held Koopa Shell active hitbox
		with(oPlayer) if(id != other) {
			if(id == other.player_id.neo_data.carried_by_id) {
				other.can_hit[player] = false;
			}
			else {
				other.can_hit[player] = true;
			}
		}
	break;
	
	case "Ice Shatter": break;
	case "Pillar Breaker": break;
	
	default:
		print(`Unknown hitbox name: ${identity.name}`);
	break;
}

#define ice_block_filter(block_id)
	if(player_id.url == block_id.player_id.url) {
		var mario_id = block_id.player_id;
		if(hitbox_matches(id, mario_id.ATTACKS_OBJ.stomp) || hitbox_matches(id, mario_id.ATTACKS_OBJ.spin_jump))
			return(false);
	}
	return(true);

#define ban_projectiles_filter
	return(type == 1);

#define hitbox_matches(hitbox_id, attack_entry)
	return(hitbox_id.player_id.url == attack_entry.url && hitbox_id.attack == attack_entry.attack && hitbox_id.hbox_num == attack_entry.hbox_num);

#define attempt_freeze
	//Projectiles that can hit the player and aren't motionless can be frozen
	with(pHitBox) if(type == 2 && hitbox_timer > 1 && (player != other.player || can_hit_self)) {
		//Some base-cast projectile adjustments. please blame Rivals instead of my code thanks <3
		if(player_id.url == CH_KRAGG && attack == AT_DSPECIAL)
			neo_freeze_data = true;
		else if(player_id.url == CH_ZETTERBURN && attack == AT_FSPECIAL)
			neo_freeze_data = { name: "Zetterburn's Fireball", extra_width: 19 }
		else if(player_id.url == CH_MAYPUL && attack == AT_NSPECIAL)
			neo_freeze_data = { name: "Maypul's Nut", extra_width: -6, extra_height: -6 }
		else if(player_id.url == CH_RANNO && attack == AT_FSPECIAL)
			neo_freeze_data = { name: "Ranno's Darts", extra_width: 27, extra_height: -6, iframes: 10 }
		else if(player_id.url == CH_SYLVANOS && attack == AT_JAB)
			neo_freeze_data = { name: "Sylvanos's Razors", extra_height: -20, extra_y_offset: 16, extra_width: -10, iframes: 10 }
		
		//Motionless projectiles aren't allowed through unless they've been given freeze data
		//This prevents things like explosions from being frozen
		if(hsp == 0 && vsp == 0) if("neo_freeze_data" not in self) return(false);
		
		//Attempt to freeze the projectile
		var frozen = attempt_freeze_object(id, other.id);
		if(frozen) return(true);
	}
	
	with(oPlayer) {
		for(var incrementeroo = 0, total = array_length(neo_data_compat.freezable_objects); incrementeroo < total; incrementeroo++;) {
			if(!instance_exists(neo_data_compat.freezable_objects[incrementeroo])) continue;
			var frozen = attempt_freeze_object(neo_data_compat.freezable_objects[incrementeroo], other);
			if(frozen) return(true);
		}
	}
	
	if(player_id.stage_id != noone) {
		for(var incrementeroo = 0, total = array_length(player_id.stage_id.neo_data_compat.freezable_objects); incrementeroo < total; incrementeroo++;) {
			if(!instance_exists(player_id.stage_id.neo_data_compat.freezable_objects[incrementeroo])) continue;
			var frozen = attempt_freeze_object(player_id.stage_id.neo_data_compat.freezable_objects[incrementeroo], other);
			if(frozen) return(true);
		}
	}
	
	return(false);

#define attempt_freeze_object(check_object, iceball)
	if("neo_freeze_data" not in check_object) check_object.neo_freeze_data = {};
	else if(!is_object(check_object.neo_freeze_data)) {
		if(check_object.neo_freeze_data == false) return(false);
		else if(check_object.neo_freeze_data == true) check_object.neo_freeze_data = {};
		else {
			print(`Invalid carry data value: ${check_object.neo_cary_data}`);
			return(false);
		}
	}
	else if("can_be_frozen" in check_object.neo_freeze_data && !check_object.neo_freeze_data.can_be_frozen)
		return(false);
	
	//Populate any missing data
	var data = check_object.neo_freeze_data;
	
	if("name" not in data) data.name = (object_index == pHitBox)?"Frozen Projectile":"Frozen Object";
	if("iframes" not in data) data.iframes = 4;
	if("can_be_frozen" not in data) data.can_be_frozen = true;
	
	if("extra_width" not in data) data.extra_width = 0;
	if("extra_height" not in data) data.extra_height = 0;
	if("extra_x_offset" not in data) data.extra_x_offset = 0;
	if("extra_y_offset" not in data) data.extra_y_offset = 0;
	
	var freeze_collision;
	if(id == check_object.id) {
		freeze_collision = place_meeting(x, y, iceball) || place_meeting(x + hsp - iceball.hsp, y + vsp - iceball.vsp, iceball);
	}
	else if(id == iceball.id) {
		freeze_collision = place_meeting(x, y, check_object) || place_meeting(x + hsp - check_object.hsp, y + vsp - check_object.vsp, check_object);
	}
	else
		with(check_object)
			freeze_collision = place_meeting(x, y, iceball) || place_meeting(x + hsp - iceball.hsp, y + vsp - iceball.vsp, iceball);
	
	if(freeze_collision) {
		check_object.was_parried = true; check_object.player = iceball.player; //prevent things like Wrastor's tornado from spawning
		generate_ice_block(check_object, iceball);
		return(true);
	}
	
	return(false);

/*#define freeze_object(iceball)
	// return(place_meeting(x, y, iceball_id) && "neo_freeze_data" in self && ((!is_array(neo_freeze_data) && neo_freeze_data) || (is_array(neo_freeze_data) && neo_freeze_data[0])));
	if(place_meeting(x, y, iceball) || place_meeting(x + hsp - iceball.hsp, y + vsp - iceball.vsp, iceball)) {
		if("neo_freeze_data" not in self) {
			neo_freeze_data = get_data_from_registry(iceball.player_id.ICE_DATA_REGISTRY_OBJ, iceball.player_id.debug_ice_registry);
		}
		else if(object_index == pHitBox && (neo_freeze_data == false || (is_object(neo_freeze_data) && "can_be_frozen" in check_data && !check_data.can_be_frozen))) return(false);
		
		var use_data = should_use_data(neo_freeze_data, iceball);
		
		if(use_data != undefined || (object_index == pHitBox && type == 2 && player != other.player && (hsp != 0 || vsp != 0))) {
			with(iceball) spawn_hit_fx((other.x + x) / 2, (other.y + y) / 2, hit_effect);
			generate_ice_block(iceball, use_data, neo_freeze_data);
			return(true);
		}
	}
	return(false);*/

#define should_use_data(check_data, iceball)
	//Returns TRUE if we can freeze this object and we should use its Freeze Data object
	//Returns FALSE if we can freeze this object, but all its data must be generated automatically
	//Returns UNDEFINED if we cannot freeze this object
	//Returns NULL if we extra extra can't freeze this object
	
	if(check_data == 1 || check_data == 0) {
		if(check_data) {
			return(false);
		}
		else {
			return(undefined);
		}
	}
	else if(is_object(check_data)) {
		if("can_be_frozen" in check_data && check_data.can_be_frozen)
			return(true);
		else
			return(undefined);
	}
	//Couldn't recognize the neo_freeze_data, sorry :(
	iceball.destroyed = true; sound_play(iceball.error_sfx);
	iceball.player_id.debug_error_data = [true, 100, iceball.error_sprite, 0];
	print_debug("Error: Invalid neo_freeze_data type! :(");
	print_debug("Consult the author of the object you're trying to freeze.");
	print_debug("If you are the author, message floralQuaFloral#0013 for help. <3");
	print_debug("Freeze data dump: " + string(neo_freeze_data));
	return(undefined);

#define get_data_from_registry(registry, debugging)
	var search_in_registry = registry.unidentified;
	switch(object_index) {
		case obj_article1:
			search_in_registry = registry.article1;
		break;
		case obj_article2:
			search_in_registry = registry.article2;
		break;
		case obj_article3:
			search_in_registry = registry.article3;
		break;
		case obj_article_solid:
			search_in_registry = registry.articlesolid;
		break;
		case obj_article_platform:
			search_in_registry = registry.articleplatform;
		break;
		case pHitBox:
			search_in_registry = registry.hitbox;
		break;
	}
	if(debugging) print_debug("Checking the " + search_in_registry[0] + " registry...");
	
	if(search_in_registry == registry.hitbox) for(var counteroo = 1; counteroo < array_length_1d(search_in_registry); counteroo++) {
		var registry_index = search_in_registry[counteroo];
		if(registry_index.url == player_id.url && registry_index.attack == attack && (registry_index.hbox_num == -1 || registry_index.hbox_num == hbox_num))
			return(registry_index.returns);
	}
	else for(var counteroo = 1; counteroo < array_length_1d(search_in_registry); counteroo++) {
		var registry_index = search_in_registry[counteroo];
		if(debugging) print_debug("Is this a " + registry_index.name + "?");
		if(registry_index.url == player_id.url) {
			
			var meeting_identification = true;
			for(var variable_index = 0; meeting_identification && variable_index < array_length_1d(registry_index.identifications); variable_index++) {
				var check_for = registry_index.identifications[variable_index];
				
				if(debugging) print("Checking for variable " + check_for[0] + " with value " + check_for[1] + "...");
				if(check_for[0] not in self || variable_instance_get(self, check_for[0]) != check_for[1]) {
					meeting_identification = false;
					if(debugging) print("Variables do not match registry, checking next item.");
				}
			}
			
			if(meeting_identification) {
				if(debugging) print("Successfully identified " + registry_index.name);
				return(registry_index.returns);
			}
		}
	}
	
	return(false);

#define generate_ice_block(freeze_object, iceball)
	//Create the ice block
	var ice = instance_create(round(freeze_object.x), round(freeze_object.y), "obj_article_solid");
	ice.variant = "ice block"; ice.subvariant = "frozen sprite"; //ice.changer_type = "Ice Block";
	ice.life = -1;
	ice.sprite_index = iceball.ice_mask_sprite; ice.mask_index = iceball.ice_mask_sprite;
	// ice.destroy_fx = ice.player_id.ATTACKS_OBJ.ice_block.fx;
	ice.image_alpha = 0.0; ice.render_rumble = false;
	ice.neo_carry_data = {
		is_liftable: true, is_grabbable: false,
		carried_type: 0,
		was_released: 0
	};
	array_push(iceball.player_id.neo_data_compat.carryable_objects, ice);
	ice.state = "Initial"; ice.ignores_walls = false; ice.can_be_grounded = true;
	ice.default_owner = iceball.player_id.player_instances[iceball.player];
	ice._hittable_time = get_gameplay_time() + freeze_object.neo_freeze_data.iframes;
	ice.orig_steve_death_message = `Steve was pummeled by %s using [${freeze_object.neo_freeze_data.name}]`;
	ice.steve_death_message = ice.orig_steve_death_message;
	
	//Identify the sprite to use for scaling
	if(freeze_object.object_index == pHitBox) {
		if(freeze_object.mask_index == -1) {
			var use_sprite = freeze_object.sprite_index, use_xscale = 1, use_yscale = 1, visual_xscale = 1, visual_yscale = 1;
		}
		else {
			var use_sprite = freeze_object.mask_index, use_xscale = freeze_object.image_xscale * freeze_object.spr_dir, use_yscale = freeze_object.image_yscale, visual_xscale = 1, visual_yscale = 1;
		}
	}
	else {
		var use_sprite = freeze_object.sprite_index, use_xscale = freeze_object.image_xscale * freeze_object.spr_dir, use_yscale = freeze_object.image_yscale, visual_xscale = freeze_object.image_xscale, visual_yscale = freeze_object.image_yscale;
	}
	
	//Insert frozen item sprite
	ice.frozen_sprite = freeze_object.sprite_index; ice.frozen_image = freeze_object.image_index;
	ice.frozen_xscale = abs(visual_xscale); ice.frozen_yscale = visual_yscale;
	ice.frozen_angle = ((freeze_object.object_index == pHitBox)?freeze_object.proj_angle:freeze_object.image_angle) % 360; ice.frozen_colour = freeze_object.image_blend;
	ice.frozen_shader_owner = freeze_object.player_id; ice.frozen_use_shader = (freeze_object.object_index == pHitBox || freeze_object.uses_shader);
	ice.contains_player = noone;
	
	//Identify ice block size
	var ice_extra_size = (freeze_object.object_index == pHitBox)?10:8;
	var ice_w = abs(0.5 * (sprite_get_bbox_right(use_sprite) - sprite_get_bbox_left(use_sprite)) * use_xscale) + abs(ice_extra_size) + freeze_object.neo_freeze_data.extra_width;
	var ice_h = abs(0.5 * (sprite_get_bbox_bottom(use_sprite) - sprite_get_bbox_top(use_sprite)) * use_yscale) + (freeze_object.free?1:0.5) * (abs(ice_extra_size) + freeze_object.neo_freeze_data.extra_height);
	
	//Apply ice block size
	ice.image_xscale = ice_w; ice.image_yscale = ice_h;
	ice.spr_dir = freeze_object.spr_dir;
	
	//Identify X offset
	var sprite_center_x = 0.5 * sprite_get_width(use_sprite), ice_xoffset = (sprite_get_xoffset(use_sprite) - sprite_center_x) + freeze_object.neo_freeze_data.extra_x_offset;
	//Identify Y offset
	var sprite_center_y = 0.5 * sprite_get_height(use_sprite), ice_yoffset = (sprite_get_yoffset(use_sprite) - sprite_center_y) + freeze_object.neo_freeze_data.extra_y_offset;
	
	if(!freeze_object.free) ice_yoffset += 0.5 * (ice_extra_size + freeze_object.neo_freeze_data.extra_height);
	
	//Apply offsets
	ice.x -= ice_xoffset; ice.y -= ice_yoffset;
	ice.frozen_xoffset = ice_xoffset; ice.frozen_yoffset = ice_yoffset;
	
	//Miscellaneous adjustments
	if(ice.frozen_angle != 0 && ice.frozen_angle != 90) {
		ice.image_xscale = max(ice.image_xscale, ice.image_yscale);
		ice.image_yscale = ice.image_xscale;
		ice.carry_turn = false;
	}
	if(!freeze_object.free) {
		ice.state = "Grounded"; ice.free = false;
	}
	if(ice.image_xscale < 20 && ice.image_yscale < 20)
		ice.neo_carry_data.is_grabbable = true; //Small ice blocks can be Grabbed like koopa shells
	
	//Remove the iceball and the object
	sound_play(iceball.freeze_sfx);
	if(id == iceball.id)
		spawn_hit_fx((freeze_object.x + x) / 2, (freeze_object.y + y) / 2, hit_effect);
	else
		with(iceball)
			spawn_hit_fx((freeze_object.x + x) / 2, (freeze_object.y + y) / 2, hit_effect);
	iceball.destroyed = true;
	instance_destroy(freeze_object);
	exit;

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

#define debug_monitor_variables
/// debug_monitor_variables(in_instance = id, blocklist = [])
var in_instance = argument_count > 0 ? argument[0] : id;
var blocklist = argument_count > 1 ? argument[1] : [];
	if("debug_variables_archive" in in_instance) {
		for(var vars = variable_instance_get_names(in_instance), counteroo = 0; counteroo < array_length_1d(vars); counteroo++;) {
			if(variable_instance_get(in_instance, vars[counteroo]) != variable_instance_get(debug_variables_archive, vars[counteroo])) {
				var in_blocklist = false;
				for(var incrementeroo = 0; incrementeroo < array_length_1d(blocklist); incrementeroo++;)
					if(blocklist[incrementeroo] == vars[counteroo])
						in_blocklist = true;
				if(!in_blocklist) print(`Variable ${vars[counteroo]} has changed from ${variable_instance_get(debug_variables_archive, vars[counteroo])} to ${variable_instance_get(in_instance, vars[counteroo])}`);
			}
		}
	}
	in_instance.debug_variables_archive = {};
	for(var vars = variable_instance_get_names(in_instance), counteroo = 0; counteroo < array_length_1d(vars); counteroo++) {
		variable_instance_set(debug_variables_archive, vars[counteroo], variable_instance_get(in_instance, vars[counteroo]));
	}

#define make_shatter_hitbox_from_hitbox(hit_data)
	if(subvariant == "frozen player") {
		hit_data.hitbox_id.can_hit[@contains_player.player] = false;
		
		player = player_id.player;
		var shatterbox = flotbox_from_hitbox(player_id.ATTACKS_OBJ.ice_shatter, x, y);
		for(var incrementeroo = 0, total = array_length(shatterbox.can_hit); incrementeroo < total; incrementeroo++;) {
			shatterbox.can_hit[@incrementeroo] = false;
		}
		shatterbox.can_hit[@contains_player.player] = true;
		
		shatterbox.player = hit_data.hitbox_id.player;
		shatterbox.visible = false;
		shatterbox.image_xscale = image_xscale;
		shatterbox.image_yscale = image_yscale;
		
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

#define flotbox_from_hitbox(hitbox_obj, x, y)
	//Create a hitbox with fixed FX Particles
	var new_hitbox = create_hitbox(hitbox_obj.attack, hitbox_obj.hbox_num, round(x), round(y));
	with(player_id) {
		new_hitbox.fx_particles = get_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_HIT_PARTICLE_NUM);
		new_hitbox.steve_death_message = string_replace(get_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_FQF_STEVE_DEATH_MESSAGE), "%s", muno_char_name);
	}
	
	//Assign the hitbox object to the new hitbox
	new_hitbox.identity = hitbox_obj;
	return(new_hitbox);