/*gpu_set_blendmode(bm_add);
draw_sprite(sprite_get("rock_overlay"), 0, x, y);

gpu_set_blendmode(bm_normal);


*/
enum ROCK{
    INIT,
    MOVE,
    DROP,
    IDLE_1,
    IDLE_2,
    RETURN
}
if(rock_state == ROCK.DROP){
    shader_end();
    draw_sprite(sprite_get("rock_overlay"), 0, x, y);
    /*
    phase = (get_gameplay_time()/30) mod (2*pi);
    position = abs(sin(glow_timer/glow_time))*0.4 + 0.6;
    //Blendmode
    var blend = gpu_get_blendmode();
    gpu_set_blendmode(bm_add);

    //Draw the glow
    var precision;
    precision = (position-0.5)*40;
    draw_glow(x, y+26, 60+(position*10), c_orange, c_maroon, position*image_alpha, precision);

    //Reset
    gpu_set_blendmode(blend);
    */
}

if(rock_state != ROCK.MOVE){
        
        
        // OFFSCREEN
        var offset = 38;
        var need_draw = false;
        
        var xv = view_get_xview();
        var wv = view_get_wview();
        var yv = view_get_yview();
        var hv = view_get_hview();
        var image = 0;
        
        x_draw = x;
        y_draw = y;
        
        // right
        if (x_draw > xv + wv)
        {
            while(x_draw > xv + wv - offset)
            {
                x_draw -= 1;
                
                need_draw = true;
            }
            
            image = 2;
        }
        
        // left
        if (x_draw < xv)
        {
            while(x_draw < xv + offset)
            {
                x_draw += 1;
                
                need_draw = true;
            }
            
            image = 6;
        }
        
        // bottom
        if (y_draw > yv + hv - offset * (image != 0)) // this weird thing means, if already offscreen, then bubble do not wait for the object to cross 0, but offset.
        {
            while(y_draw > yv + hv - offset)
            {
                y_draw -= 1;
                
                need_draw = true;
            }
            
            if (image > 0)
            {
                image += 4;
                image *= 0.5;
            }
            else
            {
                image = 4;
            }
        }
        
        // top
        if (y_draw < yv + offset * (image != 0))
        {
            while(y_draw < yv + offset)
            {
                y_draw += 1;
                
                need_draw = true;
            }
            if (image == 2)
            {
                image = 1;
            }
            if (image == 6)
            {
                image = 7;
            }
            //image = 0;
        }
        
        
         switch (player){
            case 1:
            	var sprite = sprite_get("offscreen_red");
            break;
            case 2:
            	var sprite = sprite_get("offscreen_blue");
            break;
            case 3:
                var sprite = sprite_get("offscreen_pink");
            break;
            case 4:
            	var sprite = sprite_get("offscreen_green");
            break;
        }
        
        
        
        if (need_draw)
        {
            draw_sprite(sprite,image,x_draw,y_draw);
            if(!player_id.can_rock or !player_id.can_move_rock){
                draw_sprite(sprite_get("rock_offstage"),0,x_draw,y_draw);
            } else {
                draw_sprite(sprite_get("rock_offstage"),0,x_draw,y_draw);
            }
        }

}

if((!player_id.can_rock or !player_id.can_move_rock) and (rock_state == ROCK.IDLE_1 or rock_state == ROCK.IDLE_2)){

    draw_sprite(sprite_get("rock_inactive"), image_index, x, y);
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