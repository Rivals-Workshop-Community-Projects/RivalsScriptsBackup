//THIS IS LITERALLY CHEFS CODE, CHANGE IT SOMETIME OKAY??

sprite_index = sprite_get("disc_zoom")
//mask_index = sprite_get("platform_article_mask");

//article#_init
hit_lockout = 0;
colliding_hitboxes = ds_list_create();

sound_play(sound_get("mark"));

state = 0
state_timer = 0

spr_dir = player_id.spr_dir
owner_id = player_id

depth = 0
 this_is_a_player = false
 hohohoangle = 0
 
 afterImageTimer = 0;
afterImageMax = 16;
afterImage = array_create(afterImageMax, -1);

uses_shader = true



ignores_walls = false