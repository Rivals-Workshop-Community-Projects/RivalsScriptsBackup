/*
with obj_article2 {
    draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,true);
    draw_circle_color(x+center[0],y+center[1],radius,c_green,c_green,true);
}
*/
/*
with obj_article1 {
    
    draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,true);
}
draw_set_alpha(0.5);
draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_green,c_green,c_green,c_green,true);
draw_set_alpha(1);
draw_debug_text(x,y,`bounding box size: ${abs(bbox_left-bbox_right)}, ${abs(bbox_top-bbox_bottom)}`)
*/
//draw_debug_text(x,y-20,`bounding box offset: ${abs(bbox_left-x)}, ${abs(bbox_top-y)}`)

//draw_debug_text(x,y,string(ds_list_size(particles)));
//draw_debug_text(x,y+20,string(particles[|0]));