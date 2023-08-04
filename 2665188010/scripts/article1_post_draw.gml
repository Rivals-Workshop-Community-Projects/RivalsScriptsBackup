//article1_post_draw

if state == 0{
    draw_sprite_ext(sprite_get("arrow"),0,x-1,y-45,2,2,0,player_color,1);
}

if player_id.object_index == oTestPlayer exit;
if state == 6 || state == 1 exit;

var offscreen = false;
var ind_index = 1;
var x_draw = x;
var y_draw = y;

//Check if offscreen
if (x-20 > view_get_xview()+view_get_wview()){//right
    offscreen = true;
    ind_index = 4;
}
else if (x+20 < view_get_xview()){//left
    offscreen = true;
    ind_index = 0;
}

if (y-20 > view_get_yview()+view_get_hview()-53){//bottom
    offscreen = true;
    if ind_index == 0 ind_index = 7;
    else if ind_index == 4 ind_index = 5;
    else ind_index = 6;
}
else if (y+20 < view_get_yview()){//top
    offscreen = true;
    if ind_index == 0 ind_index = 1;
    else if ind_index == 4 ind_index = 3;
    else ind_index = 2;
}

if offscreen{
    // Place indicator at edge of screen
    while (x_draw > view_get_xview()+view_get_wview()-34 )  x_draw -= 1;//right
    while (x_draw < view_get_xview()+34 )                   x_draw += 1;//left
    while (y_draw > view_get_yview()+view_get_hview()-86 )  y_draw -= 1;//bottom
    while (y_draw < view_get_yview()+32 )                   y_draw += 1;//top
    draw_sprite_ext(sprite_get("offscreen"),ind_index,x_draw,y_draw,2,2,0,player_color,1);
    draw_sprite_ext(sprite_get("offscreen"),8,x_draw,y_draw,2,2,0,c_white,1);
}