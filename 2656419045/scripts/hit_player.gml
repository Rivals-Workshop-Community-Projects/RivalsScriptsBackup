//Hit player
if(debug_print_attacked_url) {
	get_string("The enemy's URL is:", string(hit_player_obj.url));
	hit_player_obj.invincible = true; hit_player_obj.invince_time = 120;
}

hit_player_obj.neo_data.launched_by_id = id;

if("identity" in my_hitboxID) switch(my_hitboxID.identity.name) {
	case "Stomp": case "Ground Pound": case "Spin Jump": //stomp, ground pound, spin jump
		listening_for_hitpause = false;
		stomped_success = true;
		if(hit_player_obj.clone) {
			stomped_clone = true;
			stomped_id = "clone";
		}
		else {
			stomped_player = true;
			stomped_id = hit_player_obj;
		}
		
		// if(my_hitboxID.identity.name == "Stomp" && hit_player_obj.neo_data.is_robot) {
		// 	if(hit_player_obj.neo_data.robot_level == undefined)
		// 		hit_player_obj.neo_data.robot_level = hit_player_obj.temp_level;
			
		// 	hit_player_obj.temp_level = min(hit_player_obj.temp_level + 1, 9);
			
		// 	hit_player_obj.shield_pressed = true;
		// 	hit_player_obj.shield_counter = 0;
			
		// 	print(`its level is ${hit_player_obj.temp_level}`);
		// }
	break;
	
	case "item-2": //thrown POW
		my_hitboxID.powplode = true;
	break;
	
	case "item-4": //starman active hitbox
		hit_player_obj.neo_data.hit_by_star = id;
	break;
	
	case "item-5": //thrown stone
		my_hitboxID.hsp = 0; my_hitboxID.vsp = -4;
	break;
	
	case "item-6":
		my_hitboxID.owner.mark_for_destruction = true;
		my_hitboxID.owner.toss_dir = -1 * spr_dir;
	break;
	
	case "Iceball":
		sound_play(my_hitboxID.freeze_sfx);
		var enemy = hit_player_obj;
		if(!enemy.super_armor && !enemy.neo_data_compat.unfreezable && enemy.neo_data.frozen_frames <= 0) {
			with(enemy) destroy_hitboxes();
			// enemy.state = PS_HITSTUN; enemy.hitstun = 4;
			// enemy.hitpause = true; enemy.hitstop = 4; enemy.hitstop_full = 4;
			enemy.neo_data.frozen_by_id = id;
			
			enemy.neo_data.frozen_data = {
				spr_dir: enemy.spr_dir,
				sprite: enemy.sprite_index,
				image: enemy.image_index,
				mask: enemy.mask_index,
				state: enemy.state,
				state_timer: enemy.state_timer,
				attack: enemy.attack,
				window: enemy.window,
				window_timer: enemy.window_timer
			};
			
			enemy.mask_index = spr_mask_dead; enemy.visible = false;
			
			if(enemy.url == url) {
				enemy.neo_data.frozen_frames = enemy.neo_power.size_profile.freeze_time;
				var ice_w = enemy.neo_power.size_profile.ice_w;
				var ice_h = enemy.mask_stance == "duck_"?enemy.neo_power.size_profile.ice_h_duck:enemy.neo_power.size_profile.ice_h;
			}
			else {
				enemy.neo_data.frozen_frames = clamp(knockback_adj * ((get_player_damage(hit_player_obj.player) * 1.25) + 10), 20, 150);
				var ice_w = 0.5 * max(32, abs(sprite_get_bbox_right(enemy.hurtboxID.sprite_index) - sprite_get_bbox_left(enemy.hurtboxID.sprite_index)));
				var ice_h = 0.5 * max(32, abs(sprite_get_bbox_top(enemy.hurtboxID.sprite_index) - sprite_get_bbox_bottom(enemy.hurtboxID.sprite_index)));
				if(enemy.state != PS_ATTACK_AIR && enemy.state != PS_ATTACK_GROUND) {
					ice_w += 16; ice_h += 8;
				}
			}
			var ice_x = enemy.x, ice_y = enemy.y - ice_h;
			
			var ice = instance_create(round(ice_x), ceil(ice_y), "obj_article_solid");
			ice.neo_carry_data = {
				is_liftable: true, is_grabbable: false,
				carried_type: 0,
				was_released: 0
			};
			ice.default_owner = player_instances[my_hitboxID.player];
			array_push(neo_data_compat.carryable_objects, ice);
			ice.image_xscale = abs(ice_w); ice.image_yscale = ice_h;
			ice.spr_dir = enemy.spr_dir;
			ice.variant = "ice block"; ice.subvariant = "frozen player"; ice.life = -1;
			ice.sprite_index = my_hitboxID.ice_mask_sprite; ice.mask_index = ice.sprite_index;
			ice.image_alpha = 0.0; ice.render_rumble = false;
			ice.ignores_walls = false; ice.can_be_grounded = true;
			
			if(enemy.free) {
				ice.free = true;
				ice.state = "Initial";
				// ice.state_timer = 50;
			}
			else {
				ice.free = false;
				ice.state = "Grounded";
				ice.hsp = enemy.hsp;
			}
			
			ice.orig_steve_death_message = `Steve was pummeled by %s using [${variable_instance_get(enemy, "muno_char_name", get_char_info(enemy.player, INFO_STR_NAME))}]`;
			
			enemy.state = PS_HITSTUN; enemy.state_timer = 0; enemy.hitstun = 4;
			enemy.hitpause = true; enemy.hitstop = enemy.neo_data.frozen_frames; enemy.hitstop_full = enemy.hitstop;
			enemy.old_hsp = enemy.hsp; enemy.old_vsp = enemy.vsp; enemy.hsp = 0; enemy.vsp = 0;
			
			ice.frozen_sprite = enemy.sprite_index; ice.frozen_image = enemy.image_index;
			ice.frozen_xscale = (enemy.small_sprites?2:1); ice.frozen_yscale = (enemy.small_sprites?2:1);
			ice.frozen_angle = enemy.spr_angle; ice.frozen_colour = c_white;
			ice.frozen_shader_owner = enemy; ice.frozen_use_shader = true;
			ice.contains_player = enemy;
			ice.frozen_xoffset = enemy.x - ice_x + enemy.draw_x; ice.frozen_yoffset = enemy.y - ice_y + enemy.draw_y;
			
			ice.free = enemy.free;
			
			enemy.neo_data.frozen_ice_instance = ice;
		}
	break;
	
	case "Ice Block":
		my_hitboxID.state = "Shatter"; my_hitboxID.shatter_hsp = my_hitboxID.hsp;
	break;
}
else {
	// print_debug("i hope this is a stage hazard hitbox.");
}