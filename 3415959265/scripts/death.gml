//death.gml

artc_count = 0;

if (instance_exists(my_grab_id) && my_grab_id != noone) 
{
    if (uspc_grabicide) 
    {
        my_grab_id.old_hsp = 30 * spr_dir;
        my_grab_id.hitstop = 0;
        my_grab_id = noone;
    } 
    else 
    {
        my_grab_id.hitstop = 0;
        my_grab_id = noone;
    }
}
if (clinging) clinging = false;


if (is_sparking || is_guardian || is_super)
{
    is_sparking = false;
    is_guardian = false;
    is_super = false;
    meter = 0;
    
}
else
{
    meter = meter/2;
}

with (obj_article1)
{
    if (player_id == other)
    {
        state = 7;
        state_timer = 0;
    }
}

// Check if marked_players is initialized and not empty
if (is_array(marked_players) && ds_list_size(marked_players) > 0) {
    for (var i = ds_list_size(marked_players) - 1; i >= 0; i--) {
        var entry = marked_players[| i];
        var player = entry[0];

        if (instance_exists(player)) {
            print_debug("Removing marks from player: " + string(player));
        }

        // Remove the entry
        ds_list_delete(marked_players, i);
    }
    // Clear the list completely
    ds_list_clear(marked_players);
}

// Reinitialize the list
if (!is_array(marked_players)) {
    marked_players = ds_list_create();
}