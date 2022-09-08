//article1_init

init = 0;

spr_bone = [sprite_get("bone_horizontal"), sprite_get("bone_vertical")]
spr_bone_hitbox = [sprite_get("bone_mask_horizontal"), sprite_get("bone_mask_vertical")]

sprite_index = asset_get("empty_sprite")
air_hurtbox_spr = asset_get("empty_sprite")

state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
uses_shader = true;
grounds = 1;
walls = 1;

accel = .02;
ground_friction = .02;

second = 60;
bone_hit_timer = 0;
bone_dir = 0;
bone_w_destroy = 4*second;
init_hsp = 0;
init_vsp = 0;

fail_timer = 0;