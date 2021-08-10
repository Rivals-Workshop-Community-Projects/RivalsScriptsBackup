// pre-draw

/*
if(justRespawned)
{
    //draw_sprite(sprite_get("plat"), floor(image_number*platTimer/(image_number * 4.5)), platX, platY);
    
    totalLength = 120;
    startFade = 80;
    
    alpha = 1;
    if(platTimer >= startFade)
        alpha = ease_quadIn(1, 0, platTimer-startFade, totalLength-startFade);
    
    draw_sprite_ext(sprite_get("plat"), floor(image_number*platTimer/(image_number * 5)), platX, platY,1, 1, 0, c_white, alpha);
    
    
    platTimer++;
    if(platTimer >= totalLength)
        justRespawned = false;
}*/




shader_start();
if (instance_exists(obj_article1))
{
    with (obj_article1) 
    {
        if(player_id == other && !self.drawInfront)
        {    
            if(self.newFrame == -99)
                draw_sprite_ext(self.spr, self.frame, self.x, self.y, self.spr_dir, 1, 0, c_white, alpha );
            else
                draw_sprite_ext(self.spr, self.newFrame, self.x, self.y, self.spr_dir, 1, 0, c_white, alpha );

        }
    }
}            
shader_end();

