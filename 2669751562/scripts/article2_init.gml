//article2_init

init = 0;
sprite_index = sprite_get("stealth_rock");
mask_index = sprite_get("stealth_rock_mask");

state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = false;
hitpause = false;
hitstop = 0;
hitstop_full = 0;
hit_lockout = 0;

spawn_time = get_gameplay_time();

hp = 1; //Damage that can be taken before being destroyed.
colliding_hitboxes = ds_list_create();
player_hit_by = 0;

spawn_timer = 0.25 * 60;
life_timer = 60 * 60;
death_timer = 5;

spawn_speed = 50;
spawn_angle = 40;
spawn_slow_factor = 0.5;

detection_fov = 30;
detection_range_max = 128;

arming_time = 30;

shake_frequency = 2;
shake_intensity = 5;
x_root = 0;
y_root = 0;
frequency = 6;

destroyed = false;