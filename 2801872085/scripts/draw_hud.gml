if (move_cooldown[AT_USPECIAL] <= 1 || move_cooldown[AT_DSPECIAL] <= 1 || move_cooldown[AT_FSPECIAL] <= 1)
        {
        draw_sprite_ext(sprite_get("TP")
        , - 0, temp_x - 18, temp_y - 28, 2, 2, 0, c_white, 1);
        }

if (move_cooldown[AT_NSPECIAL] <= 1)
        {
        draw_sprite_ext(sprite_get("TP2")
        , - 0, temp_x - -46, temp_y - 32, 2, 2, 0, c_white, 1);
        }
        
