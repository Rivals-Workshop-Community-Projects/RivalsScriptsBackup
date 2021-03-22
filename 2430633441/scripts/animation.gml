//orbit_speed = 0;
fire_sprite = (fire_sprite+0.2) mod 4;

if state == PS_PRATFALL && state_timer <= 1 && !free {
	sprite_index = sprite_get("uspecial_2");
	image_index = image_number-1;
}
if sprite_index == sprite_get("bouncehurt") {
	image_index = (vsp > 0)
}
if sprite_index == sprite_get("jump") {
	image_index = clamp((image_number/2)+vsp*1.24, 0, image_number-1)
}

if (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && get_attack_value(attack,99) > 0 && instance_exists(sun_ins) {
	sprite_index = get_attack_value(attack,99)
//	print_debug(string(instance_exists(sun_ins) ))
}
if state == PS_DASH {
	draw_y = -1-sin(state_timer*0.2)*2
}
if (state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD) {
	if state_timer == 0 {
			var h = spawn_hit_fx(x,y+20,hitfx[4])
			roll_x = x;
			roll_y = y-char_height/2;
	}
	if window == 1 && window_timer == 0 {
			var h = spawn_hit_fx(x,y-20,hitfx[10])
			if sign(hsp) != spr_dir h.spr_dir *= -1;
	}
}

if attack == AT_DSTRONG && get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {
			var twirl = ease_linear(0, 360-70, window_timer, get_window_value(attack,window,AG_WINDOW_LENGTH));
			for (var i = 0; i < array_length_1d(grab_ids); i++) {
				if instance_exists(grab_ids[i]) with (grab_ids[i]) {
					if dsin(twirl*sign(synne_grab_x))*spr_dir > 0 {
						depth = other.depth-3;
						force_depth = true;
//						print_debug("depth is "+string(depth)+" "+string(other.depth))
					}
				}
			}
}