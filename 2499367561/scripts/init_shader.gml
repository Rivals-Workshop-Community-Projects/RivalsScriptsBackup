animate_portrait("_portrait_intro", 40, 6, "_portrait_idle", 1, 4);

if (get_player_color(player) == 20){
    switch arcadeswitch{
        case 1:
        set_character_color_slot( 2, arcader1l, arcadeg1l, arcadeb1l);
        set_character_color_slot( 3, arcader1d, arcadeg1d, arcadeb1d);
        break;
        case 2:
        set_character_color_slot( 2, arcader2l, arcadeg2l, arcadeb2l);
        set_character_color_slot( 3, arcader2d, arcadeg2d, arcadeb2d);
        break;
        case 3:
        set_character_color_slot( 2, arcader3l, arcadeg3l, arcadeb3l);
        set_character_color_slot( 3, arcader3d, arcadeg3d, arcadeb3d);
        break;
}
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

