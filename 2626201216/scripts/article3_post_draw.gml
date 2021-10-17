
draw_set_font(asset_get("tinyFont"));

if (69 = 420)
{
    if (edge_state = 1)
    {
        draw_text_ext_transformed(x-3, y-34,string(max), 0, 40 , 1 , 1, 0);
    }
    else if (edge_state = 2)
    {
        draw_text_ext_transformed(x-3, y-34,string(min), 0, 40 , 1 , 1, 0);
    }
}


//draw_text_ext_transformed(x-3, y-34,string(place_meeting(x,y+8,asset_get("par_block"))), 0, 40 , 1 , 1, 0);

//draw_text_ext_transformed(x-3, y-54,string(place_meeting(x,y+4,asset_get("par_jumpthrough"))), 0, 40 , 1 , 1, 0);

//draw_text_ext_transformed(x-3, y-34,string(death_timer), 0, 40 , 1 , 1, 0);
