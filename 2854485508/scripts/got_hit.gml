if (instance_exists(follower_held) && follower_held != noone && hitstun > 0) {
	spawn_hit_fx(round(follower_held.x), round(follower_held.y), hfx_leaf );
	instance_destroy(follower_held);
}
