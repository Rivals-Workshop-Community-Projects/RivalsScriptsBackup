shader_start();

if flashbang > 0 {
    flashbang -- 
    suppress_stage_music( 0.2, 0.05 )
       if flashbang > 280 {
         draw_set_alpha(min(.8,(300-flashbang)/20));
           draw_rectangle_color(0,0,room_width,room_height,c_ltgray,c_ltgray,c_ltgray,c_ltgray,false);
       draw_set_alpha(1);  
       } else {
    	draw_set_alpha(min(.8,flashbang/30));
           draw_rectangle_color(0,0,room_width,room_height,c_ltgray,c_ltgray,c_ltgray,c_ltgray,false);
    	draw_set_alpha(1);
       }
}
 

shader_end() 

