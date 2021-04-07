//article1_init

init = 0;
sprite_index = sprite_get("blackhole");

state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = true;
free = false;
hits = 0;
debugNumber = 0;
duration = 0;
detected = false;
detectedArticle = id;
image_xscale = 0;
image_yscale = 0;
image_alpha = 0.7;
enemy = noone;
sound_play(sound_get("sfx_yuuto_gravity"));

det_hitbox = noone;