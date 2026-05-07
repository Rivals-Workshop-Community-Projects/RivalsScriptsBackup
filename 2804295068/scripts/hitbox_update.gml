//firepea stuff
if (attack == AT_FTILT 
|| attack == AT_EXTRA_1 
|| (attack == AT_NAIR && hbox_num == 4) 
|| attack == AT_FAIR 
|| attack == AT_BAIR 
|| attack == AT_FSTRONG 
|| attack == AT_NSPECIAL 
|| attack == 49 && hbox_num != 3){
	if torched{
		sprite_index = player_id.firepea_sprite;
		hit_effect = 4;
		if (sound_effect == sound_get("splat3")){
		    sound_effect = sound_get("ignite");
		}
		if (sound_effect == sound_get("splat2")){
		    sound_effect = sound_get("ignite2");
		}
		if (sound_effect == asset_get("sfx_ell_utilt_hit")){
		    sound_effect = asset_get("sfx_ell_uspecial_explode");
		}
		damage = torch_damage_mult;
		length = torch_length_mult;
		if (!was_parried) hsp = torch_hsp_mult;
		else hsp = -torch_hsp_mult;
	}
	if was_parried{
		length = parry_length_mult;
		if (attack != AT_EXTRA_1) draw_xscale = spr_dir;
		if !(attack == AT_FSTRONG && hbox_num == 4) kb_value = 0;
		transcendent = true;
		proj_break = true;
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
		if torched extra_hitpause = 12;
	}
}

//big firepea
if (attack == 49){
	if was_parried{
		instance_destroy();
		exit;
	}
	if (hbox_num == 3){
		if torched{
			sprite_index = sprite_get("pea_torched_big");
			collision = sprite_get("pea_big");
			hit_effect = 148
			sound_effect = asset_get("sfx_burnconsume");
			damage = torch_damage_mult;
			length = torch_length_mult;
			hsp = torch_hsp_mult;
			if (has_rune("G")) extra_hitpause = 12;
		}
	}
}
//snowpea
if (attack == AT_FSPECIAL_2){
	if torched{
		sprite_index = player_id.pea_sprite;
		hit_effect = 301;
		sound_effect = sound_get("splat3");
		kb_angle = 70;
		kb_value = 5;
		extra_hitpause = 0;
		if (!was_parried) hsp = torch_hsp_mult;
		else {
			instance_destroy();
			exit;
		}
	} else if (hitbox_timer mod 4 == 0) spawn_hit_fx(floor(x),floor(y),player_id.snowy_particles);
}

//bean stuff
if (attack == AT_FSPECIAL && hbox_num == 1){
	if (!free){
		bean_fall_prevention = true;
	    hsp *= .97;
	    proj_angle += (hsp*-2);
		for (var i = 0; i < array_length(can_hit); i++) {
			can_hit[i] = false;
		}
	}
	if (free && bean_fall_prevention == true){
		bean_fall_prevention = false;
	    hsp = -1 * spr_dir;
		vsp = -1;
	}
	if (hitbox_timer == 60){
		with player_id sound_play (sound_get ("bean_voice2"));
	}
	if (hitbox_timer >= 120){
	    with player_id other.sprite_index = sprite_get("bean_bomb_flashing");
		//if (has_hit) hitbox_timer = 180;
	}
	if (hitbox_timer >= 180){
		var beanboom = create_hitbox( AT_FSPECIAL, 2, x, y-12, );
		beanboom.player = player;
		spawn_hit_fx(x,y-12,145);
		with player_id{
			sound_play (sound_get("bean_explode"));
			sound_stop (sound_get("bean_voice"));
			sound_stop (sound_get("bean_voice2"));
		}
		instance_destroy();
		exit;
	}
	
	//hittable
	with pHitBox{
		if place_meeting(x, y, other) && (player_id == other.player_id)
		&& (attack == AT_DTILT || attack == AT_DSTRONG){
			if (player_id.hitpause == false 
			&& player_id.hitstop == false
			&& player_id.has_hit = false){
				if (attack == AT_DTILT){
					with other{
						vsp = -4.5;
						bean_fall_prevention = false;
					}
				}
				if (attack == AT_DSTRONG){
					with other{
						vsp = -4.5; // -6.2
						hsp *= -1;
						bean_fall_prevention = false;
					}
				}
        		sound_play(sound_effect);
        		spawn_hit_fx(x, y, hit_effect);

    			player_id.hitpause = true;
                player_id.hitstop = hitpause;
                other.hitstop = hitpause;
				
    			player_id.hitstop_full = hitpause;
    			player_id.old_hsp = player_id.hsp;
    			player_id.old_vsp = player_id.vsp;
    			player_id.has_hit = true;
    			hitstop = hitpause;
    			hitby = player_id;
			}
		}
	}
}

if (attack == AT_FAIR){
	through_platforms = 2;
}