//draw_hud

user_event(11); //muno phoneee

#define dspecial_draw()
if ("dspecial_active" in self and dspecial_active)
{
    draw_rectangle_color(temp_x,temp_y-60,temp_x+100,temp_y-5,c_ltgray,c_ltgray,c_ltgray,c_ltgray,false)
    draw_rectangle_color(temp_x,temp_y-60,temp_x+100,temp_y-5,c_black,c_black,c_black,c_black,true)
    draw_rectangle_color(temp_x+1,temp_y-59,temp_x+99,temp_y-4,c_black,c_black,c_black,c_black,true)
    
    //text
    for (var i = 0; i < 4; i+=1)
    {
        draw_debug_text(temp_x+4,temp_y-58+(i*14),string(selected_moveset[i]))
    }
}

