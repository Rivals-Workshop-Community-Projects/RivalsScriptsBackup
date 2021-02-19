//Sprite and direction
sprite_index = player_id.spr_molotov;
image_index = 0;
spr_dir = player_id.spr_dir;

//State
state = 1;
state_timer = 0;

//Terrain behavior
can_be_grounded = false;
ignores_walls = true;
free = true;

//Funny move
batted = false;
battime = -1;

//Animation speeds and timers
anim_rate = 3;
vsp = 0;
hsp = 0;

hitbox = 3;