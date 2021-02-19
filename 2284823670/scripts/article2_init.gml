sprite_index = sprite_get("border_wall");

exist_timer = 0;

distances = [1000, 600, 500, 400, 300];

died = 0;
died_max = 4;

side = spawn_variables[0] ? 1 : -1;
center = room_width / 2;

x = center - distances[died] * side - (side == -1 ? -32 : 0);