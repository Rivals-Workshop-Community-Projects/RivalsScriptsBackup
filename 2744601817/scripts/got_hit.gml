max_fall = max_fall_default;

//Zap Kunai
with (asset_get("obj_article1")){
	if (player_id == other.id && state == 1
	|| player_id == other.id && state == 7
	|| player_id == other.id && state == 5){
	hsp = 0
	vsp = 0
	state = 6;
	state_timer = 0;
	}
}

if (attack == AT_USTRONG){
	visible = true;
	draw_indicator = true;
}