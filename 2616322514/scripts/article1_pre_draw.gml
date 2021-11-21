//ass
var col_R = get_color_profile_slot_r( get_player_color(player), 0);
var col_G = get_color_profile_slot_g( get_player_color(player), 0);
var col_B = get_color_profile_slot_b( get_player_color(player), 0);

var col_final = make_color_rgb(col_R, col_G, col_B);
draw_glow(x, y, glow_radius, col_final, col_final, glow_alpha, 30);
#define draw_glow(cx, cy, r, col1, col2, alpha, precision)

draw_primitive_begin(pr_trianglefan);
draw_vertex_color(cx, cy, col1, alpha);
var incre = (2*pi) / abs(precision);

for (var i = 0; i <= 2*pi; i+=incre)
{
    var pos;
    pos = [cos(i)*sign(precision), sin(i)*sign(precision)];
    draw_vertex_color(cx + (pos[0]*r), cy - (pos[1]*r), col2, 0);
}
draw_vertex_color(cx+(r*sign(precision)), cy, col2, 0);
draw_primitive_end();