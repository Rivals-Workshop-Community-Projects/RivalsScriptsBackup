sprite_index = sprite_get("cars");
mask_index = sprite_get("car_hurt");

play = (image_index mod 4) + 1;
x += spawn_variables[1];
y += spawn_variables[2];
owner = noone;
p_in = 0;
h_in = 0;
v_in = 0;
handbrake_in = 0;

image_index = 0;

ai_enabled = false;
ai_waypoint = noone;
ai_progress = 0;
ai_coords = array_create(8);

tap_jump = false;

bump_sound = asset_get("sfx_land");

image_xscale = 1;
image_yscale = 1;

accel = .20;
drift_accel = -0.1;
drag = 0.035;
steer = 2.2;
drift_fric = 0.025;
drift_steer = 2.8;
drift_drag = -0.015;

battle_hp = get_match_setting(SET_STOCKS);
battle = false;

draw_angle = 0;


if get_match_setting(SET_TURBO) {
	accel = .6;
	drift_accel = -0.35
	drag = 0.06;
	steer = 2.5;
	drift_fric = 0.2;
	drift_steer = 3;
	drift_drag = -0.05;
}

inactionable = false;

achieves[0] = false;

last_steer = 1;

parry = 0;
parry_cooldown = 0;

horn_sound = asset_get("sfx_frog_croak");

z = 0;
zsp = 0;

horn = -1;

horning = false;

cur_spd = 0;

cur_dir = 0;

image_alpha = 1;

total_dist = 0;


engine = noone;
engine_sound = sound_get("sfx_engine_vroom");
engine_pitch = 0;

frames = 0;
anim_speed = 0;
anim_speed_scale = 0;
framediv = 0;
frame_off = 0;
frame_count = 4;

handbrake_down = 0;

checkpoint = 0;

progress = 0;
prog_angle = 0;

clockwise = false;

max_prog = 0;
lap = 1;

lap_time = 0;
last_lap_time = 0;
last_last_lap_time = 0;
best_lap_time = 0;
last_best_lap_time = 0;

lap_time_text = array_create(3, "-:--.---");

clean_lap = 1;

total_time = 0;
latest_time = 0;

finished_place = 0;

control = noone;

init = 3;

change_layer = 0;
collision_layer = 0;
if depth < 0 collision_layer = 1;
found_wall = 0;

powerup = 0;
powerup_rolling = 0;
spd = 0;

coins = 0;
old_x = x;
old_y = y; //xprevious and yprevious don't work here.
safe_x = x;
safe_y = y;
safe_prog = 0;
safe_angle = 0;
safe_layer = collision_layer;
intangible = 0;
invincible = 0;

roughed = 0;

display_relative = 0;

scale = 1;

should_boost = 0;

updated = false;

state = PS_SPAWN; //For getting hit by powerups
state_timer = 0;
state_cat = SC_GROUND_NEUTRAL;

drift_spr = -1;

hfx_ins = array_create(1, noone);

disable_movement = true;