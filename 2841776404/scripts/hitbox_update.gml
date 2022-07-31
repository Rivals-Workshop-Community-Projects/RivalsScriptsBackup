if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90
}


if (attack == AT_NSPECIAL_2){
	if (hbox_num == 1 && player_id.free == false){
		destroyed = true;
	}
}
if (attack == AT_DSPECIAL_2 && hbox_num == 1){
	x = player_id.x;
	y = player_id.y - 50;
}

if (attack == AT_FSPECIAL_2){
	var trail = spawn_hit_fx(x - 10*spr_dir, y - 8, player_id.drill_trail);
	trail.draw_angle = darctan2(-vsp*spr_dir, hsp*spr_dir);
	if (hitbox_timer < 2){
	through_platforms = 10;
	}
	proj_angle = darctan2(-vsp*spr_dir, hsp*spr_dir);
	if player_id.down_down && hitbox_timer < 2 && !was_parried {
		hsp = 8*spr_dir;
		vsp = 12;
	}
	if (free == false){
		destroyed = true;
	}
	if (destroyed == true){
		sound_play(asset_get("sfx_mol_norm_explode"));
	}
}

if (useless == true){
        damage = 0;
        kb_value = 0;
        hits_rock = 2;
        hit_priority = 0;
        mask_index = 0;
        hit_effect = 420;
}

if (attack == AT_BAIR && hbox_num = 1){
	if (destroyed && !has_hit){
		sound_play(asset_get("sfx_waterhit_medium"));
	}
	if (free == false){
	if (useless == false){
	hitbox_timer = 0;
	img_spd = .3;
	sprite_index = sprite_get("bair_splash");
	image_index = 0;
	sound_play(asset_get("sfx_waterhit_medium"));
	hsp = 0;
	useless = true;
	}
	if (useless == true && hitbox_timer >= 17){
		hitbox_timer = 999;
	}
	}
	
}