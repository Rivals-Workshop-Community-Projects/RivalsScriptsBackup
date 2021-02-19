/*
sprite_index = sprite_get("plat")
vsp = -9
*/

type = 0;
oldtype = -1;
hbox = noone;

active = 0;
active_box = noone;


timer = 1200;

sprite_index = sprite_get("dspecial_cake_idle")
mask_index = sprite_get("dspecial_cake_hurt");

image_speed = 0

can_be_grounded = 1;
ignores_walls = 0;
cooldown = 0;
popped = 0;

can_hit = array_create(20, 0)

effect = 0;