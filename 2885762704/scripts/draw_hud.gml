//
draw_set_halign(fa_center);

if !ball_game.solo_mode {
	textDraw(480, 60, "fName", c_white, 500, 500, 1, true, 1, string(ball_game.blue_score) + " : " + string(ball_game.red_score));
	textDraw(480, 80, "fName", c_white, 500, 500, 1, true, 1, "First to " + string(ball_game.first_to_x));
} else {
	textDraw(480, 60, "fName", c_white, 500, 500, 1, true, 1, string(ball_game.points_success) + " : " + string(ball_game.points_fail));
	textDraw(480, 80, "fName", c_white, 500, 500, 1, true, 1, "Practicing: " + string(ball_game.training_mode));
	
	textDraw(480, 20, "fName", c_white, 500, 500, 1, true, 1, "Press Taunt to switch sides");
	textDraw(480, 40, "fName", c_white, 500, 500, 1, true, 1, "Press Parry to switch modes");
}

textDraw(480, 460, "fName", c_white, 500, 500, 1, true, 1, "Music Playing: " + string(ball_game.menu_options[2, 1]));

var _display = 0;
//Game Text
//Win
if (abs(ball_game.blue_score - ball_game.red_score) >= 2) { 
	if ((ball_game.blue_score >= (ball_game.first_to_x )) || (ball_game.red_score >= (ball_game.first_to_x)))  { //Blue Win
		if (ball_game.blue_score > ball_game.red_score) {
			textDraw(480, 100 + _display * 20, "fName", c_blue, 500, 500, 1, true, 1, "Game Set: Blue Wins");
			_display++;
		} else {
			textDraw(480, 100 + _display * 20, "fName", c_red, 500, 500, 1, true, 1, "Game Set: Red Wins");
			_display++;
		}
	}
}
//Deuce
if (abs(ball_game.blue_score - ball_game.red_score) == 0) { //Win by Two
	if (ball_game.blue_score >= (ball_game.first_to_x  - 1) || ball_game.red_score >= (ball_game.first_to_x -1 )) { //Blue Win
		textDraw(480, 100 + _display * 20, "fName", c_white, 500, 500, 1, true, 1, "Win by Two");
		_display++;
	}
}
if (abs(ball_game.blue_score - ball_game.red_score) == 1) { //Win by Two
	if (ball_game.blue_score >= ball_game.first_to_x  || ball_game.red_score >= ball_game.first_to_x ) { //Blue Win
		textDraw(480, 100 + _display * 20, "fName", c_white, 500, 500, 1, true, 1, "Win by Two");
		_display++;
	}
}

//Advantage
if ((ball_game.blue_score >= (ball_game.first_to_x - 1)) || (ball_game.red_score >= (ball_game.first_to_x - 1)))  { //Blue Win
	if (ball_game.blue_score > ball_game.red_score) {
		textDraw(480, 100 + _display * 20, "fName", c_blue, 500, 500, 1, true, 1, "Match Point, Advantage Blue");
		_display++;
	} else if (ball_game.red_score > ball_game.blue_score) {
		textDraw(480, 100 + _display * 20, "fName", c_red, 500, 500, 1, true, 1, "Match Point, Advantage Red");
		_display++;
	}
}

//Practice Mode text
if (ball_game.is_practice_mode && ball_game.live_ball) {
	draw_set_halign(fa_left);
	textDraw(20, 180, "fName", c_white, 1000, 1000, 1, true, 1, "Best Damaging Combo: " + string(ball_game.max_combo));
	textDraw(20, 200, "fName", c_white, 1000, 1000, 1, true, 1, "Best Damage: " + string(ball_game.max_damage));
	textDraw(20, 220, "fName", c_white, 1000, 1000, 1, true, 1, "Last Combo: " + string(ball_game.last_combo));
	textDraw(20, 240, "fName", c_white, 1000, 1000, 1, true, 1, "Last Damage: " + string(ball_game.curr_damage));
	draw_set_halign(fa_center);
}



if ball_game.foul_timer {
	textDraw(480, 240, "fName", c_white, 500, 500, 1, true, 1, "FOUL");
}
if ball_game.score_timer {
	textDraw(480, 200, "fName", c_white, 500, 500, 1, true, 1, "SCORE");
}

if (is_aether_stage() || ball_game.aether_choice) {
	textDraw(480, 410, "fName", c_white, 500, 500, 1, true, 1, ball_game.aether_mode_1);
	textDraw(480, 430, "fName", c_white, 500, 500, 1, true, 1, ball_game.aether_mode_2);
	//textDraw(480, 450, "fName", c_white, 500, 500, 1, true, 1, ball_game.aether_mode_3);
}

//Menu
if (abs(ball_game.blue_score + ball_game.red_score) == 0 && (ball_game.blue_hits + ball_game.red_hits == 0)) || (get_training_cpu_action() != CPU_FIGHT) { 
	textDraw(480, 370, "fName", c_white, 500, 500, 1, true, 1, "Press Shield + Taunt to choose serve side.");
	textDraw(480, 390, "fName", c_white, 500, 500, 1, true, 1, "Press Attack to confirm ALL selections.");
}

if !ball_game.live_ball {
	//draw_set_halign(fa_left);
	for (z = 0; z < array_length(ball_game.menu_options); z++) {
		if (ball_game.menu_selection == z) {
			textDraw(480, 120 + _display + z * 20, "fName", c_white, 500, 500, 1, true, 1, "> " + ball_game.menu_options[z, 0] + " : " + string(ball_game.menu_options[z, 1]));
		} else {
			textDraw(480, 120 + _display + z * 20, "fName", c_white, 500, 500, 1, true, 1, ball_game.menu_options[z, 0] + " : " + string(ball_game.menu_options[z, 1]));
		}
	}
}



#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string) {
	draw_set_font(asset_get(argument[2]));

	if (argument[7] && !ball_game.low_fps_mode) { //outline. doesn't work lol
		for (i = -1; i < 2; i++){
			for (j = -1; j < 2; j++){
				draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
			}
		}
	}
	
	if (color == c_white || color == c_black) {
		if (!ball_game.low_fps_mode) {
			var _draw_col = color;
		} else {
			var _draw_col = c_lime;
		}
	} else {
		var _draw_col = color;
	}
	
	draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, _draw_col, _draw_col, _draw_col, _draw_col, argument[8]);

	return string_width_ext(argument[9], argument[4], argument[5]);
}