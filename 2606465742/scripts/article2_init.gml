sprite_change_offset("cloud", 32, 16);
sprite_change_offset("cloud_lines", 32, 16);
sprite_change_offset("cloud_mask", 32, 16);

sprite_index = sprite_get("cloud_lines");
mask_index = sprite_get("cloud_mask");

y += 6;
orig_x = x;
orig_y = y;

image_xscale = 2;
image_yscale = 2;

move_speed = 1;
track_width = 800;
track_height = 64;

hsp = -move_speed;