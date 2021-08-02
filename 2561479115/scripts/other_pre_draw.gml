//

if "roke_mark_id" in self && roke_mark > 0 && roke_lastmark == other_player_id {
    var mOffset = 0;
    var spr = 0;
    cur_spr = hurtbox_spr;
    if state == PS_CROUCH {
        cur_spr = crouchbox_spr;
    }
    draw_set_alpha(0.5);
    draw_ellipse_color(x-(lengthdir_x((abs(sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*other_player_id.roke_mark_inc),180)),y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*other_player_id.roke_mark_inc),90),x-(lengthdir_x(abs((sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*other_player_id.roke_mark_inc),0)),y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*other_player_id.roke_mark_inc),270),c_red,c_red,true);
    //draw_ellipse_color(x-(lengthdir_x((abs(sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*roke_mark_inc),180))-1,y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*roke_mark_inc),90)-1,x-(lengthdir_x(abs((sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*roke_mark_inc),0))+1,y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*roke_mark_inc),270)+1,c_red,c_red,true);
    draw_set_alpha(1);
    
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


