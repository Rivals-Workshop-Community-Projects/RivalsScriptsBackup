//article2_init

init = 0;
sprite_index = sprite_get("noise_pkfc_fire");
sprite_change_collision_mask("noise_pkfc_fire", true, 1, 0, 0, 0, 0, 0 );
state = 0;
state_timer = 0;
spr_dir = player_id.spr_dir;
can_be_grounded = false;
ignores_walls = false;
free = true;
uses_shader = true;
parried = false;
parried_frame = false;


frame_update = 0;

hbox = noone;
fire_hbox = noone;
hbox_owner = noone;
hsp = (8-(player_id.free*4))*player_id.spr_dir;
vsp = 1+player_id.free*4;
prev_vsp = 0;
prev_hsp = 0;

lifetime = 25; // be sure to set the lifetime the same in the dspecial.gml hitbox properties aswell
fireball_loops = 2; //animation is fireball_loops*2 + 1 frames long
fire_loops = 0;
fire_loops_max = 4; // fire_loops = amount of hitboxes
grav = 0.05;
player_contact = false;

noise_explosion = hit_fx_create(sprite_get("noise_explosion"), 32);
