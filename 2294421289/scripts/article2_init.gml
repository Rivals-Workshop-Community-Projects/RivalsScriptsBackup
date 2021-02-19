//article2_init - ring

init = 0;
depth = -1000;
sprite_index = sprite_get("ring");
mask_index = sprite_get("ringmask");
image_speed = 0.3;

tv_hb_link = 0;
tmp_hb_id = 0;
tmp_id = 0;

state = 0;
state_timer = 0;

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
free = true;