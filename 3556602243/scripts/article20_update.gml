//
//Dragoon SFX
var dragoon_assemble_sfx = sound_get("ror_dragoon_assemble");
var dragoon_collect_sfx = sound_get("ror_dragoon_collect");
var dragoon_fire_sfx = sound_get("ror_dragoon_fire");
var dragoon_ping_sfx = sound_get("ror_dragoon_ping");
var dragoon_piece_sfx = sound_get("ror_dragoon_piece");
//

image_index = dragoon_id;
if should_spawn {
	should_spawn = false;
	piece_active = true;
	piece_collected = false;
	piece_life = 0;
	reset_position();
}
if piece_active {
	sprite_index = sprite_get("dragoon");
	if (free) {
		vsp += .25;
	} else {
		if (abs(prev_vsp) >= 2) {
			vsp = -abs(prev_vsp) / 4;
			hsp *= .5;
			sound_play(dragoon_piece_sfx, false, noone, 1, 2);
			spawn_hit_fx(x, y, 301);
			piece_life = 0;
		} else {
			hsp = 0;
			vsp = 0;
		}
	}
	prev_vsp = vsp;
	if (y >= room_height) {
		spawn_hit_fx(x, y, 304);
		reset_position();
	}
	if (hit_lock) {
		hit_lock--;
	} else {
		player_detection();
	}
	piece_life++
	if piece_life >= piece_life_max {
		piece_active = false;
		spawn_hit_fx(x, y - 40, 304);
	}		
} else {
	piece_life = 0;
	sprite_index = sprite_get("empty");
	reset_position();
}


#define player_detection() {
	var dragoon_collect_sfx = sound_get("ror_dragoon_collect");
	//
	var _hitbox_detected = false;
	var _detected_player_id = -4;
	with pHitBox {
		if (type != 2 || ("ror_hitbox_type" in self && ror_hitbox_type == "physical")) && place_meeting(x, y, other) {
			_hitbox_detected = true;
			_detected_player_id = "ror_player_id" in self ? ror_player_id : player_id;
		}
	}
	if _hitbox_detected && !piece_collected && "ror_dragoon_parts" in _detected_player_id {
		spawn_hit_fx(x, y - 24, HFX_ORI_BLUE_BIG);
		sound_play(dragoon_collect_sfx, false, noone, 1, 1.5);
		piece_active = false;
		piece_collected = true;
		_detected_player_id.ror_dragoon_parts[dragoon_id] = true;
		reset_position();		
	}
}

#define reset_position() {
	x = room_width / 2;
	y = -room_height;
	vsp = base_vsp;
	hsp = (random_func_2(dragoon_id, (max_hsp * 2) + 1, true) - max_hsp) / 10;
	//piece_delay = random_func_2(10 + dragoon_id, 10, true) * 5;
}