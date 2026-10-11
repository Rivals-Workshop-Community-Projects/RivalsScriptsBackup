//parrying causes all stars to go away.
if((my_hitboxID.attack != AT_JAB && my_hitboxID.hbox_num < 3))
{
	with (asset_get("obj_article1")) {
		if (player_id == other.id){
			newState = 2;
		}
	}
}

//parrying fspecial grab goes into endlag instead of instant cancel
if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 3){
	window = 4;
	window_timer = 1;
}