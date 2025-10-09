//
sprite_index = sprite_get("dragoon");
mask_index = sprite_get("dragoon_mask");
image_index = 0;

can_be_grounded = true;
ignores_walls = false;

y = -room_height;
max_hsp = 40;
base_vsp = 12;
vsp = 12;
hsp = 0;
prev_vsp = vsp;

hit_lock = 0;

dragoon_id = 0;

piece_active = false;
piece_collected = false;

should_spawn = false;

piece_life_max = 600;
piece_life = 0;

