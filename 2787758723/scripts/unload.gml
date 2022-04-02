with (obj_stage_article) {
    if ("grid_room_data" in self && ds_grid_valid(grid_room_data)) ds_grid_destroy(grid_room_data);
    if ("terrain_grid_data" in self && ds_grid_valid(terrain_grid_data)) ds_grid_destroy(terrain_grid_data);
}