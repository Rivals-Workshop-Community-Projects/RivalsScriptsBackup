homing_enabled = true;
home_target = noone; //the player to target with the homing
home_max_speed = abs(point_distance(0, 0, hsp, vsp)); //speed limiter, it prevents the projectile from going faster than what you put as HG_PROJECTILE_HSPEED and _VSPEED
home_turn_speed = 0.8; //turning speed