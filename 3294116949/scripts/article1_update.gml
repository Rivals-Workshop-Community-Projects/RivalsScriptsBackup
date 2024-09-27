//article1_update
//i forgor

player_id.move_cooldown[AT_NSPECIAL] = 80; // 40
if returning player_id.move_cooldown[AT_NSPECIAL] = 90; // 60
if was_hit player_id.move_cooldown[AT_NSPECIAL] = 100; // 80
if was_parried player_id.move_cooldown[AT_NSPECIAL] = 120; // 120
if ignited player_id.move_cooldown[AT_DSPECIAL] = 80;

if(place_meeting(x, y, asset_get("plasma_field_obj"))){
	if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
	instance_destroy(self);
	exit;
}

hitstop = max(hitstop, 0)

if(!hitstop){
	var lamps = [];
	if !ignited {
		with(obj_article2) if player_id.url == other.player_id.url && "in_use" in self && !in_use && place_meeting(x, y, other) array_push(lamps, self)
	}
	if((state < 3 || (state == 3 && returning && !was_hit && !was_parried && !normal_return)) && array_length(lamps) > 0 && !ignited){
		ignited = true;
		for(var i = 0; i < array_length(lamps); i++){
			instance_destroy(lamps[@i]);
		}
		sound_play(asset_get("sfx_forsburn_combust"));
		sound_play(asset_get("sfx_rag_whip"));
		spawn_hit_fx(x, y, HFX_MAY_RAG_WHIP);
		switch(state){
			case 1:
			if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
			axe_hitbox = create_hitbox(AT_NSPECIAL, 4, x, y);
			axe_hitbox.spr_dir = spr_dir;
			with(oPlayer) if self != other.player_id && hit_player_obj == other.player_id can_be_hit[other.player] = 0;
			break;
			case 2:
			if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
			axe_hitbox = create_hitbox(AT_NSPECIAL, 5, x, y);
			axe_hitbox.spr_dir = spr_dir;
			axe_hitbox.hitbox_timer = state_timer;
			with(oPlayer) if self != other.player_id && hit_player_obj == other.player_id can_be_hit[other.player] = 0;
			break;
			case 3:
			if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
			axe_hitbox = create_hitbox(AT_NSPECIAL, 7, x, y);
			axe_hitbox.spr_dir = spr_dir;
			axe_hitbox.hitbox_timer = state_timer;
			break;
		}
	}
	switch(state){
		case 1:
			if(instance_exists(axe_hitbox)){
				axe_hitbox.x = x + hsp;
				axe_hitbox.y = y + vsp;
			}
			if hsp != 0 hsp -= 1 * abs(hsp)/hsp;
			if place_meeting(x + 2 * spr_dir, y, asset_get("par_block")) && hsp == 0 {
				hsp = -prev_hsp;
				sound_play(asset_get("sfx_shovel_hit_med2"));
				spawn_hit_fx(x + 36 * spr_dir, y, 302);
				spr_dir *= -1;
			}
			if(abs(hsp) <= 3){
				state = 2;
				state_timer = 0;
				if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
			}
		break;
		case 2:
			with(player_id) var thing = get_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME);
			if(state_timer%(thing - 1) == 1){
				if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
				if ignited axe_hitbox = create_hitbox(AT_NSPECIAL, 6, x, y) else axe_hitbox = create_hitbox(AT_NSPECIAL, 3, x, y);
				axe_hitbox.spr_dir = spr_dir;
			}
			if(instance_exists(axe_hitbox)){
				axe_hitbox.x = x + hsp;
				axe_hitbox.y = y + vsp;
			}
			hsp -= .1 * spr_dir;
			if(state_timer >= 60){
				if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
				normal_return = true;
				is_hittable = false;
				ignores_walls = true;
				sprite_index = sprite_get("spinning_axe2");
				state = 3;
				state_timer = 0;
				return_magnintude = abs(hsp);
				return_dir = point_direction(0, 0, hsp, vsp);
				if(ignited){
					axe_hitbox = create_hitbox(AT_NSPECIAL, 5, x, y);
					axe_hitbox.spr_dir = spr_dir;
					with(oPlayer) if self != other.player_id && hit_player_obj == other.player_id can_be_hit[other.player] = 0;
				}
			}
		break;
		case 3:
			if(ignited && returning && state_timer == 3){
				if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
				axe_hitbox = create_hitbox(AT_NSPECIAL, 7, x, y);
				axe_hitbox.spr_dir = spr_dir;
			}
			if(instance_exists(axe_hitbox)){
				axe_hitbox.x = x + hsp;
				axe_hitbox.y = y + vsp;
			}
			var dir = point_direction(x, y, player_id.x, player_id.y - player_id.char_height/2);
			var dist = point_distance(x, y, player_id.x, player_id.y - player_id.char_height/2);
			return_dir += angle_difference(dir, return_dir) * return_aim_strength;
			hsp = lengthdir_x(return_magnintude, return_dir);
			vsp = lengthdir_y(return_magnintude, return_dir);
			if(dist < return_magnintude){
				state = 69;
				state_timer = 0;
				x = player_id.x;
				y = player_id.y - player_id.char_height/2;
				hsp = 0;
				vsp = 0;
				if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
			}
			return_aim_strength  = min(return_aim_strength + 0.02, 1);
			return_magnintude += .25;
		break;
		case 4:
		break;
		case 69:
		if ignited { var hfx = spawn_hit_fx(player_id.x, player_id.y - player_id.char_height/2, HFX_ZET_FIRE) hfx.fennek_player_depth = true; }
		else { spawn_hit_fx(player_id.x, player_id.y - player_id.char_height/2, 302) sound_play(asset_get("sfx_icehit_weak1")) }
		if ignited with player_id if (state != PS_RESPAWN && state != PS_DEAD && !respawn_taunt) {
			// burned = true;
   // 		burnt_id = self;
   // 		burn_timer = 0;
    		sound_play(asset_get("sfx_burnapplied"));
		}
		if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
		instance_destroy(self);
		exit;
		break;
	}

	image_index = anim_timer/2;
	
	state_timer++;
	anim_timer++;
	prev_hsp = hsp;
	if(ignited){
		if sprite_index == sprite_get("spinning_axe1") sprite_index = sprite_get("spinning_axe1_fire");
		if sprite_index == sprite_get("spinning_axe2") sprite_index = sprite_get("spinning_axe2_fire");
	}
	if(anim_timer%4 == 1){
		if sprite_index == sprite_get("spinning_axe1") || sprite_index == sprite_get("spinning_axe1_fire") spawn_hit_fx( x, y, axetrailing);
		if sprite_index == sprite_get("spinning_axe2") || sprite_index == sprite_get("spinning_axe2_fire") { spawn_hit_fx( x, y, axetrailing2);
		mask_index = sprite_get("spinning_axe2_mask") }
	}

}