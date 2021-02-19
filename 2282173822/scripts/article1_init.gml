if (player_id.object_index == pHitBox) player_id = player_id.player_id; //i hate rivals of aether



//Sprite and direction
sprite_index = player_id.spr_cloud_spawn;
image_index = 0;
mask_index = player_id.spr_cloud_mask;
spr_dir = 1;
uses_shader = true;

//State
state = 0;
state_timer = 0;
prev_state = 0;
hitstop = 0;
hsp = 0;
vsp = 0;
old_hsp = 0;
old_vsp = 0;
exist_timer = 0;
orig_x = x;
orig_y = y;
orig_depth = depth;

//Terrain behavior
can_be_grounded = false;
ignores_walls = true;
free = true;
hit_wall = false;

//Cope with own mortality
should_die = false;
dying = false;



has_been_pushed = false;

sound_play(asset_get("sfx_absa_cloud_place"));