//hitbox_init
boomercharge = 0;
boomerstop = 0;
hittimer = 0;
hitstop = 0;
old_vsp = 0;
old_hsp = 0;
obaboDirection = 1;

if (attack == AT_NSPECIAL) {
	if hbox_num == 1 {
		obaboDirection = spr_dir;
	}
	if hbox_num == 2 {
		with (asset_get("pHitBox")) {
			if player_id == other.player_id && (attack == AT_NSPECIAL && hbox_num == 1) {
				other.spr_dir = obaboDirection;
				
				if was_parried {
					other.player = player;
				}
			}
		}
	}
}


if (attack == AT_NSPECIAL && hbox_num == 4){
	if(throwType == 1){
		proj_angle -= 90;
	} else if (throwType == 2 || 4){
		proj_angle = 0;
	} else if (throwType == 3){
		proj_angle -= 20;
	}
} else {
	throwType = 0;
}