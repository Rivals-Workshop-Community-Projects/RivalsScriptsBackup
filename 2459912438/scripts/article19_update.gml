//
timer++;

var xdist = abs(room_width/2 - x);

if stopped {
	image_alpha = 0;
	hsp = 0;
	stopped_timer++;
} else {
	player_id.attack_marker_exists = true;
}

if cooldown_timer > 0 {
	cooldown_timer--;
}

if index > 0 {
	image_index = 1;
} else {
	image_index = 0;
}

if timer > 20 && mtt_hit && cooldown_timer == 0 && !stopped {
	cooldown_timer = 20;
	mtt_hit = false;
	if index > 0 {
		index--;
	} else {
		stopped = true;
		sound_play(sound_get("pan_hit"));
		var dmg = ceil(clamp(5*(1 - (xdist/240)), 0, 100));
		print_debug(string(dmg));
		player_id.mtt_damage += dmg;
	}
}

if stopped_timer > 30 {
	instance_destroy();
	exit;
}

mtt_hit = false;