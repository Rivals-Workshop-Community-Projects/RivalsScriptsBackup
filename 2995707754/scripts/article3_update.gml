//article3_update.gml

//shards
if shard_spread < 5 {
	shard_before_break--;
	if shard_before_break == 0 { 
		player_id.shards_exist--; 
		instance_destroy();
	} 

	vsp = vsp + .2;
} else {
	shard_before_break++;
	hsp = cos(degtorad(angletocenter)) * (shard_before_break*.2);
	vsp = -1*sin(degtorad(angletocenter)) * (shard_before_break*.2);
	if shard_before_break > 12 { depth = 0; }
	if collision_circle(round(spawn_x), round(spawn_y), 8, self, false, false){ 
		player_id.shards_exist--; 
		instance_destroy(); 
	}
}