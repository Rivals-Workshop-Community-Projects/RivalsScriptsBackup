//got_hit.gml

monkey_ball_tilt_counter = 0;

dspecial_draw_timer = 16;
dspecial_drawexit_timer = 16;
fspecial_draw_timer = 16;
dspecial_startup = false;
fspecial_startup = false;
uspec_ball_onstage = false;
uspec_past_window_1 = false;
current_monkeyball_spr = sprite_get("monkey_ball")
current_monkeyball_front_spr = sprite_get("monkey_ball_front")
if (attack == AT_NSPECIAL){
	if (monkeyBall.state == 1){
		monkeyBall.monkeyBall_need_to_switch_to_state0 = true;
		nspecial_kick_startup = false;
	}
}