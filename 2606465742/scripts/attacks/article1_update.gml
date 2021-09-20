if get_gameplay_time() < 10 exit;

with oPlayer if y >= 608 && !free{
	grass_hit_pending = 2;
	var h = noone;
	with other h = create_hitbox(AT_EXTRA_1, 1, other.x, other.y - other.char_height / 2);
	for (var i = 0; i < 20; i++){
		h.can_hit[i] = 0;
	}
	h.can_hit[player] = 1;
	h.steve_death_message = "Steve went outside and touched grass";
	y -= 2;
	free = true;
}

var targets = [];

with oPlayer if "grass_hit_pending" in self && grass_hit_pending && !hitpause{
	grass_hit_pending--;
	if !grass_hit_pending && y >= 600{
		array_push(targets, self);
	}
}

if array_length(targets) for(var i = 0; i < array_length(targets); i++){
	create_deathbox(targets[i].x, targets[i].y + 50, 1, 1, 0, true, 0, 20, 2);
}