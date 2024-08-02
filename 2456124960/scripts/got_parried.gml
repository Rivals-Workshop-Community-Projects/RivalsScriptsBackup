actionMeterStatus = 0;
actionMeterFill -= 80;
if (actionMeterFill < 0) {
	actionMeterFill = 0;
}

activeBuff = 0;
activeBuffUses = 0;

if (my_hitboxID.attack == AT_FSPECIAL) {
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 6) {
		flash.gotParried = 1;
		flash.parriedPlayer = hit_player;
	}
}

if (my_hitboxID.attack == AT_NSPECIAL) {
	if (my_hitboxID.hbox_num < 3) {
        if (crystal.gotParried > 0) {
            crystal.article_mode = 2;
            crystal.decay_timer = 0;
            crystal.image_index = 0;
            crystal.fake_hsp = 0;
            crystal.fake_vsp = -15;
            crystal.free = true;
            sound_play(asset_get("mfx_unstar"), false, noone);
        } else {
            crystal.hitMode = 0;
            crystal.gotParried = 30;
            crystal.parriedPlayer = hit_player; //player who parried
            crystal.parryTarget = noone;
            //crystal.parryTarget = my_hitboxID.player; //player who owned hb when it got parried
        }
	}
}

if (my_hitboxID.attack == AT_DATTACK) {
	set_state(PS_PRATFALL);
	hsp = 0;
	vsp = 0;
}