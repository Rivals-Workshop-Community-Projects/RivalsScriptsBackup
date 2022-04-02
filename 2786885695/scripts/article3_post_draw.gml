//article3_post_draw - damage numbers

//credit to SAI for this code, it's pretty much the same code as chara's damage numbers

for (var i = 1; i <= 9; i++) //i is the value of the digit, but the 8th slot is reserved for the heal +
{
    if (state_timer > 0)
    {
        if (damage >= power(10, i-1))
        {
            draw_sprite_ext(sprite_get("fx_damage"), damage/power(10, i-1), x+16+7*(final_i-1)-16*i, y + move, scale, scale, 0, color, alpha);
            if (player_id.is_gb) draw_sprite_ext(sprite_get("fx_damage_gb"), damage/power(10, i-1), x+16+7*(final_i-1)-16*i, y + move, scale, scale, 0, color, alpha);
        }

        //heal +
        //this mental gymnastic lookin ass basically just tells the code when it's the last digit, then puts the + there
        //since there's only 1 digit that can be "9", it sees that one specifically
        if (is_healing && floor(damage/power(10, i)) == 0)
        {
            if (!player_id.is_gb) draw_sprite_ext(sprite_get("fx_damage_heal"), 0, x-final_i*7, y + move, scale, scale, 0, color, alpha);
            else draw_sprite_ext(sprite_get("fx_damage_heal"), 1, x-final_i*7, y + move, scale, scale, 0, color, alpha);
        }
    }
    

    if (floor(damage/power(10, i)) == 0)
    {
        final_i = i;
        if (is_healing) final_i = i+1;
        break;
    }
}