//article1_init

init = 0;
sprite_index = sprite_get("noise_bomb") ;
state = 0;
state_timer = 0;
spr_dir = player_id.spr_dir;
can_be_grounded = true;
ignores_walls = false;
free = true;
uses_shader = true;
parried = false;
parried_frame = false;

grav = 0.7117 //cant be arsed
frame_update = 0;
bounces = 0;
max_bounces = 1;


hbox = noone;
hsp = 7*player_id.spr_dir;
vsp = -10;
prev_vsp = 0;
prev_hsp = 0;

init_hsp = hsp;
init_vsp = vsp;

hitbox = noone;
explosion_hbox_on = false;
explosion_hbox_out = false;
bomb_player = player_id.player
noise_explosion = hit_fx_create(sprite_get("noise_explosion"), 32);
