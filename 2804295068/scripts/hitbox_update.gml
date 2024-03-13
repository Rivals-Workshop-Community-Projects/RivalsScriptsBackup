//firepea stuff
if (attack == AT_FTILT 
|| attack == AT_EXTRA_1 
|| (attack == AT_NAIR && hbox_num == 4) 
|| attack == AT_FAIR 
|| attack == AT_BAIR 
|| attack == AT_FSTRONG 
|| attack == AT_NSPECIAL 
|| attack == 49 && hbox_num != 3){
	if was_parried{
		instance_destroy();
		exit;
	}
	if torched{
		sprite_index = player_id.firepea_sprite;
		hit_effect = 4
		if (sound_effect == sound_get("splat3")){
		    sound_effect = sound_get("ignite");
		}
		if (sound_effect == sound_get("splat2")){
		    sound_effect = sound_get("ignite2");
		}
		if (sound_effect == asset_get("sfx_ell_utilt_hit")){
		    sound_effect = asset_get("sfx_ell_uspecial_explode");
		}
		damage = torch_damage_mult
		length = torch_length_mult
		hsp = torch_hsp_mult
	}
}
if (has_rune("G")){
	if (attack == AT_FTILT 
	|| attack == AT_EXTRA_1 
	|| (attack == AT_NAIR && hbox_num == 4) 
	|| attack == AT_FAIR 
	|| attack == AT_BAIR 
	|| attack == AT_FSTRONG 
	|| attack == AT_NSPECIAL){
		if torched{
			extra_hitpause = 12
		}
	}
}
//big firepea
if (attack == 49 && hbox_num == 3){
	if was_parried{
		instance_destroy();
		exit;
	}
	if torched{
		sprite_index = sprite_get("pea_torched_big");
		collision = sprite_get("pea_big");
		hit_effect = 148
		sound_effect = asset_get("sfx_burnconsume");
		damage = torch_damage_mult
		length = torch_length_mult
		hsp = torch_hsp_mult
		if (has_rune("G")){
		    extra_hitpause = 12
		}
	}
}
if (attack == AT_EXTRA_1){
	if torched{
		proj_angle = 180;
	}
}

//bean stuff
if (attack == AT_FSPECIAL && hbox_num == 1){
	player_id.bean_x = x;
	player_id.bean_y = y;
	if (!free){
		bean_fall_prevention = true;
	    hsp *= .97
	    proj_angle += (hsp*-2)
	}
	if (free && bean_fall_prevention == true){
		bean_fall_prevention = false;
	    hsp = -1 * spr_dir;
		vsp = -1;
	}
	if (player != orig_player){
		player = orig_player
	}
	if (hitbox_timer == 60){
		sound_play (sound_get ("bean_voice2"));
	}
	if (hitbox_timer >= 120){
	    sprite_index = sprite_get("bean_bomb_flashing");
	}
	if (hitbox_timer >= 180){
		create_hitbox( AT_FSPECIAL, 2, x, y-12, );
		spawn_hit_fx(x,y-12,145)
		sound_play (sound_get("bean_explode"));
		sound_stop (sound_get("bean_voice"));
		sound_stop (sound_get("bean_voice2"));
		instance_destroy();
		exit;
	}
}