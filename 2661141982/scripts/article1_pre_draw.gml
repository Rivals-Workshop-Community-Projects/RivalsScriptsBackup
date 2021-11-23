var radius = ease_quadOut(0,light_radius,light_timer,light_max_timer) + 8*sin(get_gameplay_time() / 22)
var alpha = 0.55 + 0.26*sin(get_gameplay_time() / 30)

gpu_set_blendmode(bm_add)
draw_polygon(x,y,radius,radius,light_color,light_color,alpha,0,0,14);
gpu_set_blendmode(bm_normal);



#define draw_polygon(cx,cy,r,w,col1,col2,a1,a2,offset,n)

if (n < 3 or floor(n) != n) return -1;

draw_primitive_begin(pr_trianglestrip);

var incre = 360 / abs(n);

for (var i = 0; i <= 360; i+= incre)
{
    var posx, posy;
    posx = lengthdir_x(r,i+offset);
    posy = lengthdir_y(r,i+offset);
    
    draw_vertex_color(cx+posx, cy+posy, col2, a2);
    
    posx = lengthdir_x(r-w,i+offset);
    posy = lengthdir_y(r-w,i+offset);
    
    draw_vertex_color(cx+posx, cy+posy, col1, a1);
}

draw_primitive_end();
return 0;