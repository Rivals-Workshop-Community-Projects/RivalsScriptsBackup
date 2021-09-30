//hitbox_update

if (attack==AT_DTILT){
	if (despawne){
		hsp = 0;
		despawne++;
		if (despawne>30){
			vsp=vsp+0.2
			walls = 1
			grounds = 1
		}else{hitbox_timer=0;}
	}else{
		if (c_old_vsp > vsp && c_old_vsp>=2){
			bounce_count++;
			sound_play(asset_get("sfx_birdflap"))
			vsp = clamp(c_old_vsp,-5,10)*(-1+(bounce_count/10))//(-1+(bounce_count/10))
			hitbox_timer=0;
			if (bounce_count = 3){
				despawne++;
				//print("despawne")
				mask_index = asset_get("empty_sprite")
				sprite_index = item_grey
				sound_play(collide_snd)
				//image_alpha = 0.5
				if(!thrower){player_id.dtilt_c_cooldown = 0;}
			}
		}
		if (spr_dir = 1){ hsp = clamp(hsp-(0.1*spr_dir), 0, 10) }//0.08
		if (spr_dir = -1){ hsp = clamp(hsp-(0.1*spr_dir), -10, 0) }
		proj_angle = proj_angle-hsp
		c_old_hsp = hsp;
		c_old_vsp = vsp;
		if(hitbox_timer==length-1&&!thrower){
			//print("dtilt hitbox timer reached its end")
			player_id.dtilt_c_cooldown = 0;
		}
	}
}
if (attack==AT_DSTRONG){
	if (hitbox_timer==8){
		mask_index = asset_get("empty_sprite")
		sprite_index = deadly_grey
		sound_play(collide_snd,false,noone,0.4)
	}
}
if (attack==AT_USTRONG){
	if (hbox_num==1){
	if (hitbox_timer==length-1){
		spawn_hit_fx( x, y, destroy_fx )
		
	}
	}
}
if (attack==AT_BAIR){
	if (hbox_num==2){
		x_pre_6 = x_pre_5
		x_pre_5 = x_pre_4
		x_pre_4 = x_pre_3
		x_pre_3 = x_pre_2
		x_pre_2 = x_pre_1
		x_pre_1 = x;
		hsp = hsp - (1*spr_dir)
		if (hitbox_timer>=5){
			damage = 3
			kb_value = 6
			kb_scale = 0.4
			hitpause = 6
			hitpause_growth = 0.4
			hit_effect = 109
		}
	}
}

















