if (instance_exists(grapple)){
	grapple_cont = 0;
	grapple.shoulddie = true;
}

if (instance_exists(batarang)){
	with (asset_get("pHitBox")){
		if (attack == AT_NSPECIAL){
        	player_id.batarang.shoulddie = true;
        	if (instance_exists(player_id.mine)){
        		if (player_id.mine.batarang_carry == true){
        			instance_destroy(player_id.mine);
        		}
        	}
    	}
	}
}