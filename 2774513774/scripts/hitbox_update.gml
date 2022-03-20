
if (attack == AT_NSPECIAL){
	if ((hbox_num == 2) && collision_point(x - 0 * spr_dir, y + 0, asset_get("par_block"),false,true) != noone)
	{
		destroyed = true;
	}else{
		through_platforms = 0;
	}
	if(destroyed){
	player_id.move_cooldown[AT_NSPECIAL] = 2;
	}else{
	player_id.move_cooldown[AT_NSPECIAL] = 20;
	}
    if(hbox_num == 2 &&(hsp < 3 || hsp > -3)){
        if(spr_dir = 1){
            hsp = hsp + .3
        }else{
            hsp = hsp - .3
        
        }
    }
}





