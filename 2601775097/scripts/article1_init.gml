//article1_init

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

state = 0;
state_timer = 0;

window = 1;
window_timer = 0;

window_frame_start = 0;
window_frames = 0;
window_length = 0;
window_looping = false;
last_window = 0;        //if last_window is 0, it will not use the window animation system

mask_color = c_black;

alt_cur = get_player_color(player);

rec_fire_count = 3;
fire_offset = 48;

had_burnbuff = player_id.burnbuff_active;

artc_image_index = 0; //regular image index kinda gets fucked in pause