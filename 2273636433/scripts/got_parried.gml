
if my_hitboxID.type == 2 {
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.hsp*=1.5;
	my_hitboxID.spr_dir*=-1;
	if my_hitboxID.player == my_hitboxID.orig_player {				//I parry my own pill
		my_hitboxID.can_hit_self = false;	
	}
} 