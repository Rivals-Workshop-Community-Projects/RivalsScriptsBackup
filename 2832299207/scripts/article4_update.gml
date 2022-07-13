//article4_update.gml
if !player_id.triggered || draw_challenge_alpha > 0 {
	if !player_id.triggered && player_id.in_trigger_range {
		draw_challenge = true
		draw_challenge_alpha = clamp(draw_challenge_alpha+0.1, 0, 1)
	} else {
		if draw_challenge_alpha <= 0 {
			draw_challenge = false
		} else {
			draw_challenge_alpha -= 0.1
		}
	}
}



if player_id.timer >= 120 && player_id.timer <= 300 {
	draw_name = true
	draw_name_alpha = clamp(draw_name_alpha+0.05, 0, 1)
} else if draw_name_alpha > 0 {
	draw_name_alpha -= 0.01
}

if player_id.dosa_mode && player_id.dosa_timer <= 300 {
	draw_name_2 = true
	draw_name_alpha_2 = clamp(draw_name_alpha_2+0.05, 0, 1)
} else if draw_name_alpha_2 > 0 {
	draw_name_alpha_2 -= 0.01
}