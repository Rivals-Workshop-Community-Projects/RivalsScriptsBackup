//article no. 1's init

sprite_index = sprite_get("window_land");
image_speed = 1;
depth = -3;
can_be_grounded = true;
ignores_walls = false;
state = 0;
state_timer = 0;
window_0_or_1 = 0;
telecooldown = 12;
free = false;
uses_shader = false;
otherside_exists = 0;

win_grav = 0.7;
win_fallspd = 12;
win_air_fric = 0.2;
win_grn_fric = 0.8;

tele_to_x = x;
tele_to_y = y;

lifetime = 3000;

should_be_destroyed = 0;