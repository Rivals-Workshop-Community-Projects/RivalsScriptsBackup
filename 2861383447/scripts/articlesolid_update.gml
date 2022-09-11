// your solid article code can go here!

if (hit_time > 0)
hit_time--;

lifetime++;

if (lifetime > max_lifetime)
	lifetime = max_lifetime;

var standing_player = collision_line(x + 2, y - 33, x+30, y - 33, asset_get("oPlayer"), true, true)

if (instance_exists(standing_player)){
	if (!standing_player.free && standing_player != player_id.nana){
	hit_time = 2;
	lifetime += 1;

	if (standing_player == player_id)
		standing_player.stand_dirt = true;

	}


}

var jumping_player = collision_line(x + 2, y + 20, x+30, y + 20, asset_get("oPlayer"), true, true)

if (instance_exists(jumping_player)){
	if (jumping_player.free && jumping_player != player_id.nana && jumping_player.vsp <= 0){
	hit_time = 10;
	lifetime += 50;
	}
}

lifetime = clamp(lifetime,0,max_lifetime);

if (lifetime == max_lifetime){
var sound_rand = 1 + random_func( 0, 4, true );
sound_play(sound_get("grass" + string(sound_rand)));
instance_destroy(id);
}