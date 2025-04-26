//ladder

can_be_grounded = true;                    
ignores_walls = false;                      
uses_shader = false;

hsp = 0;
vsp = 0;
hitstop = 0;

spr_dir = player_id.spr_dir;

sprite_index = asset_get("empty_sprite");
mask_index = asset_get("empty_sprite");
image_index = 0; 
anim_speed = 0;

image_xscale = 2;
image_yscale = 2;
depth = player_id.depth-1;

orig_depth = depth;

state = 1;
state_timer = 0;

is_extended = false;
extension_size = 0;

ladder_gravity = 0.5;
extend_timer = 0;
extend_timer_max = 24;

fall_timer = 0;
fall_timer_max = 24;
extend_sound = noone;

has_fallen = false;
fall_x = 0;

is_collapsing = false;
collapse_timer = 32;
collapse_timer_max = 32;

ladder_was_parried = false;