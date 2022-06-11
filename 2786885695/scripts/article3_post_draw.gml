//article3_post_draw - damage numbers

//credit to SAI for this code, it's pretty much the same code as chara's damage numbers

if (state == 0)
{
    for (var i = 1; i <= 9; i++) //i is the value of the digit, but the 8th slot is reserved for the heal +
    {
        if (state_timer > 0)
        {
            if (damage >= power(10, i-1))
            {
                //don't ask
                var x_cal = x + ((16 + is_crit * 12) + final_i * (final_i - 1) - (16 + is_crit) * i) * (scale/2);
                //  x                           = article's position
                //  + (16 + is_crit * 12)       = offset
                //  + final_i * (final_i - 1)   = set center according to the final position
                //  - (16 + is_crit * 2) * i    = spread

                draw_sprite_ext(sprite_get("fx_damage"), damage/power(10, i-1), x_cal, y + move, scale, scale, 0, color, alpha);
                if (player_id.is_gb) draw_sprite_ext(sprite_get("fx_damage_gb"), damage/power(10, i-1), x_cal, y + move, scale, scale, 0, color, alpha);
            }

            //heal +
            //this mental gymnastic lookin ass basically just tells the code when it's the last digit, then puts the + there
            //since there's only 1 digit that can be "9", it sees that one specifically
            if (is_healing && floor(damage/power(10, i)) == 0)
            {
                draw_sprite_ext(sprite_get("fx_damage_heal"), (player_id.is_gb), x - (final_i * 7.5) * (scale / 2), y + move, scale, scale, 0, color, alpha);
            }
        }


        if (floor(damage/power(10, i)) == 0)
        {
            final_i = i;
            if (is_healing) final_i = i+1;
            break;
        }
    }
}

//if (state == 1) draw_debug_text(x, y, string(free));