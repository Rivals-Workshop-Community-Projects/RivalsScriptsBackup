//Article 3: TNT

//Sprite and direction
sprite_index = player_id.spr_tnt;
image_index = 0;
real_index = 0;
mask_index = player_id.spr_tnt_mask;
spr_dir = 1;
uses_shader = false;

//State
cycle = 0;
cycle_max = 15;
cycle_timer = 0;
cycle_timer_max = 15;
hitstop = 0;
hsp = 0;
vsp = 0;
exist_timer = 0;
was_free = 0;

//Terrain behavior
can_be_grounded = true;
ignores_walls = false;
has_bounced = false;



steve_water_last_frame = 0;

hsp = 5 * random_func(0, 2, true) ? 1 : -1;
vsp = -5;
hit_check = false;
sound_play(player_id.sfx_minecraft_fuse);



//BY SUPERSONIC

hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
damage = 75; //by muo
kb_dir = 0;
orig_knock = 0;