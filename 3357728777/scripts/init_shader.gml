//#region Local Variables
//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);
//#endregion

switch (alt_cur) {
    case 7:
        for(i = 0; i <= 7; i++){
            set_character_color_shading(i, 0);
        }
    break;
    case 20:
        set_character_color_shading(0, 0.4);
    break;
    case 27:
        set_character_color_shading(0, 0.6);
    break;
    
}



animate_portrait("_portrait_intro", 60, 9, "_portrait_idle", 40, 7);

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