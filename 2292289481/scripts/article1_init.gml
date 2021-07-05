//article1 init

init = 0;
walkspeed = 2.5;
minion_active = false;
minion_poisoned = false;
sprite_index = sprite_get("minion");

state = 0;
hsp = 0;    
vsp = -5;
state_timer = 0;
idle_cycle = 0;
use_left = 2;

free = false;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

