// ==================== GRAFFITI ARTICLE POST DRAW  ======================
// draw drips
var col = graffiti_colors[0];
for (var i = 0; i < graffiti_num_drips; i += 1) {
    if graffiti_drips[i] == noone { continue; }
    var x1 = floor(x + graffiti_drips[i].x_off) + graffiti_offset;
    var x2 = x1 + 3;
    var y1 = y + 25 + graffiti_on_solid;
    var y2 = floor(y1 + graffiti_drips[i].y_off * graffiti_drip_timer / graffiti_drip_timer_max);
    draw_rectangle_color(x1, y1, x2, y2, col, col, col, col, false);
}

// draw text
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var str = graffiti_string;
var xx = x + graffiti_offset;
var yy = y + graffiti_on_solid; // y position slightly adjusted if on a plat vs a solid
for (var i = 0; i < 4; i += 1) {
    draw_set_font(graffiti_fonts[i]);
    var col = graffiti_colors[i];
    draw_text_color(xx, yy, str, col, col, col, col, 1);
}
// =======================================================================
