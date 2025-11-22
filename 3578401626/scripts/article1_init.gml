//article no. 1's init

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("hoop_hbox");
image_go = 0.25;
depth = -8;
vsp = 8;

touched_player = noone;
state = 0;
state_timer = 0;
bounces_left = 5 + 1;//DO NOT REMOVE THE ONE, the one is for the mandetory bounce
hoop_count = 1 + 1;
bounce_cool = 0;

size = 1;
size_next = 1;
hoop_image = 0;

backhoop = instance_create(x + vsp, y, "obj_article2");
backhoop.sprite_index = player_id.spr_hoopback;
backhoop.depth = 8;
backhoop.steve_is_grabbable = false;