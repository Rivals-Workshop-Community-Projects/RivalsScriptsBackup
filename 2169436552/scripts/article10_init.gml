//article10_init, Targets

sprite_index = asset_get("empty_sprite");

_init = 0;
state = 0;
state_old = 0;
state_timer = 0;
debug = false;
init_pos = [0,0];
cell_pos = [0,0];
debug_color = c_gray;
state_timer_max = [20,0,20];
anim_speed = .1;

try_event = false;


custom_args = array_create(0);
targ_id = spawn_variables[0];
event_id = spawn_variables[1];
move_time = spawn_variables[2];
path = spawn_variables[3];
idle_sprite = spawn_variables[4];
destroy_sprite = spawn_variables[5];

path_index_ = 0;
path_index_prev = 0;
path_pos = [0,0];
path_pos_prev = [0,0];
path_timer = 0;
path_speed = 0;
collis_obj = noone;
collis_store = noone;
room_manager = noone;
/*follow_player = noone;
follow_offset_x = 42;

follow_pos = [0,0];*/

keep = false;