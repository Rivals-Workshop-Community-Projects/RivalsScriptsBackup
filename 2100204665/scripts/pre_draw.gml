if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
    if (attack == AT_NSPECIAL){
        draw_glow(x, y - 40, radius, c_blue, c_blue, 25, 30);
        draw_circle_color(x, y - 40, radius, c_blue, c_blue, true);
        draw_circle_color(x, y - 40, radius - 1, c_blue, c_blue, true);
        draw_circle_color(x, y - 40, radius - 0.5, c_blue, c_blue, true);
    }
    draw_set_font(font_get("papyrus"));
    draw_set_halign(fa_left);
    if (attack == AT_TAUNT){
        if (window == 2){
            draw_rectangle_color(x - 112, y - 132 - 12, x + 126, y - 70 - 12, c_black, c_black, c_black, c_black, noone);
            draw_rectangle_color(x - 108, y - 128 - 12, x + 122, y - 74 - 12, c_white, c_white, c_white, c_white, noone);
            draw_rectangle_color(x - 106, y - 126 - 12, x + 120, y - 76 - 12, c_black, c_black, c_black, c_black, noone);
            draw_text_ext_transformed_color(x - 100 , y - 120 - 12, string_copy(msg, 1, j), 14, 220, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
        }
    }
}
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