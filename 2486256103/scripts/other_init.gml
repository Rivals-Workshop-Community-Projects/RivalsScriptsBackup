//other_init - runs variables to players

last_pos = [x,y];
action_manager = 0;
room_manager = 0;
dead_pos = [x,y];
old_pos = [x,y];
avg_vel = [0,0];
//respawn_point = [[79,44],[-1,0],1]; //SubCell Position, Cell Position, Room #
respawn_point = [5500,5300,1]; //x,y, Room #

has_walljump_actual = true;

item_id = noone;

rel_pos = [x-view_get_xview(),y-view_get_yview()];


