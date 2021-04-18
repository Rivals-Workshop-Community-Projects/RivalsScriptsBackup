//article_platform_pre_draw
// Geyser



switch(state)
{
    case 1:
        
        // OFFSCREEN
        var offset = 38;
        var need_draw = false;
        
        var xv = view_get_xview();
        var wv = view_get_wview();
        var yv = view_get_yview();
        var hv = view_get_hview();
        var image = 0;
        
        x_draw = x;
        y_draw = y;
        
        // right
        if (x_draw > xv + wv)
        {
            while(x_draw > xv + wv - offset)
            {
                x_draw -= 1;
                
                need_draw = true;
            }
            
            image = 2;
        }
        
        // left
        if (x_draw < xv)
        {
            while(x_draw < xv + offset)
            {
                x_draw += 1;
                
                need_draw = true;
            }
            
            image = 6;
        }
        
        // bottom
        if (y_draw > yv + hv - offset * (image != 0)) // this weird thing means, if already offscreen, then bubble do not wait for the object to cross 0, but offset.
        {
            while(y_draw > yv + hv - offset)
            {
                y_draw -= 1;
                
                need_draw = true;
            }
            
            if (image > 0)
            {
                image += 4;
                image *= 0.5;
            }
            else
            {
                image = 4;
            }
        }
        
        // top
        if (y_draw < yv + offset * (image != 0))
        {
            while(y_draw < yv + offset)
            {
                y_draw += 1;
                
                need_draw = true;
            }
            if (image == 2)
            {
                image = 1;
            }
            if (image == 6)
            {
                image = 7;
            }
            //image = 0;
        }
        
        
         switch (player){
            case 1:
            	var sprite = sprite_get("offscreen_red");
            break;
            case 2:
            	var sprite = sprite_get("offscreen_blue");
            break;
            case 3:
                var sprite = sprite_get("offscreen_pink");
            break;
            case 4:
            	var sprite = sprite_get("offscreen_green");
            break;
        }
        
        
        
        if (need_draw)
        {
            draw_sprite(sprite,image,x_draw,y_draw);
            draw_sprite(sprite_get("geyicon"),0,x_draw,y_draw);
        }
        break;

}


