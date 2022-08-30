try
{
    var _curr = get_player_color(player);
    
    if(_curr == 0)
    {
        set_character_color_slot( 6, 148, 0, 211 );
        set_character_color_slot( 7, 255, 195, 201 );
    }
    
    //---> ALT RELATED CODE
    
    if (_curr == 18 ||
        _curr == 19 ||
        _curr == 20 ||
        _curr == 21 ||
        _curr == 22 ||
        _curr == 23 ||
        _curr == 24 ||
        _curr == 27 ||
        _curr == 28)
    //if (_curr < alt_split)
    {
        //Replace Tail tip color slot with Ankles
        set_color_profile_slot( 0, 4, 73, 80, 105 );
        set_color_profile_slot_range( 4, 2, 2, 24 );
        
        //Set Ankles color to the same as Shills
        set_color_profile_slot( 
            _curr, 
            4, 
            get_color_profile_slot_r(_curr, 0), 
            get_color_profile_slot_g(_curr, 0), 
            get_color_profile_slot_b(_curr, 0) 
        );
    }
    
    else if (_curr == 25 ||
            _curr == 26)
    //if (_curr < alt_split)
    {
        //Replace Tail tip color slot with Ankles
        set_color_profile_slot( 0, 4, 73, 80, 105 );
        set_color_profile_slot_range( 4, 2, 2, 24 );
        
        //Set Ankles color to yellow
        set_color_profile_slot( 
            _curr, 
            4, 
            240, 
            180, 
            54 
        );
    }
    
    else
    {
        //Replace Ankles with Tail tip (Refresh Alt color)
        set_color_profile_slot( 0, 4, 219, 112, 147 );
        set_color_profile_slot_range( 4, 2, 12, 24 );
    }
}
catch (er)
{
    print_debug("caught")
    set_character_color_slot( 6, 148, 0, 211 );
    set_character_color_slot( 7, 255, 195, 201 );
}

shadr_init = true; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.

//END