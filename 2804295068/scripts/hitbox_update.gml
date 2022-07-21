//firepea stuff
if (attack == AT_JAB || attack == AT_EXTRA_1 || (attack == AT_NAIR && hbox_num == 4) || attack == AT_FAIR || attack == AT_BAIR || attack == AT_FSTRONG || attack == AT_NSPECIAL || attack == 49 && hbox_num == 1){
	if torched{
		sprite_index = sprite_get("firepea");
		collision = sprite_get("pea");
		hit_effect = 4
		if (sound_effect == sound_get("splat3")){
		    sound_effect = sound_get("ignite");
		}
		if ((sound_effect == sound_get("splat2")) || (sound_effect == asset_get("sfx_ell_utilt_hit"))){
		    sound_effect = sound_get("ignite2");
		}
		damage = torch_damage_mult
		length = torch_length_mult
		hsp = torch_hsp_mult
		vsp = torch_vsp_mult
		if was_parried{
			instance_destroy();
			exit;
		}
	}
}
if (has_rune("G")){
	if (attack == AT_JAB || attack == AT_EXTRA_1 || (attack == AT_NAIR && hbox_num == 4) || attack == AT_FAIR || attack == AT_BAIR || attack == AT_FSTRONG || attack == AT_NSPECIAL){
		if torched{
			extra_hitpause = 12
		}
	}
}
//big firepea
if (attack == 49 && hbox_num == 2){
	if torched{
		sprite_index = sprite_get("firepea_big");
		collision = sprite_get("pea_big");
		hit_effect = 148
		sound_effect = asset_get("sfx_burnconsume");
		damage = torch_damage_mult
		length = torch_length_mult
		hsp = torch_hsp_mult
		vsp = torch_vsp_mult
		if (has_rune("G")){
		    extra_hitpause = 12
		}
		if was_parried{
			instance_destroy();
			exit;
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
    if (hitbox_timer == 1){
	    vsp = -2
	    hsp = (player_id.hsp/2.5)+(2*spr_dir)
		sound_play (sound_get ("bean_voice"));
	}
	if (hitbox_timer == 60){
		sound_play (sound_get ("bean_voice2"));
	}
	if (hitbox_timer >= 120){
	    sprite_index = sprite_get("bean_bomb_flashing");
	}
	if (!free){
	    hsp *= .97
	    proj_angle += (hsp*-2)
	}
	if (hitbox_timer == length){
	    player_id.boom = true;
	}
	if (was_parried){
		player = orig_player
		hsp = 0
	}
	player_id.bean_x = x;
	player_id.bean_y = y;
}