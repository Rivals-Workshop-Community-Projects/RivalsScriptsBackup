//
sprite_index = sprite_get("standhere");
depth_back = 24;
depth_front = -20;
depth = depth_back;

state = 0;
state_timer = 0;

practice = get_training_cpu_action() != CPU_FIGHT;

draw_height_low = 100;
draw_height_high = -156;
draw_height = draw_height_low;

draw_cursor_in = 4;
draw_cursor_out = -4;
draw_cursor = draw_cursor_in;
cursor_timer = 0;
cursor_anim = 1;

select_timer = 0;
select_timer_max = 4;

user = noone;
has_crouched = !practice;
crouch_time = 0;
crouch_time_max = 60;

display_text = 600;

cursor = 1;

options = 2;