//hitbox_update

exceptions = [AT_TAUNT];
is_frozen = false;
hamburger_destroyed = false;
timer = 0;

hitsparkheavy =  hit_fx_create( sprite_get( "hitsparkheavy" ), 16);
sprite_change_offset("hitsparkheavy", 95, 83);

// Homing cheese
if (attack == AT_DTILT){
    if (player_id.soul_points >= 1){
        locate_nearest_player();
        x = shortest_id.x
        y = shortest_id.y
		sound_play(sound_get("soulboost"));
		player_id.soul_points -= 1;
		player_id.soul_flash_timer = 20;
    }
}

// Giant hamburger
if (attack == AT_NSPECIAL_2){
	init_dir = 1 - (hsp > 0) * 2;
	roll_speed = 0;
}

#define locate_nearest_player
shortest_dist = 9999;
shortest_id = noone;

with (asset_get("oPlayer")) {
	if (player != other.player) {
		var curr_dist = point_distance(x,y,other.x,other.y);
		if (curr_dist < other.shortest_dist) {
			other.shortest_dist = curr_dist;
			other.shortest_id = id;
		}
	}
}