shader_end()
if (player_id.heartDebug)
{
    //draw_set_alpha( sin( get_gameplay_time() / 10 ) 
    
    if (instance_exists(heartDetectedPlayer))
    {
        var heart_threshold, xx, yy, heartx, hearty;
        xx = clamp(x, heartDetectedPlayer.bbox_left, heartDetectedPlayer.bbox_right);
        yy = clamp(y, heartDetectedPlayer.bbox_top, heartDetectedPlayer.bbox_bottom);
        // diff = sqrt(sqr(xx-x) + sqr(yy-y))
        
        //val = [heartDetectedPlayer.x, heartDetectedPlayer.y - (heartDetectedPlayer.char_height * .5) ]
        //threshold = [10, 10];
        heart_threshold = [heartBreakRadius+10, 30];
        // xx = clamp(x, val[0] - threshold[0], val[0] + threshold[0])
        // yy = clamp(y, val[1] - threshold[1], val[1] + threshold[1])
        
        heartx = [x - heart_threshold[0], x + heart_threshold[0]]
        hearty = [y - heart_threshold[1], y + heart_threshold[1]]
        
        //heartShouldClose = findPoint(xx,yy,heartx[0],hearty[0],heartx[1],hearty[1]);
        
        var thing;
        thing = [clamp(xx,heartx[0],heartx[1]),clamp(yy,hearty[0],hearty[1])]
        
        var col = heartShouldClose ? c_lime : c_white;
        draw_line_width_color(thing[0],thing[1],xx,yy,3,col,col)
        //draw_rectangle_color(val[0] - threshold[0], val[1] - threshold[1], val[0] + threshold[0],val[1] + threshold[1],c_red,c_red,c_red,c_red,false)
        draw_rectangle_color(x - heart_threshold[0], y - heart_threshold[1], x + heart_threshold[0],y + heart_threshold[1],col,col,col,col,true)
        //draw_set_alpha( 1 )
    }
}