//article1_update
if(!instance_exists(choochoo)){
    instance_destroy();
    exit;
}else{
	if(property){
		if((abs(choochoo.hsp) <= 0.05 && abs(choochoo.vsp) <= 0.05 || !choochoo.free || toggleplatform) && plat_on2){
			if(!plat_on || toggleplatform){mask_index = sprite_get("choochoo_plat_collision");plat_on = true;toggleplatform = false;}
		}else if(abs(choochoo.hsp) > 0.05 || abs(choochoo.vsp) > 0.05 && choochoo.free || !plat_on2 && toggleplatform){
			mask_index = asset_get("empty_sprite");plat_on = false;if(toggleplatform){toggleplatform = false;}
		}
	}else{
		//if(plat_on){mask_index = sprite_get("choochoo_plat_collision");}
		//else{mask_index = asset_get("empty_sprite");}
	}
	depth = choochoo.depth-1;
}