// draw drips
var col = graffiti_colors[0];
for (var i = 0; i < num_drips; i += 1) {
    var x1 = floor(x + drips[i].x_off);
    var x2 = x1 + 3;
    var y1 = y + 26;
    var y2 = floor(y1 + drips[i].y_off * drip_timer / drip_timer_max);
    draw_rectangle_color(x1, y1, x2, y2, col, col, col, col, false);
}

// draw text
draw_set_halign(fa_center);
draw_set_valign(fa_top);
for (var i = 0; i < 4; i += 1) {
    draw_set_font(graffiti_fonts[i]);
    var col = graffiti_colors[i];
    draw_text_color(x-4, y+1, str, col, col, col, col, 1);
}