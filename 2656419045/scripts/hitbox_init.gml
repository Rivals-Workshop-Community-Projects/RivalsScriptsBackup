//Prepare important variables in hitboxes

my_name = identity.my_name;

// my_name = "undefined";
// switch(attack) {
// 	case AT_USPECIAL:
// 		my_name = "item-" + string(hbox_num);
// 	break;
// 	case AT_NSPECIAL:
// 		my_name = "attack-" + string(hbox_num);
// 	break;
// 	case AT_DSPECIAL:
// 		my_name = "power-" + string(hbox_num);
// 	break;
// 	default:
// 		my_name = string(attack) + "-" + string(hbox_num);
// 	break;
// }

//Hitbox behaviour
switch(identity.name) {
	case "Fireball":
		splash_sfx = sound_get("fireball_splash");
		wall_sfx = sound_get("fireball_wall");
		MorshuCanGrab = true;
		
		//Fireballs glow in dark areas
		if(player_id.stage_id != noone && player_id.stage_id.dynamic_lights != undefined) {
			light = {
				on_instance: id,
				burnout_speed: 0.15,
				darkness_threshold: 190,
				sprite: sprite_get("decal_fireball_glow"),
				image: 0,
				x: x,
				y: y,
				xscale: -1,
				yscale: 1,
				x_offset: 0,
				y_offset: 0,
				angle: 0,
				blend: c_white,
				alpha: 1,
			}
			ds_list_add(player_id.stage_id.dynamic_lights, light);
		}
	break;
	
	case "Koopa Troopa Shell":
		spr_arrow = sprite_get("_pho_cooldown_arrow");
		sfx_skid = sound_get("skid_block");
		sfx_shell_spin = sound_get("shell_spin");
		player = transform_hitbox_player;
		transform_hitbox_player = -1;
		
		if(player < 1 || player > 4) {
			player = player_id.player; can_hit_self = true;
		}
		else can_hit_self = false;
	break;
	
	case "item-2":
		pow_sfx = sound_get("pow_block");
		powplode = false;
	break;
	
	case "item-5":
		var real_owner = player; player = player_id.player;
		stone_sprite = sprite_get("item_stone_block");
		slamma = false;
		player = real_owner;
	break;
	
	case "Iceball":
		neo_freeze_data = false;
		
		freeze_sfx = sound_get("iceball_enemy");
		wall_sfx = sound_get("iceball_wall");
		error_sfx = sound_get("bookworm_buzzer"); error_sprite = sprite_get("misc_error_warning");
		ice_mask_sprite = sprite_get("pmask_ice");
		snowflake_decal_sprite = sprite_get("decal_snowflake");
		bounces = 0;
		
		MorshuCanGrab = true;
	break;
	
	case "Ice Block":
		neo_freeze_data = false;
		
		eject_coins = true; consecutive_hits = 0;
		
		asset_par_block = asset_get("par_block");
		asset_par_jumpthrough = asset_get("par_jumpthrough");
		
		no_attachment = (neo_carry_data.was_released == 3);
		attached_platform = instance_create(-100, -100, "obj_article_platform");
		attached_platform.variant = no_attachment?"ice block projectile renderer":"ice block projectile platform";
		attached_platform.attach_to = id; attached_platform.depth = depth - 1;
		attached_platform.attach_height = image_yscale * 100;
		attached_platform.prev_x = x; attached_platform.prev_y = y;
		attached_platform.image_xscale = image_xscale * 100;
		attached_platform.image_yscale = 1;
		attached_platform.image_alpha = 0.0;
		
		neo_carry_data.was_released = 0;
		
		prev_hsp = hsp; prev_vsp = vsp;
		
		//Prepare QPR
		collisions_qpp = instance_create(x, y, "obj_article2");
		collisions_qpp.variant = "collisions_qpp"; collisions_qpp.violence_qpp = id;
		collisions_qpp.sprite_index = sprite_get("pmask_ice");
		collisions_qpp.mask_index = sprite_get("pmask_ice"); collisions_qpp.depth = -9000;
		collisions_qpp.image_xscale = abs(image_xscale * 100);
		collisions_qpp.image_yscale = abs(image_yscale * 100);
		collisions_qpp.image_alpha = 0.5; collisions_qpp.visible = false;
		
		collisions_qpp.vsp = 1;
		collisions_qpp.assigned_x = x; collisions_qpp.assigned_y = y;
		collisions_qpp.assigned_hsp = 0; collisions_qpp.assigned_vsp = 1;
		collisions_qpp.affected_x = false; collisions_qpp.affected_y = false;
		collisions_qpp.affected_hsp = false; collisions_qpp.affected_vsp = false;
		
		collisions_qpp.can_be_grounded = true; collisions_qpp.ignores_walls = false;
		
		prev_predicted_x = x; prev_predicted_y = y; prev_predicted_hsp = 0; prev_predicted_vsp = 0;
		
		//THIS HAS TO HAPPEN LAST!!!!!
		player = transform_hitbox_player; transform_hitbox_player = -1;
	break;
}