//hitbox_update

if (attack==AT_NSPECIAL){
	var tmp_counting = 0.5;
	with(asset_get("pHitBox")){
		if (id != other.id){
			if (variable_instance_exists(id, "nurburgring_24h_endurance")){
				tmp_counting++;
				//print("more hitbox found. "+string(tmp_counting))
			}
		}
	}
	tmp_counting = ceil(tmp_counting*2);
	
	if(variable_instance_exists(id, "ice_hsp_b")){
		if(ice_hsp_b != -4){
			ice_hsp = ice_hsp_b;
			ice_vsp = ice_vsp_b;
			ice_hsp_b = -4;
			ice_verticalmode = ice_verticalmode_b
			ice_fake_lifetime = ice_fake_lifetime_b
		}
	}
	hsp = ice_hsp
	vsp = ice_vsp
	ice_vsp = ice_vsp + ice_grav
	if (!free){
		ice_vsp = clamp(ice_vsp*-1, -8.5, 100);
		ice_vsp = ice_vsp*clamp(0.25+ice_verticalmode,1,160)
		spawn_hit_fx(x, y+8, 29);
		if (first_bounce == -4){
			first_bounce = ice_vsp;
		}else{
			ice_vsp = first_bounce;
		}
		vsp = ice_vsp;
		sound_play(asset_get("sfx_ice_chain"),false,noone,1,1.4);
		if (ice_verticalmode){
			//print("beep")
			//vsp = vsp*3
			if (hitbox_timer >= ice_fake_lifetime){
				destroyed = true;
			}
		}
	}
	if (hitbox_timer%(4*tmp_counting)==0){
		spawn_hit_fx(x-hsp, y-vsp, fx_icepart)
	}
	if (hitbox_timer%(7*tmp_counting)==0){
		var tmp_fx = spawn_hit_fx(x, y, fx_mist)
		tmp_fx.hsp = hsp/20;
		tmp_fx.vsp = vsp/20;
		tmp_fx.image_alpha = 0.25;
	}
	
}

/*
if ( attack==AT_NSPECIAL || attack==AT_FSTRONG || (attack==AT_FSPECIAL && hbox_num==3) ){
	print("hitbox...detected")
}
*/