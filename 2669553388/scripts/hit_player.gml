//hit_player

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1 {
	my_hitboxID.destroyed = true;
	create_hitbox(AT_USPECIAL, 1, 1, -83);
	}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 {
	my_hitboxID.hitbox_timer = 40;
	my_hitboxID.length = 61;	
	my_hitboxID.hsp = -1*spr_dir;	
	my_hitboxID.vsp = -10;		
	}
	
if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 {
	my_hitboxID.activetv = true;
	my_hitboxID.hitbox_timer = my_hitboxID.length-25;
	sound_play(asset_get("mfx_timertick"));
	}
	
