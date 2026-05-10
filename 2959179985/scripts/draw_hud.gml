// draw_hud
if (!get_match_setting(SET_PRACTICE))
{
    if (ex_meter < 100)
    {
        gpu_set_fog(true, /*#*/$ca6b3b, 0, 0);
        draw_sprite_ext(sprite_get("meter"), 10, temp_x + 20, temp_y + 6, 1, 1, 0, 0, 0.2)
        gpu_set_fog(false, /*#*/$ca6b3b, 0, 0);
        if (ex_meter > 0)
            {
                gpu_set_fog(true, /*#*/$b6f7ff, 0, 0);
                draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 22, temp_y + 8, 1, 1, 0, 0, 0.25)
                draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 18, temp_y + 8, 1, 1, 0, 0, 0.25)
                draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 22, temp_y + 4, 1, 1, 0, 0, 0.25)
                draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 18, temp_y + 4, 1, 1, 0, 0, 0.25)
                gpu_set_fog(false, /*#*/$b6f7ff, 0, 0);
            }
        draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 20, temp_y + 6, 1, 1, 0, /*#*/$62d4f5, 1)
        draw_sprite_ext(sprite_get("meter"), 0, temp_x + 20, temp_y + 6, 1, 1, 0, /*#*/$e0e0de, 1)
    }
    else if (ex_meter = 100)
    {
        gpu_set_fog(true, /*#*/$b6f7ff, 0, 0);
        draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 24, temp_y + 10, 1, 1, 0, 0, 0.25)
        draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 16, temp_y + 10, 1, 1, 0, 0, 0.25)
        draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 24, temp_y + 2, 1, 1, 0, 0, 0.25)
        draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 16, temp_y + 2, 1, 1, 0, 0, 0.25)
        gpu_set_fog(false, /*#*/$b6f7ff, 0, 0);
        draw_sprite(sprite_get("meter"), floor(ex_meter/10), temp_x + 20, temp_y + 6)
        draw_sprite_ext(sprite_get("meter"), 0, temp_x + 20, temp_y + 6, 1, 1, 0, /*#*/$e0e0de, 1)
    }
}

else if (get_match_setting(SET_PRACTICE))
{
    //draw_debug_text(temp_x + 50, temp_y - 20, "Taunt for training menu:" + (infinite_meter ? "ON" : "OFF"));
    draw_debug_text(temp_x + 50, temp_y - 20, "Taunt for training menu");
    if (training_menu == true)
    {
        
        draw_sprite_ext(sprite_get("training_menu"), 0, temp_x + 104, temp_y, 1, 1, 0, 1, 0.5)
        switch(menu_state)
        {
            case 0:
                draw_sprite(sprite_get("cursor"), 0, temp_x + 5, temp_y - ((cursor_pos * 20 ) + 5))
                draw_debug_text(temp_x + 15, temp_y - 85, "Infinite Meter: " + (infinite_meter ? "ON" : "OFF"));
                draw_debug_text(temp_x + 15, temp_y - 65, "Move Notes");
                draw_debug_text(temp_x + 15, temp_y - 45, "Advanced Notes");
                draw_debug_text(temp_x + 15, temp_y - 25, "Dev Tips ");
                draw_debug_text(temp_x + 0, temp_y - 115, "Attack:Accept Special:Back");
                break;
            case 1:
                switch(page)
                {
                    case 1:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 8");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "Hisui can swing FTILT");
                        draw_debug_text(temp_x + 15, temp_y - 56, "up to three times");
                        draw_debug_text(temp_x + 15, temp_y - 36, "with the final hit");
                        draw_debug_text(temp_x + 15, temp_y - 16, "being the strongest one. ");
                        
                        break;
                    case 2:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 8");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "UAIR is a two part move.");
                        draw_debug_text(temp_x + 15, temp_y - 56, "First hit sends up while");
                        draw_debug_text(temp_x + 15, temp_y - 36, "the last hit spikes.");
                        
                        break;
                    case 3:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 8");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "On hit, Hisui can jump");
                        draw_debug_text(temp_x + 15, temp_y - 56, "cancel or airdodge cancel");
                        draw_debug_text(temp_x + 15, temp_y - 36, "out of DAIR.");
                        
                        break;
                    case 4:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 8");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "The longer FSTRONG is");
                        draw_debug_text(temp_x + 15, temp_y - 56, "charged, the farther");
                        draw_debug_text(temp_x + 15, temp_y - 36, "Hisui goes.");
                        
                        break;
                    case 5:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 8");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "Hisui can cancel DATTACK");
                        draw_debug_text(temp_x + 15, temp_y - 56, "into USTRONG on hit.");
                        draw_debug_text(temp_x + 15, temp_y - 36, "This is based on ");
                        draw_debug_text(temp_x + 15, temp_y - 16, "Zetterburn's gatling.");
                        
                        break;
                    case 6:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 8");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "Holding down-back, down,");
                        draw_debug_text(temp_x + 15, temp_y - 56, "down-forward, or forward");
                        draw_debug_text(temp_x + 15, temp_y - 36, "will change NSPECIAL's");
                        draw_debug_text(temp_x + 15, temp_y - 16, "items to a specific set.");
                        
                        break;
                    case 7:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 8");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "Pressing special during");
                        draw_debug_text(temp_x + 15, temp_y - 56, "FSPECIAL leads into a");
                        draw_debug_text(temp_x + 15, temp_y - 36, "launcher hit that can");
                        draw_debug_text(temp_x + 15, temp_y - 16, "be jump cancelled. ");
                        
                        break;
                    case 8:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 8");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "Hisui can place the");
                        draw_debug_text(temp_x + 15, temp_y - 56, "bento set farther in");
                        draw_debug_text(temp_x + 15, temp_y - 36, "front of by holding");
                        draw_debug_text(temp_x + 15, temp_y - 16, "DSPECIAL.");
                        break;
                }
                break;
            case 2:
                switch(page)
                {
                    case 1:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 4");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "Hisui can special");
                        draw_debug_text(temp_x + 15, temp_y - 56, "cancel from her attacks");
                        draw_debug_text(temp_x + 15, temp_y - 36, "by pressing special");
                        draw_debug_text(temp_x + 15, temp_y - 16, "on hit.");
                        
                        break;
                    case 2:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 4");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "However, Hisui cannot");
                        draw_debug_text(temp_x + 15, temp_y - 56, "cancel specials into");
                        draw_debug_text(temp_x + 15, temp_y - 36, "other specials.");
                        
                        break;
                    case 3:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 4");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "By pressing parry");
                        draw_debug_text(temp_x + 15, temp_y - 56, "during the startup of");
                        draw_debug_text(temp_x + 15, temp_y - 36, "a special, Hisui can");
                        draw_debug_text(temp_x + 15, temp_y - 16, "use EX moves.");
                        
                        break;
                    case 4:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 4");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "If Hisui get hit");
                        draw_debug_text(temp_x + 15, temp_y - 56, "while bento is out,");
                        draw_debug_text(temp_x + 15, temp_y - 36, "the bento becomes inactive");
                        draw_debug_text(temp_x + 15, temp_y - 16, "and fades away.");
                        
                        break;
                    
                }
                break;
            case 3:
                switch(page)
                {
                    case 1:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 4");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "The down-back variant");
                        draw_debug_text(temp_x + 15, temp_y - 56, "of NSPECIAL is very");
                        draw_debug_text(temp_x + 15, temp_y - 36, "useful as it has good");
                        draw_debug_text(temp_x + 15, temp_y - 16, "coverage with pot.");
                        
                        break;
                    case 2:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 4");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "DSPECIAL is primarily");
                        draw_debug_text(temp_x + 15, temp_y - 56, "useful for edgeguaring");
                        draw_debug_text(temp_x + 15, temp_y - 36, "since it stays active");
                        draw_debug_text(temp_x + 15, temp_y - 16, "for awhile.");
                        
                        break;
                    case 3:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 4");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "Hisui's recovery isn't");
                        draw_debug_text(temp_x + 15, temp_y - 56, "the best so be sure to");
                        draw_debug_text(temp_x + 15, temp_y - 36, "not to overextend off");
                        draw_debug_text(temp_x + 15, temp_y - 16, "stage too much.");
                        
                        break;
                    case 4:
                        draw_debug_text(temp_x + 38, temp_y - 96, "<-");
                        draw_debug_text(temp_x + 60, temp_y - 96, "Page: " + string(page) + " of 4");
                        draw_debug_text(temp_x + 150, temp_y - 96, "->");
                        draw_debug_text(temp_x + 15, temp_y - 76, "Hisui's recovery isn't");
                        draw_debug_text(temp_x + 15, temp_y - 56, "the best so careful");
                        draw_debug_text(temp_x + 15, temp_y - 36, "not to overextend off");
                        draw_debug_text(temp_x + 15, temp_y - 16, "stage too much.");
                        
                        break;
                }
        }
    }
    else
    {
        if (ex_meter < 100)
        {
            gpu_set_fog(true, /*#*/$ca6b3b, 0, 0);
            draw_sprite_ext(sprite_get("meter"), 10, temp_x + 20, temp_y + 6, 1, 1, 0, 0, 0.2)
            gpu_set_fog(false, /*#*/$ca6b3b, 0, 0);
            if (ex_meter > 0)
            {
                gpu_set_fog(true, /*#*/$b6f7ff, 0, 0);
                draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 22, temp_y + 8, 1, 1, 0, 0, 0.25)
                draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 18, temp_y + 8, 1, 1, 0, 0, 0.25)
                draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 22, temp_y + 4, 1, 1, 0, 0, 0.25)
                draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 18, temp_y + 4, 1, 1, 0, 0, 0.25)
                gpu_set_fog(false, /*#*/$b6f7ff, 0, 0);
            }
            draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 20, temp_y + 6, 1, 1, 0, /*#*/$62d4f5, 1)
            draw_sprite_ext(sprite_get("meter"), 0, temp_x + 20, temp_y + 6, 1, 1, 0, /*#*/$e0e0de, 1)
        }
        else if (ex_meter = 100)
        {
            gpu_set_fog(true, /*#*/$b6f7ff, 0, 0);
            draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 24, temp_y + 10, 1, 1, 0, 0, 0.25)
            draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 16, temp_y + 10, 1, 1, 0, 0, 0.25)
            draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 24, temp_y + 2, 1, 1, 0, 0, 0.25)
            draw_sprite_ext(sprite_get("meter"), floor(ex_meter/10), temp_x + 16, temp_y + 2, 1, 1, 0, 0, 0.25)
            gpu_set_fog(false, /*#*/$b6f7ff, 0, 0);
            draw_sprite(sprite_get("meter"), floor(ex_meter/10), temp_x + 20, temp_y + 6)
            draw_sprite_ext(sprite_get("meter"), 0, temp_x + 20, temp_y + 6, 1, 1, 0, /*#*/$e0e0de, 1)
        }
    }
}
