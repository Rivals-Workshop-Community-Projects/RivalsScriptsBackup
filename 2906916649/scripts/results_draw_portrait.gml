//results_draw_portrait.gml
//draws sprites over the results but under everything that's in results_post_draw.gml

if get_player_damage( player ) = 0 && get_player_stocks( player ) > 0 {
    animate_portrait("_portrait_perfect", 0, 6, "_portrait_perfect", 0, 5);
    
    
} else if get_player_damage( player ) % 2 == 0 {
    animate_portrait("_portrait_2", 0, 6, "_portrait_2", 0, 5);
    
}else  {
    animate_portrait("_portrait_1", 0, 6, "_portrait_1", 0, 5);
    
}


#define animate_portrait(SpriteName, StartUp, AnimSpeed, IdleSpriteName, IdleStartUp, IdleSpeed)
if (object_index == asset_get("draw_result_screen"))
{
    ///PARAMETERS:
    //SpriteName - [string] the name of the sprite
    //StartUp - the frames before the animation starts
    //AnimSpeed - frames per second the animation will go at
    //IdleSpriteName - [string] the name of the idle animation sprite
    //IdleStartUp - the frames before the animation transitions 
    //IdleSpeed - frames per second the idle animation will go at
    
    //initializing variables
    if !("stime" in self)
    {
        stime = -StartUp;
        frame = 0;
        on_idle = 0;
        itime = -IdleStartUp;
        AnimSpeed = clamp(AnimSpeed, 0, 6000);
        sprite_change_offset(SpriteName, 0, 0);
        sprite_change_offset(IdleSpriteName, 0, 0);
    }
    
    //set the sprite depending if it's on idle or not
    if (on_idle == 0)
    {
        set_victory_portrait(sprite_get(SpriteName));
    }
    else if (itime >= 0)
    {
        set_victory_portrait(sprite_get(IdleSpriteName));
    }
    
    var h = 350; //the portrait height
    
    //store animation frames of each sprite
    AnimFrames = sprite_get_height(sprite_get(SpriteName)) / h;
    IdleFrames = sprite_get_height(sprite_get(IdleSpriteName)) / h;
    
    //set the image depending if it's on idle or not
    if (!on_idle)
    {
        stime ++;
        if (stime >= 0) //when the value is negative it means that it'll stay in the first frame
        {
            if (stime % floor(60 / AnimSpeed) == 0)
            {
                if (frame > AnimFrames - 2)
                {
                    on_idle = 1;
                }
                else
                {
                    sprite_change_offset(SpriteName, 0, sprite_get_yoffset(sprite_get(SpriteName)) + h);
                    frame ++
                }
            }
        }
    }
    else if (IdleSpeed != 0)
    {
        itime ++
        if (itime >= 0) //when the value is negative it means that it'll stay in the last frame of the intro animation
        {
            if (itime % floor(60 / IdleSpeed) == 0)
            {
                sprite_change_offset(IdleSpriteName, 0, (sprite_get_yoffset(sprite_get(IdleSpriteName)) + h) % (IdleFrames * h));
            }
        }
    }
}