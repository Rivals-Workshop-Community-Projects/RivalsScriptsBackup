// called when the character gets KO'd

na_dsp_charge = round(na_dsp_charge/2)

with (asset_get("obj_article1")){
	if (player_id == other.id){
		idle_cycle = idle_cycle+30;//15
		cooldown = 120;
	}
}
with (asset_get("obj_article3")){
	if (player_id == other.id){
		if (state == 0||state == 1){
			state = 2;
		}
	}
}