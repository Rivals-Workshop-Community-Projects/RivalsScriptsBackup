// Mound Article

sprite_index = sprite_get("mound_idle");

can_be_grounded = true;
ignores_walls = true;

depth = player_id.depth - 2;
spr_dir = player_id.spr_dir;

die = false;
// Idle, Burst, Die
state_anim_frames = [0, 3, 2];
state_length = [0, 12, 8];

// States
state = 0;
state_timer = 0;