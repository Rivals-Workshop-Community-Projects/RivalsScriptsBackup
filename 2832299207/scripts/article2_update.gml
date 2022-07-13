//article2_update.gml

var dir = spawn_variables[0]

if triggered timer++

if timer == 1 && dir == 1 with player_id {
	sound_play(sfx_cover, false, 0)
	//sound_play(sfx_cover_metal, false, 0)
}

if is_aether_stage() {
	triggered = true
	if timer < 10 timer = 10
}

if close_timer > 0 {
	image_index = clamp(5 - floor(close_timer/3), 0, 5)
	close_timer++
} else if timer > 1 {
	image_index = clamp(floor(timer/3), 0, 5)
	if timer == 10 {
		create_hitbox(AT_JAB, 11, x, y)
		//instance_destroy()
		//exit;
	}
}