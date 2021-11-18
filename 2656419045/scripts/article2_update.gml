//Article 2 Update
switch(variant) {
	case "power-up":
		//#region Power-ups
		if(hitstop) exit;
		player = player_id.player;
		
		//State behaviour
		switch(state) {
			case "Offer":
				perform_offer();
			break;
			
			case "Drop-in":
				neo_freeze_data = {name: `Frozen ${subvariant.item_name}`};
				array_push(player_id.neo_data_compat.freezable_objects, id);
				if(heal_collectors()) exit;
				switch(subvariant.item_name) {
					// case "leaf":
						
					// break;
					
					// case "propeller":
						
					// break;
					
					default:
						perform_dropin();
					break;
				}
			break;
			
			case "Active":
				if(heal_collectors()) exit;
				switch(subvariant.name) {
					case "Super Mushroom":
						hsp = spr_dir * 2;
						if(place_meeting(x + spr_dir, y, asset_get("par_block"))) {
							spr_dir *= -1; image_xscale *= -1; //don't visually flip the sprite
						}
						
						if(free) {
							vsp += fall_accel_active;
							if(vsp > fall_speed_active) vsp = fall_speed_active;
						}
					break;
					
					default:
						if(free) {
							vsp += fall_accel_active;
							if(vsp > fall_speed_active) vsp = fall_speed_active;
						}
					break;
				}
			break;
		}
		
		//Animation
		switch(subvariant.item_name) {
			case "Fire Flower": case "Ice Flower":
				image_index = (age % 20 < 10)?0:1;
			break;
		}
		
		//#endregion
	break;
	
	case "1up":
		//#region 1Up
		if(hitstop) exit;
		player = player_id.player;
		
		switch(state) {
			case "Offer":
				perform_offer();
				if(place_meeting(x, y, player_id)) {
					sound_play(sound_get("1up"));
					set_player_stocks(player_id.player, get_player_stocks(player_id.player) + 1);
					if("fake_stock" in player_id) player_id.fake_stock++;
					
					var popoff = instance_create(round(x), round(y - 20), "obj_article1");
					popoff.variant = "popoff"; popoff.sprite_index = sprite_get("decal_popoff"); popoff.image_index = 8;
					
					popoff.life = 60;
					popoff.fake_vsp = -3;
					
					popoff.use_post_draw = true;
					popoff.image_blend = get_player_hud_color(player_id.player);
					popoff.use_post_draw = true;
					
					popoff.depth = -2000; popoff.fake_vsp = -5;
					popoff.image_xscale = 3; popoff.image_yscale = 3;
					
					instance_destroy(); exit;
				}
			break;
			case "Drop-in":
				perform_dropin();
			case "Active":
				if(state == "Active") {
					
				}
				//collection
				with(pHurtBox) {
					
				}
			break;
		}
		//#endregion
	break;
	
	case "red koopa shell": case "green koopa shell": case "blue koopa shell":
		//#region Koopa Shells
		
		//Prepare object properties
		if(age == 0) {
			array_push(player_id.neo_data_compat.carryable_objects, id);
			array_push(player_id.neo_data_compat.freezable_objects, id);
			life = -1; neo_carry_data = {
				is_grabbable: true,
				is_liftable: true,
				
				carried_type: 0,
				was_released: 0,
				
				blocks_attacks: true
			};
			neo_freeze_data = {name: "Frozen Koopa Troopa Shell"};
			
			image_index = 1; image_xscale = 1; image_yscale = 1;
			
			unbashable = false;
			
			skid_sfx_instances = [noone, noone, noone];
			consecutive_hits = 0; transform_hitbox_player = -1;
			points_owner = noone;
			
			transition_safelist = [
				//Article
				"spr_dir", "unbashable", "ignores_walls", "can_be_grounded", "hsp", "vsp", "free", "hitstop", "player_id",
				"use_shader", "getting_bashed", "player",
				
				//Hitbox
				
				
				//Init
				"variant", "subvariant", "state", "state_timer", "life", "age",
				
				//Age0 init
				"neo_carry_data", "neo_freeze_data", "skid_sfx_instances", "consecutive_hits", "transform_hitbox_player",
				"points_owner", "transition_safelist"
			];
			// transition_safelist = variable_instance_get_names(id);
			
			register_offscreen_indicator("item_shell_offscreen");
		}
		
		if(neo_carry_data.carried_type) {
			ignores_walls = false; can_be_grounded = true; visible = true; image_alpha = 1.0;
		}
		if(hitstop) exit;
		
		if(getting_bashed) state = "Bashed";
		else if(neo_carry_data.was_released) { //Carry release reactions
			switch(neo_carry_data.was_released) {
				case 2:
					hsp += neo_carry_data.carried_dir * 3; vsp = 0;
					transform_hitbox_player = neo_carry_data.carrier;
					points_owner = neo_carry_data.carrier_id;
				case 3:
					transform_hitbox_player = neo_carry_data.carrier;
					points_owner = neo_carry_data.carrier_id;
				break;
				case 4:
					hsp += neo_carry_data.carried_dir * 3.75; vsp = -4;
					transform_hitbox_player = neo_carry_data.carrier;
					points_owner = neo_carry_data.carrier_id;
				break;
			}
			state = "Active";
			neo_carry_data.was_released = 0;
		}
		
		if(transform_hitbox_player == -1) switch(state) {
			case "Offer":	perform_offer(); break;
			case "Drop-in":	perform_dropin(); break;
			
			case "Bashed":
				if(!getting_bashed) {
					transform_hitbox_player = player;
					player = player_id.player;
					state = "Active";
				}
			break;
			
			case "Active":
				//#mark Koopa Shell Active
				consecutive_hits = 0;
				player = player_id.player;
				
				var hit_data = get_attacked_data(true, 50, 1, true, true, true, true, "shell_idle_filter");
				if(hit_data.hit) {
					var attacks = player_id.ATTACKS_OBJ;
					if(hitbox_matches(hit_data.hitbox_id, attacks.spin_jump) || hitbox_matches(hit_data.hitbox_id, attacks.spin_jump)) {
						var tossed_sprite = instance_create(round(x), round(y), "obj_article1");
						tossed_sprite.variant = "tossed sprite";
						tossed_sprite.sprite_index = sprite_index; tossed_sprite.image_index = image_index;
						tossed_sprite.image_xscale = 1; tossed_sprite.image_yscale = 1;
						tossed_sprite.fake_hsp = sign(hit_data.launch_hsp) * 12; tossed_sprite.fake_vsp = -12;
						
						instance_destroy(); exit;
					}
				}
				
				if(abs(hsp) > 7) {
					transform_hitbox_player = hit_data.hit?hit_data.hitbox_id.player:0;
					points_owner = hit_data.hit?hit_data.hitbox_id.player_id:noone;
					print(`${get_gameplay_time()}: Turning into a hitbox: Was I hit? ${hit_data.hit?`yeah, by player #${hit_data.hitbox_id.player}`:"nah"}`);
				}
				else if(free) {
					vsp = min(vsp + 0.5, 14);
					
					//Bounce off of floors
					var par_block = asset_get("par_block"), par_jumpthrough = asset_get("par_jumpthrough");
					if(!place_meeting(x, y, par_block)) { //don't try and bounce off things if we're clipped into a solid
					    var bounce_plat = (vsp > 0 && !place_meeting(x, y, par_jumpthrough) && place_meeting(x, y + vsp, par_jumpthrough));
					    
					    if(abs(vsp) > 3 && (bounce_plat || place_meeting(x, y + vsp, par_block))) {
					        hsp *= 0.5;
					        vsp *= -0.25;
							create_burst_decal(x, y + 16 + vsp);
							sound_play(sound_get("bump"));
					    }
					}
				}
				else {
					hsp = (abs(hsp) < 0.25)?0:(hsp - sign(hsp) * 0.25);
					image_index += hsp / 18 * sign(image_xscale);
				}
			break;
		}
		
		if(!hitstop && transform_hitbox_player != -1) {
			player = player_id.player;
			var shell_hitbox = transform_to_instance(flotbox_article(player_id.ATTACKS_OBJ.koopa_shell, x, y), false, [], transition_safelist);
			shell_hitbox.neo_carry_data.is_grabbable = false;
			shell_hitbox.neo_carry_data.is_liftable = false;
			array_push(player_id.neo_data_compat.carryable_objects, shell_hitbox);
			array_push(player_id.neo_data_compat.freezable_objects, shell_hitbox);
			instance_destroy(); exit;
		}
		
		//#endregion
	break;
	
	case "collisions_qpp":
		//QPP stands for Queerplatonic Projectile
		//#region Collisions QPP
		
		if(!instance_exists(violence_qpp)) instance_destroy();
		exit;
		
		// print(free);
		
		// print(`on coll's update: ${y}`);
		
		var predicted_x = assigned_x + assigned_hsp, predicted_y = assigned_y + assigned_vsp;
		affected_x = (predicted_x != x); affected_y = (predicted_y != y);
		affected_hsp = (assigned_hsp != hsp); affected_vsp = (assigned_vsp != vsp);
		
		// print(`prevHSP: ${assigned_hsp} VS ${hsp}`);
		// print(`predX: ${predicted_x} VS ${x}`);
		if(affected_x) print(`AX! P: ${predicted_x}; A: ${x}`);
		if(affected_y) print(`AY! P: ${predicted_y}; A: ${y}`);
		if(affected_hsp) print(`AH! P: ${assigned_hsp}; A: ${hsp}`);
		if(affected_vsp) print(`AV! P: ${assigned_vsp}; A: ${vsp}`);
		
		// if(affected_vsp) print("Affected VSP!!!");
		// print(`Assigned VSP: ${assigned_vsp}; VSP: ${vsp}`);
		
		// print(`coll: ${get_gameplay_time()}`);
		
		assigned_hsp = hsp; assigned_vsp = vsp; assigned_x = x; assigned_y = y;
		//#endregion
	break;
	
	case "starman":
		//#region Starman
		if(hitstop) exit;
		
		if(age == 0) {
			move_dir = 1;
			fall_accel_active = 0.4;
			fall_speed_active = 7.2;
		}
		switch(state) {
			case "Offer":
				perform_offer();
				if(star_collection(true)) { instance_destroy(); exit; }
			break;
			case "Drop-in":
				perform_dropin();
				if(star_collection(false)) { instance_destroy(); exit; }
			break;
			case "Active":
				hsp = 2.8 * move_dir;
				if(free) {
					vsp += fall_accel_active;
					vsp = min(vsp, fall_speed_active);
				}
				else {
					vsp = -9;
					sound_play(sound_get("starman_bounce"));
				}
				if(place_meeting(x + move_dir, y, asset_get("par_block"))) {
					move_dir *= -1;
					hsp = 2 * move_dir;
				}
				if(star_collection(false)) { instance_destroy(); exit; }
			break;
		}
		
		//#endregion
	break;
	
	//#region Coin Types
	case "coin free":
		if(age == 0) {
			// register_offscreen_indicator("item_coin_offscreen", 0, 0, 0, 8);
			neo_freeze_data = {name: "Cold Hard Cash"};
			array_push(player_id.neo_data_compat.freezable_objects, id);
		}
		
		phone_offscr_index = floor(get_gameplay_time() / 8);
		
		image_index += 0.25;
		if(free) {
			vsp += 0.65;
			
			var landing_on_plat = place_meeting(x, y + vsp + 4, asset_get("par_jumpthrough")) && !place_meeting(x, y + 4, asset_get("par_jumpthrough"));
			
			if(vsp > 4 && (place_meeting(x, y + vsp, asset_get("par_block")) || landing_on_plat)) {
				vsp *= -1 * (0.7 + 0.15 * random_func(0, 1, false));
				sound_play(sound_get("coin_bounce"));
			}
		}
		else {
			vsp = 0;
			if(abs(hsp) > 1) hsp *= 0.96;
		}
		
		if(age + 60 > life) {
			if(age + 30 > life) {
				image_alpha = (get_gameplay_time() % 4 < 2)?0.0:1.0;
			}
			else {
				image_alpha = (get_gameplay_time() % 8 < 4)?0.0:1.0;
			}
		}
		
		if(place_meeting(x, y, collector)) {
			collector.neo_coins++; collector.neo_points += 10;
			collector.queue_update_score = true;
			sound_stop(collector.coin_sfx_instance);
			collector.coin_sfx_instance = sound_play(sound_get("coin"));
			create_coin_sparklies();
			
			instance_destroy(); exit;
		}
	break;
	
	case "coin spawner":
		if(age == 0) { cooldown = 0; cooldown_value = 12; total_value = value; }
		if(cooldown <= 0) {
			var coin_progress = string(total_value - value + 1) + "/" + string(total_value);
			var coin_offset_x = 0;
			var coin_offset_y = 0;
			
			switch(coin_progress) { //Set custom offsets so we can have pretty 3-coin spawners :3
				case "4/20":
					coin_offset_x = 69; //this is for testing i swear
				break;
				
				case "1/16":
					cooldown_value = 4;
				break;
				
				case "1/3":
					cooldown_value = 8;
					coin_offset_x -= 13;
					coin_offset_y += 6;
				break;
				case "2/3":
					coin_offset_x += 13;
					coin_offset_y += 6;
				break;
				case "3/3":
					coin_offset_y -= 8;
				break;
				
				case "1/5":
					cooldown_value = 4;
					coin_offset_x -= 18;
					coin_offset_y += 17;
				break;
				case "2/5":
					coin_offset_x += 18;
					coin_offset_y += 17;
				break;
				case "3/5":
					coin_offset_x -= 9;
					coin_offset_y += 2;
				break;
				case "4/5":
					coin_offset_x += 9;
					coin_offset_y += 2;
				break;
				case "5/5":
					coin_offset_y -= 6;
				break;
			}
			
			var coin = instance_create(round(x + coin_offset_x), round(y + coin_offset_y), "obj_article2");
			coin.player_id = player_id; coin.collector = collector;
			coin.variant = "coin";
			coin.sprite_index = sprite_get("item_coin"); coin.image_index += random_func(0, 8, false);
			coin.vsp = -9.5; coin.life = 12; coin.depth = -2000;
			
			cooldown = cooldown_value;
			value--;
		}
		else {
			cooldown--;
		}
		
		if(value <= 0) { instance_destroy(); exit; }
	break;
	
	case "coin":
		vsp += 1.2;
		image_index += 0.25;
		
		if(age + 1 > life) {
			collector.neo_coins++; collector.neo_points += 10;
			collector.queue_update_score = true;
			sound_stop(collector.coin_sfx_instance);
			collector.coin_sfx_instance = sound_play(sound_get("coin"));
			create_coin_sparklies();
		}
	break;
	//#endregion
	
	default:
		print(`Invalid article2 variant: ${variant}`); sound_play(sound_get("bookworm_buzzer"));
		instance_destroy(); exit;
	break;
}

if(hitstop) exit;
age++; state_timer++;
if(age > life && life != -1) { instance_destroy(); exit; }
if((x > phone_blastzone_r && x > room_width) || (x < phone_blastzone_l && x < 0) || (y > phone_blastzone_b && y > room_height)) { instance_destroy(); exit; }

#define hitbox_matches(hitbox_id, attack_entry)
	return(hitbox_id.player_id.url == attack_entry.url && hitbox_id.attack == attack_entry.attack && hitbox_id.hbox_num == attack_entry.hbox_num);

#define shell_idle_filter(shell_id)
	if(player_id.url == shell_id.player_id.url) {
		var mario_id = shell_id.player_id;
		if(hitbox_matches(id, mario_id.ATTACKS_OBJ.stomp) || hitbox_matches(id, mario_id.ATTACKS_OBJ.fireball))
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
		tangible_y = player_id.y - 128;
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
	// array_push(player_id.phone_offscreen, self); //TODO: re-enable for offscreen icons
	phone_offscr_sprite = sprite_get(sprite); // icon to display
	phone_offscr_index = index; // image_index of the icon
	phone_offscr_x_offset = x_offset; // x offset to draw the arrow at; uses spr_dir
	phone_offscr_y_offset = y_offset; // y offset to draw the arrow at
	phone_offscr_leeway = leeway; // approximate width/height of obj

#define create_coin_sparklies
	var sparkle_index = 0;
	repeat(6) {
		var sparkly_displacement_angle = random_func(sparkle_index, 360, true);
		var sparkly_displacement_magnitude = 1 + random_func(sparkle_index, 12, true);
		
		var sparkly_x_offset = floor(lengthdir_x(sparkly_displacement_magnitude, sparkly_displacement_angle));
		var sparkly_y_offset = floor(lengthdir_y(sparkly_displacement_magnitude, sparkly_displacement_angle) * 1.6);
		
		var sparkly = instance_create(floor(x + sparkly_x_offset), floor(y + sparkly_y_offset), "obj_article1");
		sparkly.player_id = player_id; sparkly.player = player;
		
		sparkly.image_offset = random_func(sparkle_index, 12, true);
		sparkly.image_mult = random_func(sparkle_index, 1, false);
		
		sparkly.variant = "coin sparkle";
		sparkly.sprite_index = sprite_get("decal_sparkle");
		sparkly.life = 4 + random_func(sparkle_index, 8, true);
		
		sparkly.depth = -2001;
		
		sparkle_index++;
	}

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

#define create_dust_decal
/// create_dust_decal(dust_hsp, dust_vsp, dust_alpha, chance, variant = "dust", base_life = 30, extra_life = 15, offset_range_x = 8, offset_range_y = 8, rng_index = 1)
var dust_hsp = argument[0], dust_vsp = argument[1], dust_alpha = argument[2], chance = argument[3];
var variant = argument_count > 4 ? argument[4] : "dust";
var base_life = argument_count > 5 ? argument[5] : 30;
var extra_life = argument_count > 6 ? argument[6] : 15;
var offset_range_x = argument_count > 7 ? argument[7] : 8;
var offset_range_y = argument_count > 8 ? argument[8] : 8;
var rng_index = argument_count > 9 ? argument[9] : 1;
	rng_index = round(rng_index % 20); //making sure we don't kill the RNG function
	
	if(chance >= 100 || random_func(rng_index, 100, false) < chance) {
		var x_offset = random_func(rng_index, offset_range_x + 1, true) - offset_range_x / 2;
		var y_offset = random_func(rng_index + 1, offset_range_y + 1, true) - offset_range_y / 2;
		var x_scale = (random_func(rng_index, 2, true) == 0)?2:-2;
		var y_scale = (random_func(rng_index + 1, 2, true) == 0)?2:-2;
		
		var new_dust = instance_create(round(x + x_offset), round(y + y_offset), "obj_article1");
		new_dust.variant = variant;
		new_dust.fake_hsp = dust_hsp; new_dust.fake_vsp = dust_vsp; new_dust.image_alpha = dust_alpha;
		new_dust.image_xscale = x_scale; new_dust.image_yscale = y_scale; new_dust.depth = depth - 1;
		
		new_dust.life = base_life;
		if(extra_life > 0) new_dust.life += random_func(rng_index, extra_life, true);
		
		return(new_dust);
	} 
	return(noone);

#define was_collected(only_enemies)
	var interaction_player = only_enemies?noone:instance_place(x, y, player_id.object_index);
	
	if(interaction_player != noone && interaction_player.url != player_id.url)
		return(interaction_player);
	else {
		interaction_player = instance_place(x, y, pHurtBox);
		if(interaction_player != noone) interaction_player = variable_instance_get(interaction_player, "playerID", noone);
		if(interaction_player != noone && only_enemies && interaction_player.url == player_id.url) interaction_player = noone;
	}
	return(interaction_player);

#define heal_collectors
	var heal_player = was_collected(true);
	if(heal_player != noone) {
		sound_play(sound_get("reserve_store"));
		
		heal_player.neo_data.healed_by_id = player_id;
		
		switch(subvariant.name) {
			case "Super Mushroom":
				heal_player.neo_data.healed_time = 8;
			break;
			case "Tanooki Leaf":
				if(heal_player.neo_data_compat.has_tail || ("am_has_tail" in heal_player && heal_player.am_has_tail))
					heal_player.neo_data.healed_time = 16;
				else
					heal_player.neo_data.healed_time = 10;
			break;
			default:
				heal_player.neo_data.healed_time = 12;
			break;
		}
		
		if(get_player_team(heal_player.player) == get_player_team(player_id.player))
			heal_player.neo_data.healed_time *= 4;
		
		instance_destroy(); return(true);
	}

#define star_collection(exclusive)
	//Star collection
	var collision_player = noone;
	if(exclusive) {
		if(place_meeting(x, y, player_id)) collision_player = player_id;
	}
	else {
		with(pHurtBox) if(instance_exists(playerID)) {
			var starman_obj = other;
			if(playerID.url == other.player_id.url) {
				with(playerID) {
					if(place_meeting(x, y, starman_obj)) {
						collision_player = id;
					}
				}
			}
				
			else {
				if(place_meeting(x, y, other)) {
					collision_player = playerID;
				}
			}
				
			//Qua Mario uses his collision mask for collecting stars
			//Anyone else uses their hurtbox instead
		}
	}
	
	//this is outside the With loop so only one character can nab the star even if multiple touch it simultaneously
	if(collision_player != noone) {
		var star_stolen = (collision_player != player_id);
		
		//Give them the star
		collision_player.neo_data.starman_from_id = player_id;
		
		//If they already have a star, just extend their star timer
		if(collision_player.neo_data.starman_time > 0) {
			collision_player.neo_data.starman_time += star_stolen?1800:1350;
		}
		else {
			collision_player.neo_data.starman_time = star_stolen?1800:1350;
			//Music override
			var music_override_obj = instance_create(0, 0, "obj_article1");
			music_override_obj.variant = "starman music override";
			music_override_obj.music_override_sfx = sound_get(star_stolen?"mus_starman_nesremixpack":"mus_starman_mpislandtour");
			music_override_obj.pin_to_obj = collision_player;
			
			//Create starman hitbox
			// collision_player.neo_data.starman_hitbox_id = create_hitbox(AT_USPECIAL, 4, 0, 0);
			collision_player.neo_data.starman_hitbox_id.player = collision_player.player;
			collision_player.neo_data.starman_hits = 0;
			
			//Movement stat changes
			//Record current player movement stats to be restored when the star wears off
			if(collision_player.neo_data_compat.custom_starman_stat_handling) {
				//You can handle it <3
			}
			else {
				
				//Record pre-starman movement stats
				with(collision_player) neo_data.prestarman_stats_obj = {
					dash_speed: dash_speed,
					initial_dash_speed: initial_dash_speed,
					dash_turn_time: dash_turn_time,
					jump_speed: jump_speed,
					short_hop_speed: short_hop_speed,
					dash_anim_speed: dash_anim_speed,
					walk_speed: walk_speed,
					walk_accel: walk_accel,
					walk_anim_speed: walk_anim_speed,
					wave_land_adj: wave_land_adj,
					moonwalk_accel: moonwalk_accel,
					djump_speed: djump_speed,
					djump_accel: djump_accel,
					walljump_vsp: walljump_vsp,
					jump_change: jump_change,
					leave_ground_max: leave_ground_max,
					air_max_speed: air_max_speed,
					max_jump_hsp: max_jump_hsp,
					air_accel: air_accel,
					max_fall: max_fall,
					fast_fall: fast_fall,
					gravity_speed: gravity_speed
				};
				
				//Record new souped up movement stats :3
				with(collision_player) neo_data.starman_stats_obj = {
					dash_speed: dash_speed * 1.65,
					initial_dash_speed: initial_dash_speed * 2.0,
					dash_turn_time: dash_turn_time * 0.5,
					jump_speed: jump_speed * 1.4,
					short_hop_speed: short_hop_speed * 1.15,
					dash_anim_speed: dash_anim_speed * 2.0,
					walk_speed: walk_speed * 1.6,
					walk_accel: walk_accel * 1.6,
					walk_anim_speed: walk_anim_speed * 2.0,
					wave_land_adj: wave_land_adj + 0.6,
					moonwalk_accel: moonwalk_accel * 2,
					djump_speed: djump_speed * ((djump_speed < 0)?1:1.4),
					djump_accel: djump_accel * 1.4,
					walljump_vsp: walljump_vsp * 1.75,
					jump_change: jump_change * 2,
					leave_ground_max: leave_ground_max * 1.5,
					air_max_speed: air_max_speed * 1.75,
					max_jump_hsp: max_jump_hsp * 1.5,
					air_accel: air_accel * 1.75,
					max_fall: max_fall * 1.25,
					fast_fall: fast_fall * 1.65,
					gravity_speed: gravity_speed * 1.25
				};
				
				collision_player.neo_data.starman_stats_on = true;
			}
		}
		
		return(true);
	}
	return(false);

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