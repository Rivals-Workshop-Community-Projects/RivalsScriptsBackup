/*
if (temp_level > 0 && !custom_clone) { //Cpu and Not Clone	
	draw_set_halign(fa_left);
	textDraw(20, 20, "fName", c_white, 14, 400, 1, false, 1, "Ai State: " + string(get_ai_state_name()));
	textDraw(20, 40, "fName", c_white, 14, 400, 1, false, 1, "Ai Target: " + string(ai_target));
	textDraw(20, 60, "fName", c_white, 14, 400, 1, false, 1, "Ai Recovering: " + string(ai_recovering));
	textDraw(20, 80, "fName", c_white, 14, 400, 1, false, 1, "Ai since Attack: " + string(ai_attack_timer));
	textDraw(20, 100, "fName", c_white, 14, 400, 1, false, 1, "Ai Min frames before attack: " + string(ai_attack_time));
	textDraw(20, 120, "fName", c_white, 14, 400, 1, false, 1, "Ai Ready to Attack: " + string(ready_to_attack));
	textDraw(20, 140, "fName", c_white, 14, 400, 1, false, 1, "Ai Going into Attack: " + string(ai_going_into_attack));
	textDraw(20, 160, "fName", c_white, 14, 400, 1, false, 1, "Ai Going Left: " + string(ai_going_left));
	textDraw(20, 180, "fName", c_white, 14, 400, 1, false, 1, "Ai Going Right: " + string(ai_going_left));
	textDraw(20, 200, "fName", c_white, 14, 400, 1, false, 1, "Distance from Opponent: " + string(dist_total));
	textDraw(20, 220, "fName", c_white, 14, 400, 1, false, 1, "Advantage: " + string(in_advantage));
	textDraw(20, 240, "fName", c_white, 14, 400, 1, false, 1, "RNG Skill Check: " + string(level_skill_check));
	textDraw(20, 260, "fName", c_white, 14, 400, 1, false, 1, "Going for kill? (> 22): " + string(kill_form));
}
*/
if (is_training_mode && instance_exists(miku_clone)) {
	draw_set_halign(fa_left);
	textDraw(temp_x + 12, temp_y - 20, "fName", c_white, 14, 400, 1, true, 1, "Clone can be replaced in Training Mode");
}


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);

#define get_ai_state_name() {
	switch(ai_state) {
		case 0: 
			return "Wait";
		break;
		case 1:
			return "Normal"
		break;		
		case 2:
			return "Recovering"
		break;		
	}
}