// I usually instance all of the article sprites in init.gml, then load them in when the article is initialized
spr_idle = player_id.spr_pig_idle;
spr_spawn  = player_id.spr_pig_spawn;
spr_fall = player_id.spr_pig_fall;
spr_hit = player_id.spr_pig_hit;
spr_attack = player_id.spr_pig_attack;
spr_charge = player_id.spr_pig_charge;
spr_taunt = player_id.spr_pig_taunt;
spr_land = player_id.spr_pig_land;
spr_die = player_id.spr_pig_die;

//Sprite and direction
sprite_index = spr_spawn;     
mask_index = spr_idle;
image_index = 0;                             
spr_dir = player_id.spr_dir;                 
uses_shader = true;                          

// STATES
// 0 - Spawn
// 1 - Idle
// 2 - Falling
// 3 - Charging
// 4 - Attack
// 5 - Hit
// 6 - Landing
// 7 - Taunt
// 8 - Death
pig_state = 0;                                         
pig_state_timer = 0;   
pig_hit = 0;  
rip = false;                  

hitstop = 0;                                       
hsp = 0;                                          
vsp = 0;                                           

can_be_grounded = true;
ignores_walls = false; 
free = false;          
is_hittable = true;
hittable_hitpause_mult = 0;

damaged = false;
destroy = false;
called = false;
just_hit = false;
to_move_x = 0;
to_move_y = 0;
to_move_angle = 0;
hbox = noone;

charge_speed = 13;

// I changed the following scripts
// article2_init.gml
// article2_update.gml
// article2_hit.gml
// init.gml
// attack_update.gml
// hit_player.gml