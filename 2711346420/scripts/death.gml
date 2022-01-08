//death.gml

sound_play(sfx_monkey_ball_2_ball_fall_out);

monkey_ball_tilt = 0;
monkey_ball_tilt_counter = 0;
current_monkeyball_spr = sprite_get("monkey_ball")
current_monkeyball_front_spr = sprite_get("monkey_ball_front")

dspecial_draw_timer = 16;
dspecial_drawexit_timer = 16;
fspecial_draw_timer = 16;
dspecial_startup = false;
fspecial_startup = false;
uspec_ball_onstage = false;
uspec_past_window_1 = false;

inside_monkey_ball = false;