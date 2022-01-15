// article1_init.gml
article1_timer = 0;
hsp	= 0;
vsp	= 0;
free = 1;
can_be_grounded	= false;
ignores_walls = true;
hit_wall = false;
spr_dir	=1;
//player_id	The id of the object’s owner
//hitstop	The frames remaining .
//in hitpause.
//Hitpause automatically prevents movement
uses_shader	= 1;

sprite_index = asset_get("empty_sprite");
image_index = 0;
depth = 1;
state = 1;
state_timer = 0;

// Sound
electric_loop_sound = asset_get("sfx_absa_jabloop")
electric_loop_sound_obj = 0;
//init_shader();