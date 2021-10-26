//article5_init, Room Manager
action_article_index = -1; //Put nessessary functioning articles here
sprite_index = asset_get("empty_sprite");
depth = -120;
disable_movement = true;
room_manager = id;
_init = 0;
init_pos = [0,0];
custom_args = array_create(0);
debug = false;
debug_info = false;
cell_size = 16;
cell_dim = [163,85];
// this is [2608,1360], or [1272,680] pixels
cur_scene = [1];
grid_offset = 4;
list_room = ds_list_create();
ds_list_clear(list_room);
//list_room = array_create(0);
cur_room = 0;
init_cam_pos = [0,0];

switch_room = false;
switch_to_room = cur_room;
room_switch_type = 0;
room_switch_on = false;
room_switch_time = 60;
room_switch_time_long = 240;
room_switch_timer = 0;

switch_to_room_pos = [0,0]; //position, cell position
room_switch_pos = switch_to_room_pos;

room_switch_event = 0;

cur_room_time = 0;
array_room_ID = array_create(0);
array_room_data = array_create(0);
array_room_transition_time = 240;
array_room_name = 0;

room_type = 1;
respawning = false;
respawn_timer = 0;
respawn_timer_max = 120;

cam_pos_left = [0,0];
cam_pos_right = [0,0];

true_pos = [0,0];
pos_in_cell = [0,0];
old_cell_pos = [0,0];
cell_pos = [0,0];
scroll_dir = 0;
scroll_speed = 1;
scroll_horiz = true;
scroll_vert = true;
horiz_dir = 0;
vert_dir = 0;

smoothing = 10;
cam_override_obj = noone;
cam_state = 0;
follow_snap = 5000;
static_position = [0,0];

paused = false;
render_distance = 2000;
entity_render_distance = 1000;
enemy_in_range = false;


battle_music_on = false;
battle_music = "Main_Battle_Theme";
music_fade_time = 120;
music_fade_timer = 0;
music_to = noone;
music_cur = noone;
music_cooldown_timer = 0;
music_cooldown_time = 30;

render_offset = [0,0];

room_data = 0;
init_pos = [0,0];
cell_pos = [0,0];
cell_data = 0;
rel_pos = 0;
obj_type = "";
article_frame_limit = 10000; //Chunk loading if it lags EXPERIMENTAL
art = noone;
//follow_objects  = [];
/*with oPlayer {
    if !variable_instance_exists(self, "is_ai") other.follow_player = id;
    //array_push(other.follow_objects,id);
}*/
follow_player = noone;
// with obj_stage_main other.follow_player = follow_player;
follow_objects  = [follow_player];
// follow_objects = [];
// with oPlayer array_push(other.follow_objects,id);
follow_point = {
    x: 0,
    y: 0
};
last_pos = array_create(2);
follow_offset = 240;
cam_smooth = 1;
with obj_stage_article if num == 3 other.action_manager = id;
//room_data_temp = [article script, x, y, article type, depth, [args0-7], [custom]];