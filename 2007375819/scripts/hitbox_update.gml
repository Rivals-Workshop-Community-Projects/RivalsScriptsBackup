//hitbox_update

if (attack == AT_NSPECIAL) {
	if hbox_num == 1 {
		if player_id.up_down {
		vsp -= 0.08;
		}
		if player_id.down_down {
		vsp += 0.08;
		}	
	}
}

if (attack == AT_FSPECIAL) {
	draw_xscale = spr_dir;
	img_spd = hsp/20;
		if hitbox_timer > length-22 && (get_gameplay_time()%(3)) {
		visible = false;
		} else {
		visible = true;
	}

	if hsp == 0 && !free {
		hsp = 2*spr_dir;
	}
	
	if was_parried {
		var angle = point_direction(x, y, player_id.x, player_id.y);
		hsp = lengthdir_x(15, angle);
		vsp = lengthdir_y(15, angle);
		walls = 1;
		grounds = 1;
		proj_angle -= 10;
		grav = 0;
		air_friction = 0;
		if hbox_num == 1 {
			with player_id other.sprite_index = hFallSprite;			
		}
		if hbox_num == 2 {
			with player_id other.sprite_index = pizzaFallSprite;		
		}
	}
		
	if hbox_num == 1 && !was_parried {
		hsp = clamp(hsp, -6, 6);
		if free { 
			with player_id other.sprite_index = hFallSprite;
		}	else if skidTimer == 0 {
			with player_id other.sprite_index = hMoveSprite;
		}

		if skidTimer > 0 {
			skidTimer--;
			with player_id other.sprite_index = hTurnSprite;
			
			if hsp != 0 { 
				hsp -= -.5*spr_dir;
			}
			
			if hsp == 0 || hsp > 0 && spr_dir > 0 || 0 > hsp && 0 > spr_dir {
				skidTimer = 0;
				hsp = 4*spr_dir;
			}
		}
		
		if player_id.attack == AT_FSPECIAL_2 && player_id.window == 2 && player_id.window_timer == 1 && !was_parried && 20 > hittimer {
			if player_id.spr_dir == spr_dir {
				vsp -= 6;
				hsp *= .25;
			} else {
				skidTimer = 25;
				hsp = 5*spr_dir;
				spr_dir *= -1;
			}
			hitbox_timer -= 40;
		}
		
		if got_hit {
			with player_id other.sprite_index = hFallSprite;
		}
	}
	
	if hbox_num == 2 && !was_parried {
		hsp = clamp(hsp, -8, 8);
		if free { 
			with player_id other.sprite_index = pizzaFallSprite;
		}	else if skidTimer == 0 {
			with player_id other.sprite_index = pizzaMoveSprite;
		}
		
		if skidTimer > 0 {
			skidTimer--;
			with player_id other.sprite_index = pizzaTurnSprite;
			
			if hsp != 0 { 
				hsp -= -.5*spr_dir;
			}
			
			if hsp == 0 || hsp > 0 && spr_dir > 0 || 0 > hsp && 0 > spr_dir {
				skidTimer = 0;
				hsp = 1*spr_dir;
			}
		}
		
		if player_id.attack == AT_FSPECIAL_2 && player_id.window == 2 && player_id.window_timer == 1 && !was_parried && 20 > hittimer {
			if player_id.spr_dir == spr_dir {
				vsp -= 6;
				hsp *= .5;
			} else {
				skidTimer = 35;
				hsp = 5*spr_dir;
				spr_dir *= -1;
			}
			hitbox_timer -= 40;
		}
		
		if got_hit {
			with player_id other.sprite_index = pizzaFallSprite;		
		}
	}

	if (x > room_width or y > room_height + 200){
		hitbox_timer = length;
	}

	if hittimer > 0 && !in_hitpause {
		hittimer--;
	}
		
	if hittimer == 1 && !was_parried {
		for(var i = 0; i < 20; i++) can_hit[i] = true;
	}	
	
	if hitbox_timer == length {
		with player_id spawn_hit_fx( other.x, other.y-2, AppearBruh);
		with player_id move_cooldown[AT_FSPECIAL] = 80;
		with player_id move_cooldown[AT_FSPECIAL_2] = move_cooldown[AT_FSPECIAL];
		with player_id sound_play(sound_get("sfx_disappear"));
	}
	
	if hitbox_timer != length {
		player_id.HOut = true;
	} else {
		player_id.HOut = false;
		}
	
	var got_hit = false;
	var enemy_hitboxID = noone;
	var hit_distance = 4;
	var hit_type = 1;
	
	with (asset_get("pHitBox")) {
		if (player_id == other.player_id && attack == AT_NSPECIAL && hbox_num == 1 && place_meeting(x+10*(spr_dir * -1),y,other.id) && !player_id.has_hit && !other.was_parried) {
			if other.hbox_num == 1 {
				other.bkb_final += 2;
				other.vsp = -12;	
				other.hsp *= 0.9;					
			}
			if other.hbox_num == 2 {
				other.bkb_final += 0;
				other.vsp = -11.5;	
				other.hsp *= 0.65;				
			}
			other.hitbox_timer -= 40;
			destroyed = true;
			sound_play(asset_get("sfx_clairen_hit_med"));
		}
			
		if (player_id == other.player_id && attack == AT_EXTRA_2 && place_meeting(x,y+10,other.id) && hitbox_timer < 5 && !player_id.has_hit && !other.was_parried) {
			other.vsp = -10;
			other.spr_dir = spr_dir;
			other.hsp = 8 * (spr_dir);
			other.spr_dir = spr_dir;			
			other.hitbox_timer -= 70;
			destroyed = true;
			sound_play(asset_get("sfx_ell_arc_small_missile_ground"), false, noone, .6, 1.5);
		}
			
		if (place_meeting(x, y, other.id) && player_id != other.player_id && (other.hbox_num == 1 && damage > 3 || other.hbox_num == 2 && damage > 7) && !player_id.has_hit){
			got_hit = true;
			enemy_hitboxID = player;
			hit_distance = kb_value;
			player_id.has_hit = 1;
			hit_type = type;
		}
	}
		
	if got_hit{
		image_xscale = 0;
		image_yscale = 0;
		proj_angle = -180;
		hitbox_timer = length-40;
		if hitbox_timer == length-41 {
			player = enemy_hitboxID;
			}
		vsp = -3-(hit_distance*1.5);
		hsp = (hit_distance*.6) * (-spr_dir);
		grounds = 1;
		walls = 1;
		spawn_hit_fx(x, y, 304);
		sound_play(asset_get("sfx_shop_invalid"), false, noone, 1, 1.2);		
	}
}

if (attack == AT_DAIR) {
	if hbox_num == 1 {
		proj_angle -= 1;
		
		if hitbox_timer == 6 {
			kb_angle = 45;
			kb_scale = .6;
		}
		if hitbox_timer == 25 {
		spawn_hit_fx(x,y,13);
		}

		if !free {
			hitbox_timer = 1;
			destroyed = true;
			with player_id sound_play(sound_get("sfx_glassbreak"));
			create_hitbox( AT_DAIR, 2, x, y-5);
			create_hitbox( AT_DAIR, 3, x, y-5);
		}
		if was_parried {
			var angle = point_direction(x, y, player_id.x, player_id.y-24)
			hsp = lengthdir_x(12, angle);
			vsp = lengthdir_y(12, angle);
		}
	}	
	
	if hbox_num == 2 || hbox_num == 3 {	
		if !free && !was_parried {
			destroyed = true;
		}

		with (asset_get("pHitBox")) {
			if (attack == AT_DAIR && was_parried) {
				other.player = player;
			}
		}
		if was_parried {
			var angle = point_direction(x, y, player_id.x, player_id.y-24);
			hsp = lengthdir_x(12, angle);
			vsp = lengthdir_y(12, angle);
			proj_angle -= 5;
			walls = 1;
			grounds = 1;
		}
	}
}

if (attack == AT_EXTRA_2) {
	if free {
		vsp += .7;
	}
	if vsp > 14 {
		destroyed = true;
	}
	if !free {
		vsp = -9;
	}
}