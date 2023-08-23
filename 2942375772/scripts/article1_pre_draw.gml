if visible {
    with (player_id)
    {
        var col = get_player_color(player);
        var slot = 4;
        var glow_col = make_color_rgb(get_color_profile_slot_r(col, slot), get_color_profile_slot_g(col, slot), get_color_profile_slot_b(col, slot));
    }
    
    gpu_push_state();
    gpu_set_blendmode(bm_add);
    draw_glow(x,y-14,200,c_white,glow_col, 0.15 + (0.1*(sin(get_gameplay_time() / 30))), (get_gameplay_time() / 30) mod (2*pi), 12);
    gpu_pop_state()
}


#define draw_glow(cx, cy, r, col1, col2, alpha, offset, precision)

draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(cx, cy, col1, alpha);
var incre = (2*pi) / abs(precision);

for (var i = offset; i <= (2*pi) + offset; i+=incre)
{
    var pos;
    pos = [cos(i)*sign(precision), sin(i)*sign(precision)];
    draw_vertex_color(cx, cy, col2, alpha);
    draw_vertex_color(cx + (pos[0]*r), cy - (pos[1]*r), col2, 0);
}
draw_primitive_end();