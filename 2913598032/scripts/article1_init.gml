spr_chest = player_id.spr_item_chest;
spr_gun = player_id.spr_item_gun;
spr_sword = player_id.spr_item_sword;
spr_trumpet = player_id.spr_item_trumpet;

sprite_index = noone;
mask_index = noone;
image_index = 1;

can_be_grounded = true;
free = true;
ignores_walls = false;

destroy = false;
recalled = false;
player_distance = 0;

item_id = 0;
item_set = false;
item_lockout = 60;

item_gravity = 0.5;
item_air_friction = 0.1;
item_ground_friction = 0.2;
item_pull_speed = 0.03;
//item_pull_speed = 5;

detonator = false;
detonate_timer = 10;
post_timer = 8;

hbox = noone;