//article1_update.gml

if triggered timer++

if timer == 1 && spawn_variables[0] == 1 with player_id sound_play(sfx_lower, false, 0)

var end_y = 516

if is_aether_stage() {
	y = end_y
	if timer < 900 timer = 900
}

if raise_timer > 0 {
	var init_time = 100
	if raise_timer < 90 {
		y = ease_cubeOut(end_y, end_y-60, raise_timer, init_time)
	} else {
		y = ease_cubeIn(end_y-60, 0, raise_timer-init_time, 240)
	}
	raise_timer++
} else if timer > 10 {
	if y < end_y {
		y += 30
	} else {
		if y > end_y && spawn_variables[0] == 1 with player_id {
			sound_stop(sfx_lower)
			sound_play(sfx_close, false, 0)
			shake_camera(8, 4)
		}
		y = end_y
	}
}


