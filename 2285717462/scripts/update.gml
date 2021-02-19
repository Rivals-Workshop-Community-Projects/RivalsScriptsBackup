user_event(14);
attacking = phone_attacking;
if attacking window_end = phone_window_end;
playtest = phone_playtest;
practice = phone_practice;
inited = phone_inited;
ditto = phone_ditto;
blastzone_l = phone_blastzone_l;
blastzone_r = phone_blastzone_r;
blastzone_t = phone_blastzone_t;
blastzone_b = phone_blastzone_b;



if laser_alpha > 0 laser_alpha -= 0.05;



with asset_get("hit_fx_obj") if ("sonic_laser" in self && sonic_laser == other){
	x += hsp;
	y += vsp;
	
	var frict = 0.1;
	
	hsp = (hsp - sign(hsp) * frict);
	vsp = (vsp - sign(vsp) * frict);
}



if !(attacking && attack == AT_DSPECIAL && window == 4){
	mask_index = orig_mask;
}