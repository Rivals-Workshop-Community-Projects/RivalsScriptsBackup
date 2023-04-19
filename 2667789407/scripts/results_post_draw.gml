
if (results_timer < 5) exit;

//Thanks, Hypercam 
//(see unload.gml)
if (results_timer == 5) 
{
    unown_message = "";
    with (asset_get("pHitBox")) if ("unown_results_screen_message" in self)
    {
        other.unown_message = unown_results_screen_message;
        break;
    }
    unown_message = string_upper(unown_message);
}
else if string_length(unown_message)
{

    for (var i = string_length(unown_message); i > 0; i--)
    {
        var let = string_char_at(unown_message, i);
        if (let == " ") continue;
        else if (let == "!") let = "EM";
        else if (string_letters(let) != let) let = "QM";

        var letter_time = results_timer - 16*i;
        if (letter_time < 0 || letter_time > 360) continue;

        x_pos = ease_sineIn( 1100, -50, letter_time, 360);
        y_pos = ease_circOut( 250, 400, letter_time, 360);
        y_pos += lengthdir_y(7, 4*(results_timer + 40*i));

        draw_sprite_ext(sprite_get("turn_"+let), 0, x_pos, y_pos, 2, 2, 0, c_white, 1);
    }
    
}
