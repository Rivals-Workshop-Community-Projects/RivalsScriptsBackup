if object_index != obj_stage_article {

sprite_index = sprite_get("plat" + string(spawn_variables[1]));
mask_index = sprite_get("plat_mask");
mode = 1;
if spawn_variables[0] == 1 {
mode = -1;
}

time = 480;

lerptime = 0;

old_x = x;
new_x = x;
print_debug("Plat initted")

rot = 0;
rot2 = 0;

} else {
owner = player_id;
orbiting = 1;
orbit_distance = 30;
orbit_angle = 0;
orbit_speed = 0;
orbit_height = 30;
orbit_flatness = 0;
orbit_flatness_dest = 17;
gravity_speed = 5;
gravity_amount = 1;
gravity_friction = 0;
cooldown = 0;
overriding = 0;
orig_player_id = player_id;
active_time = 0;
depthsort = 1;
dead = 0;
vis = 1;
attack = AT_EXTRA_1
linked = 0;

parrytime = 0;

time = 0;
active = false;

hitbox = noone;

shot_time = 40;

dest_x = 0;
dest_y = 0;

orig_x = 0;
orig_y = 0;
gravity_time = 40;

type = 0;
}