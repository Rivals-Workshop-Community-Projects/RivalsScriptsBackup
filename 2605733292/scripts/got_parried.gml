//got_parried.gml

if (my_hitboxID.attack == AT_NAIR){
	prat_land_time = 80;
	set_state(PS_PRATFALL);
}

if (my_hitboxID.attack == AT_NSPECIAL){
	prat_land_time = 80;
	set_state(PS_PRATLAND);
}

if (my_hitboxID.attack == AT_DSPECIAL){
	essence_got_parried = true
	//prat_land_time = 80;
	//set_state(PS_PRATLAND);
	/*
    with (asset_get("obj_article1")){
        if (player_id.player == other.player){
            spr_dir *= -1;
            hsp *= -1
			vsp *= -1
        }
    }
	*/
}

if (my_hitboxID.attack != AT_NAIR && my_hitboxID.attack != AT_NSPECIAL){
	prat_land_time = 10;
}