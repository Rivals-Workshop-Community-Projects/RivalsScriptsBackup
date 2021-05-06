// article init

state = PS_IDLE_AIR; // reuse player states for articles
state_timer = 0;
mask_index = sprite_get("frog_mask");
free = 1;
grabbedplayer = 0;



vsp = -8;
hsp = 3 * player_id.spr_dir;
can_be_grounded = true;
ignores_walls = false;

frog_dspecial_pausetime = 0;    
frog_dspecial_movetime = 0;


