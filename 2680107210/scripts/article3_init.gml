//article3_init
sprite_index = asset_get("empty_sprite");
image_alpha = 1;
image_index = 0;
image_speed = 0; //Does not behave well with pausing in training mode

state_timer = 0;
scale_x = 0.3;
scale_y = 1;
scale_multiplier = 0;
rot = 1;


//dspecial_sacrifice_angle = (dspecial_sacrifice_angle + dspecial_spin_rate) % 360;

//asset_get() caching
s_dspecial_pentagram = sprite_get("dspecial_pentagram");