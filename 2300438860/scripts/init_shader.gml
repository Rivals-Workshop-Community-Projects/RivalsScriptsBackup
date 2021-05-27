///

if get_player_color(player) = 13 && "color_hsv" in self{
    set_character_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_article_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    
}



if "attackbar" in self {
    if  attackbar != 0 {
    set_character_color_slot( 1, 255, 255, 255 ); //Hair n leg
    set_character_color_slot( 2, 16, 16, 16 ); //Green shirt
    set_character_color_slot( 3, 255, 255, 255 ); //Yellow shirt
    set_character_color_slot( 4, 255, 255, 255 ); //Skin
    set_character_color_slot( 5, 255, 255, 255 ); //weird blush
    set_character_color_slot( 6, 255, 255, 255 ); //Unessessary eyes
    set_character_color_slot( 7, 225, 225, 225 ); //unnamed color row
    }
}





animate_portrait("_portrait_intro", 48, 6, "_portrait_idle", 20, 5);

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
        stime = 0
        frame = 0;
        on_idle = 0;
        itime = 30
        AnimSpeed = 30
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
        
        if stime % 20 == 0 {
	 	sound_play(sound_get("click"),false,noone,(30 - stime/10)/30, 0.9 + random_func(1,4,true)/10,);
	 	 sound_play(sound_get("nspecen"),false,noone,(30 - stime/10)/30, 0.9 + random_func(1,4,true)/10);
        }
        
        if stime % 13 == 0 {
	 	sound_play(sound_get("click"),false,noone,(30 - stime/10)/30, 0.9 + random_func(1,4,true)/10);	
	 	 sound_play(sound_get("nspecdis"),false,noone,(30 - stime/10)/30, 0.9 + random_func(1,4,true)/10);
        }
        
     
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