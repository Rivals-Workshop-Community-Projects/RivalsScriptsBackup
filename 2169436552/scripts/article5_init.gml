//article5_init, Room Manager

sprite_index = asset_get("empty_sprite");
_init = 0;
init_pos = [0,0];
custom_args = array_create(0);
debug = false;
cell_size = 16;
cell_dim = [163,85];
grid_offset = 2;
list_room = ds_list_create();
ds_list_clear(list_room);
room_manager = id;
//list_room = array_create(0);
cur_room = 0;
init_cam_pos = [0,0];

switch_to_room = cur_room;
room_switch_type = 0;
room_switch_on = false;
room_switch_time = 60;
room_switch_timer = 0;

switch_to_room_pos = [0,0]; //position, cell position
room_switch_pos = switch_to_room_pos;

room_switch_event = 0;

cur_room_time = 0;
array_room_ID = array_create(0);
array_room_data = array_create(0);
array_room_transition_time = 120;
array_room_name = 0;

room_type = 1;
respawning = false;
respawn_timer = 0;
respawn_timer_max = 120;
room_switch_event = 420;

force_reload = 0;

cam_pos_left = [0,0];
cam_pos_right = [0,0];
cam_offset = [0,-64];
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

smoothing = .3;
cam_override_obj = noone;
follow_snap = 5000;

//art1_solid = array_create(15);
//art1_plat = array_create(15);
//art1_none = array_create(15);

render_distance = 2000;
entity_render_distance = 800;

room_data = 0;
init_pos = [0,0];
cell_pos = [0,0];
cell_data = 0;
rel_pos = 0;
obj_type = "";
article_frame_limit = 20;
art = noone;
//follow_objects  = [];
with obj_stage_main {
    other.follow_player = follow_player;
    other.player_num = player_num;
}
follow_objects  = [follow_player];
follow_point = {
    x: 0,
    y: 0
};
last_pos = array_create(2);
follow_offset = 240;
follow_player_pos = [0,0];
course_name = "CUSTOM COURSE";

if !("btt_select" in id) btt_select = -1;

//room_data_temp = [article script, x, y, article type, depth, [args0-7], [custom]];
