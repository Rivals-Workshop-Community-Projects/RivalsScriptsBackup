// if state == PS_IDLE or state == PS_WALK or state == PS_DASH
// {
// 	gpu_push_state()
// 	gpu_set_blendmode(bm_add)
// 	var pos = get_gameplay_time()/30;
// 	draw_polygon(x,y,48 + 6*(sin(pos + (pi/2)) ),44,player_id.chargecol,player_id.chargecol,(0.12*sin(pos)) + 0.24,0,0,12);
// 	draw_polygon(x,y,42 + 6*(sin(pos) ),48,player_id.chargecol,player_id.chargecol,(0.1*sin(pos)) + 0.2,0,180,12);
// 	gpu_pop_state()
// }
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