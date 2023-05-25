//article1 init

init = 0;
sprite_index = sprite_get("wheel");

depth = 1;

state = 0;
state_timer = 0;
state_end = 0;
state_buffer = -1;
idle_cycle = 0;
idle_max = 6;//6
attack_cycle = 0;
attack_max = 3;
follow_hb = -4;
sent = false;

fake_hitpause = false;
fake_hitpause_time = 0;
fake_oldhsp = 0;
fake_oldvsp = 0;

free = true;
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
proj_destroy = hit_fx_create( sprite_get( "projectile_destroy" ), 30 );


