//article7_init, TileMapped Terrain

sprite_index = asset_get("empty_sprite");

_init = 0;
init_pos = [0,0];

anim_speed = 0;

custom_args = array_create(0);

sprite_index = spawn_variables[0];
type = spawn_variables[1];
grid = spawn_variables[2];
anim_spd = spawn_variables[3];
width = 1;
height = 1;
tile_data = array_create(0);
//keep = true;