//seige chain
disable_movement = 1;
sprite_index = sprite_get("anim16");
image_xscale = 2;
image_yscale = 2;
anim_speed = 0.15;

hold_frames_size = 5;
hold_frames[0, 0] = 0;
hold_frames[0, 1] = false;
hold_frames[1, 0] = 63;
hold_frames[1, 1] = false;
hold_frames[2, 0] = 85;
hold_frames[2, 1] = false;
hold_frames[3, 0] = 102;
hold_frames[3, 1] = false;
hold_frames[4, 0] = 145;
hold_frames[4, 1] = false;

hold = false;
hold_timer = 100;
hold_time = 100;