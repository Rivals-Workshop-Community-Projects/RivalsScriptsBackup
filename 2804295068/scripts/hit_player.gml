if my_hitboxID.player_id != self exit;
if my_hitboxID.orig_player_id != self exit;

if (my_hitboxID.attack == AT_USPECIAL_2){
    take_damage (player, -1, 4)
}

if (my_hitboxID.attack == AT_DSTRONG){
	if (!hit_player_obj.super_armor && hit_player_obj.soft_armor == 0) {
		if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4){
			hit_player_obj.split_grabbed1 = id;
		}
		if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
			hit_player_obj.split_grabbed2 = id;
		}
	}
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.torched == false) {
	if (hit_player_obj.snow_pea_chill_id == noone) sound_play (sound_get ("frozen"));
	if (!hit_player_obj.super_armor && hit_player_obj.soft_armor == 0) {
		hit_player_obj.snow_pea_chill_id = self;
		hit_player_obj.snow_pea_chill_time = min(hit_player_obj.snow_pea_chill_time + 600, 600);
	}
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2) 
|| (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) 
|| (my_hitboxID.attack == AT_USPECIAL_2) || (my_hitboxID.attack == AT_EXTRA_2) 
|| (my_hitboxID.type == 2 && my_hitboxID.torched == true && my_hitboxID.attack != AT_FSPECIAL_2){
	hit_player_obj.snow_pea_chill_id = noone;
	hit_player_obj.snow_pea_chill_time = 0;
}