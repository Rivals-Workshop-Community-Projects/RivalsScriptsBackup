//AR article1_init
//acid raincloud

init = 0;
sprite_index = sprite_get("acidraincloud");

pre_rfl = noone;

//some of em referencely stolen from guadua
state = 0;
state_timer = 0;
idle_cycle = 0;
free = true;
can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

arc_lm = 1;
arc_c = 1;
arc_rm = 1;
arc_faircharge = 0;
arc_life = 1;
arc_temp_id = noone;
arc_num = 0;
arc_num_max = 1;
arc_thruplat = false;

rainhitvfx = hit_fx_create( sprite_get( "rainhit" ), 6 );

//"bait"
//damage = 1;