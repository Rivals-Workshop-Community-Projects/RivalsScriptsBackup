if (attack == AT_NSPECIAL) {
	if (hitbox_timer%5 == 0){
		if (hbox_num == 1){
			spawn_hit_fx(x - 10*spr_dir, y, player_id.nspecial_trail1);
		}
		if (hbox_num == 2){
			spawn_hit_fx(x - 10*spr_dir, y, player_id.nspecial_trail2);
		}
		if (hbox_num == 3){
			spawn_hit_fx(x - 10*spr_dir, y, player_id.nspecial_trail3);
		}
	}
	
	if (hbox_num >= 2){
		var reflected_spr = sprite_get("nspecial_proj_reflect");
		with (asset_get("pHitBox")){
			if (place_meeting(x,y,other.id) && other.hitbox_timer > 20 && type == 1 && kb_value >= 1){
				other.reflected = true;
				other.player = player_id.player;
			}
		}
		
		if (was_parried == true){
			destroyed = true;
		}
		
		if (reflected == true && was_parried == false){
			was_reflected = true;
			if (player == orig_player){
				sprite_index = sprite_get("nspecial_proj_reflect");
			}
			else {
				sprite_index = reflected_spr;
			}
			
			hbox_num = 3;
			hsp = -hsp*1.1;
			spr_dir *= -1;
			damage += 1;
			kb_value += 0.3;
			hitpause += 0.3;
			hitbox_timer = 0;
			reflected = false;
		}
		
	}
	
}

if (attack == AT_DSPECIAL_2) {
	if (hitbox_timer%5 == 0){
		spawn_hit_fx(x - 10*spr_dir, y, player_id.dspecial_trail1);
		spawn_hit_fx(x - 10*spr_dir, y, player_id.dspecial_trail2);
	}
	player_id.move_cooldown[AT_DSPECIAL] = 5;
}