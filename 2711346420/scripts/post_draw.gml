//post_draw.gml

shader_start();
//Drawing Monkey Ball normally
if (inside_monkey_ball && uspec_ball_onstage == false && uspec_past_window_1 == false && dspecial_startup == false && fspecial_startup == false){
	draw_sprite_ext( current_monkeyball_front_spr, 0, x-(1.5*spr_dir), y-38+monkey_ball_air_offset_adjust, 1, 1, monkey_ball_tilt*1.25, c_white, 1);
//Uspecial
} else if (inside_monkey_ball && (uspec_ball_onstage == true || uspec_past_window_1 == true) && dspecial_startup == false && dspecial_exit_startup == false && fspecial_startup == false){
	draw_sprite_ext( sprite_get("monkey_ball_front_uspec"), uspec_img_indx, x-(0*spr_dir), y, spr_dir, 1, 0, c_white, 1);
//Dspecial Startup
} else if (!inside_monkey_ball && dspecial_startup == true && dspecial_exit_startup == false && fspecial_startup == false){
	draw_sprite_ext( sprite_get("monkey_ball_front_uspec"), dspecial_draw_timer, x-(0*spr_dir), y, spr_dir, 1, 0, c_white, 1);
//Dspecial Exit
} else if (!inside_monkey_ball && dspecial_startup == false && dspecial_exit_startup == true && fspecial_startup == false && dspecial_rune_did_explode == false){
	draw_sprite_ext( sprite_get("monkey_ball_front_uspec"), dspecial_drawexit_timer, x-(0*spr_dir), y, spr_dir, 1, 0, c_white, 1);
//Fspecial Startup
} else if (dspecial_startup == false && dspecial_exit_startup == false && fspecial_startup == true){
	draw_sprite_ext( sprite_get("monkey_ball_front_uspec"), fspecial_draw_timer, x-(0*spr_dir), y, spr_dir, 1, 0, c_white, 1);
}

if (current_monkeyball_front_spr == sprite_get("monkey_ball_front_spin") && attack == AT_FSPECIAL && window == 3 && inside_monkey_ball){
	if (super_armor == true){
		draw_sprite_ext( sprite_get("monkey_ball_spin_smear"), 0, x-(1.5*spr_dir), y-38+monkey_ball_air_offset_adjust, 1.1, 1.1, monkey_ball_tilt*1.45, c_white, 0.5);
		draw_sprite_ext( sprite_get("monkey_ball_spin_smear"), 0, x-(1.5*spr_dir), y-38+monkey_ball_air_offset_adjust, 0.9, 0.9, monkey_ball_tilt*1.55, c_white, 0.5);
	}
	draw_sprite_ext( sprite_get("monkey_ball_spin_smear"), 0, x-(1.5*spr_dir), y-38+monkey_ball_air_offset_adjust, 1, 1, monkey_ball_tilt*1.5, c_white, 1);
}

shader_end();