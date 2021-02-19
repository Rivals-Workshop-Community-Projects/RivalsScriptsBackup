//article1_init

Orbit = 200; // Orbit distance
Angle = 0; // Current orbital angle
Speed = 1; // Orbital speed
Center_X = player_id.x; // x of orbital center
Center_Y = player_id.y-30; // y of orbital center



image_index = 0;
spr_dir = player_id.spr_dir;

image_xscale = 0;
image_yscale = 0;

x = player_id.x;
y = player_id.y-30;

state = 0;
state_timer = 0;

can_be_grounded = false;
ignores_walls = true;
free = true;
hit_wall = false;

second = 60;

chaos_hit = 4;
chaos_hit_timer = 0;

chaos_actually_hit = 0;
player_id.orbit_active = true;