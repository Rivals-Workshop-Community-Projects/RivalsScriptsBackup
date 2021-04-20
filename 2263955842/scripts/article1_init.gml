//article1_init
// DSTRONG PAPERS

depth = player_id.depth - 1;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

free = true;

sprite_index = sprite_get("dstrong_paper");



var lifespan = 40; // failsafe, not used 
with (player_id)
{
    var lifespan = get_window_value( AT_DSTRONG, 3, AG_WINDOW_LENGTH )
}

image_spd = 9 / lifespan;





type = 0;


