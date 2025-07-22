//hitbox_update

if (attack==AT_NSPECIAL){
	if(variable_instance_exists(id, "ice_hsp_b")){
		if(ice_hsp_b != -4){
			ice_hsp = ice_hsp_b;
			ice_vsp = ice_vsp_b;
			ice_hsp_b = -4;
		}
	}
	hsp = ice_hsp
	vsp = ice_vsp
	ice_vsp = ice_vsp + ice_grav
	if (!free){
		ice_vsp = clamp(ice_vsp*-1, -8.5, 100);
		spawn_hit_fx(x, y+8, 29);
		if (first_bounce == -4){
			first_bounce = ice_vsp;
		}else{
			ice_vsp = first_bounce;
		}
		vsp = ice_vsp;
		sound_play(asset_get("sfx_ice_chain"),false,noone,1,1.4);
	}
	if (hitbox_timer%4==0){
		spawn_hit_fx(x, y, fx_icepart)
	}
	
}

/*
if ( attack==AT_NSPECIAL || attack==AT_FSTRONG || (attack==AT_FSPECIAL && hbox_num==3) ){
	print("hitbox...detected")
}
*/