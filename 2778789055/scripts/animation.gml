// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}

with(asset_get("oPlayer")){ 
	if (url = "2778789055"){
		gumbo_ditto = true;
	}
}