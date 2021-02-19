//podaboo init
sprite_index = sprite_get("podaboo");

initial_vsp = -7.5;
vsp = initial_vsp;

initialY = y;

jump_timer_amount = 300;
jump_timer = spawn_variables[0] * 35;
jumping = false;