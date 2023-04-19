lengths = []
anim_frames = []
current_section = 0;

prefix_sum = [];
current_proj = 0;

state_timer = 0;
print("CREATED")

projectile_number = 0;
loop = false;
state_timer = 0;
lock_state = false;

lifetime = 40;

hitbox = noone;

parried = false;

orig_hsp = player_id.hsp;
should_die = false;