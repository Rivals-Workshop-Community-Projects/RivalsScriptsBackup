//
sprite_index = sprite_get("ror_shenron");
mask_index = sprite_get("ror_shenron");
image_index = obj_stage_main.ror_ssl_visuals;

image_xscale = 2;
image_yscale = 2;

x = get_marker_x(96);
y = get_marker_y(96) + 512;
shenron_timer = 0;
shenron_rise = 160;
should_depart = false;

can_be_grounded = false;
ignores_walls = true;
depth = 31;

print("Shenron Appears")