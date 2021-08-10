//post-draw

//shader_start();
//draw_sprite_ext(sprite_get("idle"), 0, x, y+5, 1, 1, 0, c_white, 0.87);
//draw_sprite_ext(sprite_index, 0, x, y+5, 1, 1, 0, c_white, 0.87);
//shader_end();

//draw_debug_text(x, y, "test");


/*
shader_start();

//draw_sprite_ext(sprite_index, 0, x, y+100, 1, 1, 0, c_white, 0.87);

//https://xorshaders.weebly.com/tutorials/color-shaders-3

//... cant run game maker shaders

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor = vec4( vec3(1.0) - Color.rgb, Color.a);
}

shader_end();
*/


if(state == PS_PARRY) //PS_PARRY_START)
{
    //draw_sprite(sprite_get("parryOverlay"), floor(image_number*state_timer/(image_number * 4.5)), x, y);
    //draw_sprite_ext( sprite, subimg, x, y, xscale, yscale, rot, colour, alpha );
    
    if(canAttack)
        draw_sprite_ext(sprite_get("parryOverlay"), floor(image_number*state_timer/(image_number * 5)), x, y, spr_dir, 1,0,c_white ,1);
    else
        draw_sprite_ext(sprite_get("parrySkinnyOverlay"), floor(image_number*state_timer/(image_number * 5)), x, y, spr_dir, 1,0,c_white ,1);
}
//print_debug("d");
//draw_debug_text(x,y, "dddddddddddddddd");



if(state == PS_RESPAWN)
{
    //draw_sprite(sprite_get("plat"), 0, x, y);
    
    draw_sprite_ext(sprite_get("plat"), floor(image_number*platTimer/(image_number * 5)), platX, platY,1, 1, 0, c_white, 1);
    platTimer++;
}




shader_start();
if (instance_exists(obj_article1))
{
    with (obj_article1) 
    {
        if(player_id == other && self.drawInfront)
        {    
            if(self.newFrame == -99)
                draw_sprite_ext(self.spr, self.frame, self.x, self.y, self.spr_dir, 1, 0, c_white, alpha );
            else
                draw_sprite_ext(self.spr, self.newFrame, self.x, self.y, self.spr_dir, 1, 0, c_white, alpha );

        }
    }
}            
shader_end();

