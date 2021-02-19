//article3_init
init = 0;
sprite_index = sprite_get("cannon");
mask_index = sprite_get("cannon");

image_speed = 0;
state = 0;
state_timer = 0;
demo_timer = 100;
reloadTime = 120;
can_be_grounded = true;
ignores_walls = false;
fallin = false;
uses_shader = true;
var got_hit = false;
var enemy_hitboxID = noone;