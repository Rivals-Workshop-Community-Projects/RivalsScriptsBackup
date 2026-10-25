//article1_init
// DSTRONG PAPERS

state = 0;
spr_dir = player_id.spr_dir;
//depth = player_id.depth - 1;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

free = false;

sprite_index = sprite_get("dstrong_bone_mask");
mask_index = sprite_get("dstrong_bone_mask");
/*
var lifespan = 40; // failsafe, not used 
with (player_id)
{
    var lifespan = get_window_value( AT_DSTRONG, 3, AG_WINDOW_LENGTH ) 
}

image_spd = 9 / lifespan;





type = 0;

*/
