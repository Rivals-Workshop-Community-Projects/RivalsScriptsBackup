
shader_start();

if(phone_attacking){
    if(attack == AT_FSTRONG && (window == 1 && window_timer > 1 || window == 2)){
        draw_sprite_ext(peach_sprite,0,x-45*spr_dir,y-45,spr_dir,1,0,-1,1);
    }
    if(attack == AT_DSTRONG && image_index < 11){
        draw_sprite_ext(sprite_get("dstrong_sign"),image_index,x+26*spr_dir,y,1,1,0,-1,1);
    }
    if(attack == AT_FSPECIAL){
        if(window == 2 || window == 3 || window == 4 && window_timer < 6){
            var sprite = (alt == 15 || alt == 20)?sprite_get("planet"):meatball_sprite;
            if(meatball_fill < .4)draw_sprite_ext(sprite,0,x-25*spr_dir,y-10,1+meatball_fill,1+meatball_fill,meatball_angle,c_white,1);
            if(meatball_fill >= .4 && meatball_fill < .8)draw_sprite_ext(sprite,1,x-25*spr_dir,y-15,.8+meatball_fill/2,.8+meatball_fill/2,meatball_angle,c_white,1);
            if(meatball_fill >= .8 && meatball_fill < 1.2)draw_sprite_ext(sprite,2,x-25*spr_dir,y-20,.5+meatball_fill/2,.5+meatball_fill/2,meatball_angle,c_white,1);
            if(meatball_fill >= 1.2)draw_sprite_ext(sprite,3,x-25*spr_dir,y-22,.24+meatball_fill/2,.24+meatball_fill/2,meatball_angle,c_white,1);
        }
    }    
}

shader_end();