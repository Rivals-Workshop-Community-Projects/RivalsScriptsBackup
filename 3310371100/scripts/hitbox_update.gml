//hitbox_update

if (attack==AT_NSPECIAL){
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
	
}

/*
if ( attack==AT_NSPECIAL || attack==AT_FSTRONG || (attack==AT_FSPECIAL && hbox_num==3) ){
	print("hitbox...detected")
}
*/