//article23_init, platform
sprite_index = asset_get("empty_sprite");
disable_movement = false;
custom_args = array_create(0);

_init = 0;
group = 0;
debug = 0;
debug_info = 0;
debug_pos = 0;
init_pos = [0,0];
cell_pos = [0,0];
init_x = x;
init_y = y;

og_depth = depth;

x_lax = 0;
y_lax = 0;
lax_coef = .1;

spr_name = "";
spr_ = 0;

anim_speed = 0;

anim_speed = spawn_variables[1]*.01;
plat_type = spawn_variables[2]; //0 = moving, 1 = falling
plat_waypoints = spawn_variables[3]; //{x : 0; y : 0}
plat_looping = spawn_variables[4];

image_xscale = 2;
image_yscale = 2;