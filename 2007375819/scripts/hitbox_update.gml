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
	if hbox_num == 1 {
		img_spd = hsp/15;
		if free { 
			with player_id other.sprite_index = sprite_get("h_fall");
		}
		else {
		with player_id other.sprite_index = sprite_get("h_move");
		}
		
		if hitbox_timer == 120 {
		spawn_hit_fx( x, y, 194);
		}
		
		if hitbox_timer != 120 {
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
			other.bkb_final += 2;
			other.vsp = -14;
			other.hsp = 4 * (spr_dir);
			other.spr_dir = spr_dir;			
			other.hitbox_timer = 50;
			destroyed = true;
			sound_play(asset_get("sfx_clairen_hit_med"));
			}
			
		if (player_id == other.player_id && attack == AT_EXTRA_2 && place_meeting(x,y+10,other.id) && hitbox_timer < 5 && !player_id.has_hit && !other.was_parried) {
			other.vsp = -8;
			other.spr_dir = spr_dir;
			other.hsp = 8 * (spr_dir);
			other.spr_dir = spr_dir;			
			other.hitbox_timer = 80;
			destroyed = true;
			sound_play(asset_get("sfx_ell_arc_small_missile_ground"), false, noone, .6, 1.5);
			}
			
		if (place_meeting(x, y, other.id) && player_id != other.player_id && damage > 3 && !player_id.has_hit){
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
		hitbox_timer = 100;
		if hitbox_timer == 101 {
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