if (player_id.object_index != oPlayer && player_id.object_index != oTestPlayer) player_id = player_id.player_id; //i hate rivals of aether



//Sprite and direction
sprite_index = player_id.spr_alto_spawn;
image_index = 0;
mask_index = player_id.spr_alto_idle;
spr_dir = player_id.spr_dir;
uses_shader = true;

//State
state = 0;
state_timer = 0;
exist_timer = 0;
depth = player_id.depth - 1;

//Terrain behavior
can_be_grounded = false;
ignores_walls = true;
free = true;