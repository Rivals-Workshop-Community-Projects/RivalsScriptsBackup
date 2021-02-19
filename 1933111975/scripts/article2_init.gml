//article1_init

//Sprite and direction
sprite_index = player_id.spr_particle;
image_index = 0;
spr_dir = player_id.spr_dir;

//State
state = 0;
state_timer = 0;

//Terrain behavior
can_be_grounded = false;
ignores_walls = true;
free = true;

//Animation speeds and timers
anim_rate = 6;
decel = 0.9;
vsp = 0;
hsp = 0;

//Source of particle. 0 null, 1 player, 2 cloud, 3 molotov, 4 bullet
source = 0;

//Cure depression
shoulddie = false;



/*

Q: What do you call a visual effect tied to an article?

A: A pARTICLE effect!