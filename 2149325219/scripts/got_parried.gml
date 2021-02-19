

//got_parried.gml
if(my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 2){
	with(obj_article1){
		if(other.my_hitboxID.source = id){
			hsp *= -1.1;
			vsp = -1*abs(vsp)
			state = 1;
			skull = true;
		}
	}
}

if(my_hitboxID.attack == AT_DATTACK){
	DAslow = true;
}
if(my_hitboxID.attack == AT_FSPECIAL){
	window = 3
	window_timer = 0;
}