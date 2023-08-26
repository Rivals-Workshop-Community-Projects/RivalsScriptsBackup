//
if !instance_exists(other_player_id) exit;
if "roke_mark_id" in self && roke_mark > 0 && roke_lastmark == other_player_id {
    var mOffset = 0;
    var spr = 0;
    cur_spr = hurtbox_spr;
    if state == PS_CROUCH {
        cur_spr = crouchbox_spr;
    }
    /*
    draw_ellipse_color(
        x-(lengthdir_x((abs(sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*other_player_id.roke_mark_inc),180)),
        y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*other_player_id.roke_mark_inc),90),
        x-(lengthdir_x(abs((sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*other_player_id.roke_mark_inc),0)),
        y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*other_player_id.roke_mark_inc),270),
        c_red,
        c_red,
        true
        );*/
    
    var x_radius = (abs(sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*other_player_id.roke_mark_inc)
    var y_radius = (abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*other_player_id.roke_mark_inc)
    var vertical_center = y - (abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)
    var x1 = x-(lengthdir_x(x_radius,180))
    var y1 = vertical_center + lengthdir_y(y_radius,90)
    var x2 = x-(lengthdir_x(x_radius,0))
    var y2 = vertical_center + lengthdir_y(y_radius,270)
    
    var t = get_gameplay_time()%60
    var pw = 2;
    var pt = 20;
    var pulse_width = t < pt ? lerp(pw, 0, t/pt) : 0
    
    maskHeader();
    
    draw_ellipse_color(x1 - 2 + pulse_width,
        y1 + 2 - pulse_width,
        x2 + 2 - pulse_width,
        y2 - 2 + pulse_width,
        c_black, c_black, false);
    var rot = (get_gameplay_time()*2.5)%360;
    var inc = 360/3
    var hinc = 25;
    for (var i = 0; i < 360; i += inc) {
        var angle = rot+i
        
        draw_triangle_color(
            x, vertical_center, 
            x - lengthdir_x(x_radius+100, angle-hinc), 
            vertical_center - lengthdir_y(y_radius+100, angle-hinc), 
            x - lengthdir_x(y_radius+100, angle+hinc), 
            vertical_center - lengthdir_y(y_radius+100, angle+hinc), 
            c_black, c_black, c_black, false);
    }
    maskMidder();
    
    draw_ellipse_color(x1 + pulse_width,
        y1 - pulse_width,
        x2 - pulse_width,
        y2 + pulse_width,
        c_red,c_red, false);
        
    
    maskFooter();
    
    //draw_ellipse_color(x-(lengthdir_x((abs(sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*roke_mark_inc),180))-1,y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*roke_mark_inc),90)-1,x-(lengthdir_x(abs((sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*roke_mark_inc),0))+1,y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*roke_mark_inc),270)+1,c_red,c_red,true);

    
    
    
    
    
    with other_player_id {
        var mark_spr = [
            sprite_get("drone_startup"),
            sprite_get("drone")
            ];
    }
    var i = 0;
    repeat(roke_mark) {
        with roke_mark_id[| i] {
            shader_start();
            
        }
        spr = mark_spr[roke_mark_anim[| i][0]];
        draw_sprite_ext(spr,
        roke_mark_anim[| i][1],
        x+lengthdir_x((abs(sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*other_player_id.roke_mark_inc),(spawn_timer*2+mOffset)%360),
        y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*other_player_id.roke_mark_inc),(spawn_timer*2+mOffset)%360),
        1,
        1,
        //(spawn_timer*2+mOffset+90)%360,
        0,
        c_white,
        1);
        mOffset+=floor(360/(roke_mark));
        with roke_mark_id[| i++] shader_end();
    }
}

#define maskHeader()

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);



#define maskMidder()

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_inv_dest_alpha, bm_dest_alpha);
gpu_set_alphatestenable(true);



#define maskFooter()

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
