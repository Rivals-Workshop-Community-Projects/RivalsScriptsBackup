// got_parried.gml

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num != 6) {
    my_hitboxID.hitbox_timer = 1;
	my_hitboxID.hsp = 8*my_hitboxID.spr_dir;
	my_hitboxID.vsp = -6;
	my_hitboxID.transcendent = 1;	
	my_hitboxID.damage += 2;
	my_hitboxID.got_hit = false;
    my_hitboxID.bounce = 5;
}

if (my_hitboxID.attack == AT_DTILT) && my_hitboxID.hbox_num == 2 {
		if my_hitboxID.jumping {
		my_hitboxID.destroyed = true;
	} else my_hitboxID.hitbox_timer = 1;

}

if (my_hitboxID.attack == AT_DAIR) && my_hitboxID.hbox_num == 1 {
    my_hitboxID.hitbox_timer = 1;
}