//FIELD SYSTEM ARTICLE1_POST_DRAW.GML (by Delta Parallax)
//AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
//This handles all of the drawing for the field and the outlines for the player.

//I have no idea how any of this code works. Please don't ask me. -Trail Mix

//Calculate glow stats.
var mid, pulse, alpha;
mid = (fvars.circle_glow_midpoints[0]+(lerp(0, fvars.circle_glow_midpoints[1]-fvars.circle_glow_midpoints[0], (shown_radius-fvars.bounds[0])/(fvars.bounds[1]-fvars.bounds[0]) ) ));
pulse = (fvars.circle_glow_amplitude*sin(state_timer*fvars.circle_glow_speed));
alpha = mid + pulse;

//Push the state of the gpu.
gpu_push_state();
//Use additive blending if on.
gpu_set_blendmode(fvars.uses_additive_blending ? bm_add : bm_normal);
draw_polygon(x,y,shown_radius+2,shown_radius,fvars.circle_color,fvars.circle_color,0,alpha,state_timer*2,fvars.circle_glow_numsides);
//Pop the state.
gpu_pop_state();

//Find the circumference of the circle we need to draw and see how many parts we need to draw in total.
var circum = 2*pi*shown_radius
var b = circum/sprite_get_height(field_spr);

//Draw everything.
for (var i = 0; i < b/2; i+=fvars.circle_part_increment)
{
    //Piece two halves of the circle together since doing one full loop looks hella weird.
    var g = (rand/i) + (state_timer/20);
    
    var xx, yy;
    xx = lengthdir_x(shown_radius, 360*(i / b));
    yy = lengthdir_y(shown_radius, 360*(i / b));
    var angle = point_direction(x,y,x+xx,y+yy)-90;
    
    draw_sprite_ext(field_spr,g+i,x+xx,y+yy,1,1,angle,-1,1)
    
    xx = lengthdir_x(shown_radius, (360*(i / b)) + 180);
    yy = lengthdir_y(shown_radius, (360*(i / b)) + 180);
    angle = point_direction(x,y,x+xx,y+yy)-90;
    draw_sprite_ext(field_spr,g+i,x+xx,y+yy,1,1,angle,-1,1)

}

//Outline stuffffffff
with player_id
{
    shader_end()
    gpu_set_fog(1,player_field_vars.circle_color,1,0)
    var o = -2;
    var p = -2;
    
    if player_field_vars.in_field
    {
        repeat (2)
        {
            repeat(2)
            {
                draw_sprite_ext(sprite_index,image_index,x+o,y+p,spr_dir*2,image_yscale*2,spr_angle,-1,1);
                p+=4;
            }
            o+=4;
            p=-2;
        }
    }
    gpu_set_fog(0,c_white,0,0)
}

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