var article_times = my_hitboxID.damage;
var spawn_shards = true;
xp_test = 0;

if (spawn_shards){
	if (hit_player_obj != id){  
		var j = 0;
		repeat(article_times) {
			var fx = instance_create(round(hit_player_obj.x), round(hit_player_obj.y - 32) , "obj_article2");
			fx.xp_ang = get_hitbox_angle(my_hitboxID) + (-60 + random_func(j, 120, true))
			fx.xp_kb = 8 + random_func(j+1, 8, true);
			fx.exp_given = 1;
			fx.step_length = 16 + random_func(j+2, 48, true);
			j++;
		}
		xp_test++;
		
	}
}