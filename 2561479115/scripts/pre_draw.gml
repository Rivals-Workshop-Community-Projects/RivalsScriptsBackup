//

with obj_article1 {
    if player_id == other.id {
        for (var _i = 0; _i < ds_list_size(position_table); _i++) {
            var frame = 0;
            with player_id {
                var window_length = get_window_value(AT_USPECIAL,2,AG_WINDOW_LENGTH);
                var window_frames = get_window_value(AT_USPECIAL,2,AG_WINDOW_ANIM_FRAMES);
                var window_frame_start = get_window_value(AT_USPECIAL,2,AG_WINDOW_ANIM_FRAME_START);
                frame = -1 + window_frame_start + (other.position_table[|_i][2]/window_length)*window_frames;
            }
            if cur_target < _i && _i % 2 == 0
            //draw_rectangle_color(position_table[|_i][0]-2,position_table[|_i][1]-2-30,position_table[|_i][0]+1,position_table[|_i][1]+1-30,c_orange,c_orange,c_orange,c_orange,false);
            draw_sprite_ext(sprite_get("uspecial_aa"),frame, position_table[|_i][0],position_table[|_i][1],spr_dir,1,0,other.temp_ecolor[position_table[|_i][3]],0.5);
            
        }
    }
}

if rokesha_line {
    draw_set_halign(fa_center);
    draw_text_plus(x,y-120,target_text[3],1);
}

if "roke_mark_id" in self && roke_mark > 0 && roke_lastmark == self {
    var mOffset = 0;
    var spr = 0;
    cur_spr = hurtbox_spr;
    if state == PS_CROUCH {
        cur_spr = crouchbox_spr;
    }
    draw_set_alpha(0.5);
    draw_ellipse_color(x-(lengthdir_x((abs(sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*roke_mark_inc),180)),y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*roke_mark_inc),90),x-(lengthdir_x(abs((sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*roke_mark_inc),0)),y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*roke_mark_inc),270),c_red,c_red,true);
    //draw_ellipse_color(x-(lengthdir_x((abs(sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*roke_mark_inc),180))-1,y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*roke_mark_inc),90)-1,x-(lengthdir_x(abs((sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*roke_mark_inc),0))+1,y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*roke_mark_inc),270)+1,c_red,c_red,true);
    draw_set_alpha(1);
    var mark_spr = [
        sprite_get("drone_startup"),
        sprite_get("drone")
    ];
    var i = 0;
    repeat(roke_mark) {
        with roke_mark_id[| i] {
            shader_start();
            
        }
        spr = mark_spr[roke_mark_anim[| i][0]];
        draw_sprite_ext(spr,
        roke_mark_anim[| i][1],
        x+lengthdir_x((abs(sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*roke_mark_inc),(spawn_timer*2+mOffset)%360),
        y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*roke_mark_inc),(spawn_timer*2+mOffset)%360),
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



#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);