//article#_init
hit_lockout = 0;
colliding_hitboxes = ds_list_create();

article_sprite_index = player_id.sprite_index
article_image_index = player_id.image_index
article_spr_dir = player_id.spr_dir

spr_dir = player_id.spr_dir

state = 0
state_timer = 0

explosion_frame_offset = 0

//ignores_walls = false


//	init_shader();




mask_index = sprite_get("wraith_hurtbox");








hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;