step_timer ++;
x = ease_backIn(round(xstart), round(player_id.x + lengthdir_x(32, xp_ang)), step_timer, step_length, xp_kb);
y = ease_backIn(round(ystart), round(player_id.y + lengthdir_y(32, xp_ang) - player_id.char_height/2), step_timer, step_length, xp_kb);
image_index = ease_linear(0, image_number, step_timer, step_length)

if (step_timer == step_length) {
	with (player_id) sound_play(sound_get("sfx_exp_collect"));
	player_id.skill_exp += exp_given;
	instance_destroy(id);
	exit;
}