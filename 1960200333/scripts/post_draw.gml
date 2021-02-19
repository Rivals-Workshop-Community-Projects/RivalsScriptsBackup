//crash prevention line

shader_start();
if temperature < temperature_max {
    draw_sprite_ext(sprite_get("fryhud_charmeter"),0,x-20,y+10,1,1,0,c_white,.7); //empty meter
    
    draw_sprite_part_ext(sprite_get("fryhud_charmeter"),1,0,0,40-hud_yoffset,50,x-20,y+10,1,1,c_white,1); //full meter
    
    draw_debug_text(x-6, y+26, string(temperature)); //temperature number
}
shader_end();

