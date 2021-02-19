//
with (asset_get("obj_article1")){
	if (player_id == other.id){
		cooldown = other.parry_lag+60;
	}
}
if (my_hitboxID.attack==AT_NSPECIAL_AIR){
	my_hitboxID.owner_article.parried_player = hit_player;
	my_hitboxID.owner_article.image_angle = my_hitboxID.owner_article.image_angle+180;
	my_hitboxID.owner_article.tmpdir = my_hitboxID.owner_article.tmpdir*-1;
	my_hitboxID.owner_article.loop_count = 0;
	my_hitboxID.owner_article.void_speed = 3;//4
}
if (my_hitboxID.attack==AT_FSPECIAL){
	my_hitboxID.owner_article.idle_cycle = my_hitboxID.owner_article.idle_cycle + 15;
}