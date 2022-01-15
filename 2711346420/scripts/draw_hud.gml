//go and declare debug variable in init
if debug == 1 {
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp))
draw_debug_text(temp_x, temp_y-80,"    Free: " + string(free))
draw_debug_text(temp_x, temp_y-96,"Monkey Ball Tilt:" + string(monkey_ball_tilt))
draw_debug_text(temp_x, temp_y-114,"Monkey Ball Tilt Counter:" + string(monkey_ball_tilt_counter))
draw_debug_text(temp_x, temp_y-130,"ball onstage: " + string(monkey_ball_onstage))
draw_debug_text(temp_x, temp_y-146,"can ride the monkey ball: " + string(monkey_ball_can_be_rode))
draw_debug_text(temp_x, temp_y-162,"in ball: " + string(inside_monkey_ball))
//draw_debug_text(temp_x, temp_y-178,"in nspec: " + string(nspecial_startup))
if (instance_exists(monkeyBall)){
	draw_debug_text(temp_x, temp_y-180,"does ball exist: " + string("yes"))
} else {
	draw_debug_text(temp_x, temp_y-180,"does ball exist: " + string("no"))
}
//further y positions should go up in multiples of 16 from 64
}
//draw_debug_text(temp_x, temp_y-300,"AAA: " + string(uspec_past_window_1))
//draw_debug_text(temp_x, temp_y-350,"CAN GLIDE?: " + string(uspecial_can_glide))
/*
draw_debug_text(temp_x, temp_y-178,"
  AiAi and his stage will be releasing
today, right after this trailer finishes.")
*/

//phone
muno_event_type = 5;
user_event(14);