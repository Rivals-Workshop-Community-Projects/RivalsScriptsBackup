if my_hitboxID.attack == AT_NSPECIAL {
    if(my_hitboxID.hbox_num == 5 ){
		other.hitpause = true;
		other.hitstop = 40;
		other.hitstop_full = 40;
        other.old_vsp = -5;
    }
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) {
	pig.hsp = 0;
	pig.vsp = 0;
	pig.pig_state = 5;
	pig.pig_state_timer = 0;
	pig.sprite_index = pig.spr_hit;
	pig.image_index = 0;
	if (instance_exists(pig.hbox)) instance_destroy(pig.hbox);
	pig.called = false;
}


		//other.old_hsp = -15;
		//other.old_vsp = 1 *spr_dir;