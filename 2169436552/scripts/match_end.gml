//other_init - runs variables to players
game_end = true;
with room_manager set_view_position(init_cam_pos[0],init_cam_pos[1]);
ds_list_destroy(list_window);
with scene_manager ds_list_destroy(list_window);
with room_manager ds_list_destroy(list_room);
//instance_destroy(room_manager);
//instance_destroy(scene_manager);
//ds_list_destroy(active_bosses);