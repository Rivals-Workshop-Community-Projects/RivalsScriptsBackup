/*try
{
    print_debug(shadr_init)
}
catch (er)
{
    print_debug("no shader")
}*/

var _curr = get_player_color(player);

if(_curr == 0)
{
    set_character_color_slot( 6, 148, 0, 211 );
    set_character_color_slot( 7, 255, 195, 201 );
}

if (_curr < 15)
{
    //Replace Ankles with Tail tip
    set_color_profile_slot( 0, 4, 219, 112, 147 );
    set_color_profile_slot_range( 4, 2, 12, 24 );
}
else
{
    //Replace Tail tip with Ankles
    set_color_profile_slot( 0, 4, 73, 80, 105 );
    set_color_profile_slot_range( 4, 2, 2, 24 );
    
    set_color_profile_slot( 
        _curr, 
        4, 
        get_color_profile_slot_r(_curr, 0), 
        get_color_profile_slot_g(_curr, 0), 
        get_color_profile_slot_b(_curr, 0) 
    );
}

//END