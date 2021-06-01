//thank you delta :)


//Sinusuiodal pulsing
var phase, position;
phase = (get_gameplay_time()/30) mod (2*pi);
position = abs(sin(300))*0.4 + 0.6;

//Blendmode
var blend = gpu_get_blendmode();
gpu_set_blendmode(bm_add);

//Draw the glow
if state == 1 {
	var precision;
	precision = (position-0.5)*40;
	draw_glow(x, y, 15+(position*100*glowmodifier), c_black, colorvar, 1, precision);
}

//Reset
gpu_set_blendmode(blend);


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
