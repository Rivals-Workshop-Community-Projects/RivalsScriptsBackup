if (state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR)
{
    ex = 0;
    ex_spend = 0;
    ex_alpha_draw = 0.4
}
if (ex_meter > 100)
{
    ex_meter = 100;
}

if (infinite_meter == true)
{
    ex_meter = 100;
}

with hit_fx_obj {
  if player == other.player && hit_fx == other.chair_break {
    depth = -10;
  }
}
if (ex_meter >= 50 and ex_meter < 100 and ex_ring == 0 and !infinite_meter)
{
sound_play(asset_get("sfx_coin_capture"))
white_flash_timer = 15;
ex_ring = 1;
}
else if (ex_meter >= 100 and ex_ring == 1 and !infinite_meter)
{
sound_play(asset_get("sfx_coin_capture"))
white_flash_timer = 15;
ex_ring = 2;
}

if (training_menu)
{
    if (menu_state == 0)
    {
        if (up_pressed)
        {
            if (cursor_pos < 4)
            cursor_pos += 1;
            else 
            cursor_pos = 1;
            if (!hitpause)
            {
                sound_play(asset_get("mfx_move_cursor"));
        	}
        }
        if (down_pressed)
        {
            if (cursor_pos > 1)
            cursor_pos -= 1;
            else 
            cursor_pos = 4;
            if (!hitpause)
            {
                sound_play(asset_get("mfx_move_cursor"));
        	}
        }
    }
    else
    {
        if (left_pressed)
        {
            if (page > 1)
            page -= 1;   
            else
            page = max_pages;
            if (!hitpause)
            {
                sound_play(asset_get("mfx_move_cursor"));
        	}
            clear_button_buffer(PC_LEFT_HARD_PRESSED);
        }
        if (right_pressed)
        {
            if (page < max_pages)
            page += 1;   
            else
            page = 1;
            if (!hitpause)
            {
                sound_play(asset_get("mfx_move_cursor"));
        	}
        	clear_button_buffer(PC_RIGHT_HARD_PRESSED);
        }
    }
    if (attack_pressed)
    {
        switch(menu_state)
        {
            case 0:
            
                switch(cursor_pos)
                {
                    case 1:
                        menu_state = 3;
                        max_pages = 4;
                        page = 1;
                        break;
                    case 2:
                        menu_state = 2;
                        max_pages = 4;
                        page = 1;
                        break;
                    case 3:
                        menu_state = 1;
                        max_pages = 8;
                        page = 1;
                        break;
                    case 4:
                        if (attack_pressed)
                        {
                            infinite_meter = !infinite_meter;
                        }
                        break;
                }
                break;
        }
    	if (!hitpause)
        {
            sound_play(asset_get("mfx_player_ready"));
        }
        clear_button_buffer(PC_ATTACK_PRESSED);
    }
    if (special_pressed)
    {
        if (menu_state == 0)
        {
            training_menu = false;
            window = 3;
            window_timer = 0;    
        }
        else
        menu_state = 0;
        
        clear_button_buffer(PC_SPECIAL_PRESSED);
    	if (!hitpause)
    	{
    	    sound_play(asset_get("mfx_back"));
    	}
    }
}