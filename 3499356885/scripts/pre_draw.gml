//Draw Yoshi Egg
with oPlayer{
    
    if is_yoshi_egged && which_yoshi_egged == other{
        with other{
            
            var egged_time = other.yoshi_egged_timer;
            var egg_image = 3*((egged_time)/(other.yoshi_egged_timer_max));
            var egged_height = other.char_height;
            var egged_size;
            var egged_rot = 16*sin(degtorad(egged_time*6));
            
            //Egg Expands on Creation
            if egged_time <= 8{
                egged_size = ease_sineOut(0, round(egged_height/26 + 0.25), egged_time, 8);
            }
            else egged_size = egged_height/26+0.25;
            
            //Draw Compat Egg
            if other.yoshi_egg_sprite != -1{
                with other{
                    shader_start();
                    draw_sprite_ext(yoshi_egg_sprite, egg_image, x, y - (egged_height/4)+4, egged_size, egged_size, egged_rot, c_white, 1);
                    shader_end();
                }
            }
            
            //Draw Default Egg
            else{
                shader_start();
                draw_sprite_ext(sprite_get("egg_player"), egg_image, other.x, other.y - (egged_height/4)+4, egged_size, egged_size, egged_rot, c_white, 1);
                shader_end();
            }
            
        }
    }
}