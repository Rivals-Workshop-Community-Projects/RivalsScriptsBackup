is_uspecial_scapegoat = true;

can_be_grounded = true;
ignores_walls = false;

state = PS_IDLE;

state_timer = 0;
lock_state = false;

scapegoat_gravity = 0.5;

fall_anim_frames = 9;
detonate_air_anim_frames = 12;
plop_anim_frames = 22;
still_plop_anim_frames = 6;
detonate_ground_anim_frames = 7;

current_anim_speed = 0;

let_go = false;

hitbox = noone;
sprite_index = sprite_get("uspecial_proj_fall");
mask_index = sprite_get("uspecial_proj_mask");

dspecial_variant = -1;
dspecial_wait = 180;
dspecial_wait_lit = 180;
dspecial_lit = false;
dspecial_disappear_frames = 21;
dspecial_death_frames = 36;
depth = player_id.depth + 10;