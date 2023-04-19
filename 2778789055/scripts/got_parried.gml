//
var temp_player = hit_player_obj.player;

if(my_hitboxID.attack == AT_FSPECIAL) with my_hitboxID{
	hitbox_timer = 0;
	hsp = hsp * 1.5;
}

if(my_hitboxID.attack == AT_FSPECIAL_2) with my_hitboxID{
	spr_dir *= -1;
	hitbox_timer = 0;
	with pHitBox if attack == other.attack && player_id == other.player_id{
		player = temp_player;
		hsp = other.hsp;
		vsp = other.vsp;
		kb_angle += 90;
		y += 0;
		if self != other{
			hsp *= -1;
			vsp *= 0;
			kb_angle += 90;
		}
	}
}

/*
if(other_is_scalding && hit_player_obj.other_scalding = true && hit_player_obj.other_scalding_timer != 0){
	sound_play(asset_get("sfx_hod_steam_level1"));
	temp_player.other_scalding = false;
	temp_player.other_scalding_timer = 0;
	//other_is_scalding = false;
}
*/

with(oPlayer){
	if(other_scalding && other_scalding_timer != 0){
	sound_play(asset_get("sfx_hod_steam_level1"));
	other_scalding = false;
	other_scalding_timer = 0;	
	}
}