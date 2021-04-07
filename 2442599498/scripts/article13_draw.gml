//

draw_set_alpha(alpha);

//line graph
draw_line_width_color(x - 2, y, x - 2, y-120, 4, c_white, c_white);
draw_line_width_color(x, y - 2, x+200, y - 2, 4, c_white, c_white);

//yellow/blue rating lines
draw_line_width_color(x, y - (rating_level_max/100), x+200, y - (rating_level_max/100), 3, c_yellow, c_yellow);
draw_line_width_color(x, y - (rating_level/100), x+200, y - (rating_level/100), 2, c_aqua, c_aqua);

//text
draw_set_font(asset_get("roaMBLFont"));
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_colour(c_white);
draw_text_transformed_color(x + 90, y - 140, "Ratings " + string(rating_level), 1 + dsin(timer*8)*0.02, 1 + dcos(timer*8)*0.04, 0, c_white,c_white,c_white,c_white, alpha);

//purple random lines
for (var i = 0; i < array_length(purple_ymod) - 1; i++) {
    draw_line_width_color(x + i*23, y - (rating_level/100) + purple_ymod[i], x + (i+1)*23, y - (rating_level/100) + purple_ymod[i + 1], 3, c_purple, c_purple);
}

if display_text[0] != undefined {
    if display_text[1] > 0 {
        var colour = c_green;
    } else {
        var colour = c_red;
    }
    
    if display_text_timer < 60 {
        var displayalpha = (display_text_timer/60)*0.5;
    } else {
        var displayalpha = 0.5;
    }
    
    if display_text_increment < 10 {
        var xmod = ease_backOut(-10, 0, display_text_increment, 10, 5);
    } else {
        var xmod = 0;
    }
    
    draw_text_transformed_color(x + 100 + xmod, y + 20, display_text[0] + " +" + string(display_text[1]), 0.5, 0.5, 0, colour,colour,colour,colour, displayalpha);
}

draw_set_alpha(1);