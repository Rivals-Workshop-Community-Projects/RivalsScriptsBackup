//death.gml
//this script runs when the player loses a stock/dies, useful for resetting variables

//reset nspec charges
nspec_charge = 1;

//stops grab
if (instance_exists(my_grab_id) && my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;
}

//failsafe against clinging, shouldn't normally be a problem but in tester's case you can cling and die from rune A's wall slide
if (clinging) clinging = false;

//if the halloween alt is used, allow the costume to appear on the respawn platforms
if (halloween_alt && get_player_stocks(player) > 1) halloween_active = true;