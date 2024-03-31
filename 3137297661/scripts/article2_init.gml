//article1_init.gml
sprite_index = sprite_get("deathring");
mask_index = sprite_get("deathring_mask");
image_alpha = 0.8;

bell_spr = sprite_get("bell");
symbol_spr = sprite_get("ring_mark");

state_timer = 0;
bell_state_timer = 0;
symbol_state_timer = 0;
energy_state_timer = 0;

image_xscale = 2;
image_yscale = 2;

anim_speed = 4.1 //higher = slower;
bell_anim_speed = 6 //higher = slower;
symbol_anim_speed = 6 //higher = slower;
energy_anim_speed = 6 //higher = slower;
anim_time = 0;
bell_anim_time = 0;
symbol_anim_time = 0;
energy_anim_time = 0;

start_window = 11;
loop_window = 12;
end_flag = false;

bell_start_window = 10;
bell_loop_window = 24;
bell_end_flag = false;

symbol_start_window = 15;
symbol_loop_window = 6;
symbol_end_flag = false;

energy_start_window = 2;
energy_loop_window = 4;
energy_end_flag = false;

symbol_xoff = 24;
symbol_yoff = 56;

bell_xoff = 7;
bell_yoff = -225;

toll_frame = 16;
toll_end_frame = 40;

tolls = 0;
bellmute = false;

disable_movement = 1;

max_players = 20;
kb_store[20] = 0;
kb_store_total = 0;
store_level = 0;
tier = 1;

dissipate = false;
transfer = false;
consume = false;
