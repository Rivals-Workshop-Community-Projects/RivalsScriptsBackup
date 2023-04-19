// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}


with(asset_get("oPlayer")){ 
	if ("gumbo_ditto" in self) {
		gumbo_ditto = true;
		//enemy_pumbo = asset_get("oPlayer");
	}
}
if (get_gameplay_time() >= 20 && I_am_gumbo = false){
if(url == 2778789055){
	//num_pumbos += 1;
	with(oPlayer){
	num_pumbos += 1;	
	}
	I_am_gumbo = true;
}
}