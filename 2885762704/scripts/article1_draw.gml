//
//draw_debug_text(floor(x), floor(y), string(blue_hits + red_hits))

draw_debug_text(floor(x - 3), floor(y - 5), string(blue_hits + red_hits))

if (is_aether_stage() && aether_mode_1 == "Judgement" || aether_mode_2 == "Judgement") {
	draw_debug_text(floor(x - 30), floor(y + 40), "Judgement: " + string(aether_ball_spike))
}


