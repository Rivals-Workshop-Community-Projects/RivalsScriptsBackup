//article1_hit.gml
//similarly to hit_player.gml, this script runs when the article is hit

//NOTE: articles can't spawn hitboxes, so all hitboxes are reffered to as [enemy_hitboxID], including the owning player
//      we can rule the player as exceptions using player_id, which is always the owner of the article



/*if (is_hittable)
{
if (enemy_hitboxID.player_id == player_id){
	if (hit_player_obj == player_id && hit_player_obj!= idle_hitbox){
		hit_player_obj.hitpause = is_hitpause;
		hit_player_obj.hitstop = hitstop;
		hit_player_obj.hitstop_full = 1;

	}
}

if (hit_player_obj != player_id and enemy_hitboxID.hit_priority != 0){
	killarticles = true;
	player_id.comet = noone
	spawn_hit_fx(x, y, 112);
	sound_play(asset_get("sfx_ori_energyhit_heavy"));
	if(instance_exists(idle_hitbox)){
		idle_hitbox.destroyed = true
	}
}





}
