
// article3_init - runs once, when the article is created
// Minor objects.
// Most initialization is handled by an init state.

//Sprite and direction
sprite_index = sprite_get("null");
image_index = 0;
spr_dir = player_id.spr_dir;
uses_shader = false;
mask_index = sprite_get("null");

//State
state = -1;
state_timer = 0;
hitstop = 0;
//hsp = 0;
//vsp = 0;

//Terrain behavior
can_be_grounded = false;
ignores_walls = true;
free = true;
hit_wall = false;

//Skin behavior
is_default = player_id.is_default;
is_ea = player_id.is_ea;