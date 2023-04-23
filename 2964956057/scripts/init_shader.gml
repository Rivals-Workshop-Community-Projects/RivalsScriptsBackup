//animate_portrait("_portrait_intro", 40, 6, "_portrait_idle", 20, 5);

if "battle_over" not in self {
    battle_over = 0;  
}

if get_player_color(player) == 0{
    set_character_color_slot( 5, 0, 0, 0, 1 ); //Blue Eyes White Dragon
    set_character_color_slot( 6, 0, 0, 0, 1 ); //Red Eyes Black Dragon
    set_character_color_slot( 7, 255, 255, 255, 1 ); //Teeth
}

if get_player_color(player) == 14 || get_player_color(player) == 2{
    set_character_color_shading(0, 0);
    set_character_color_shading(1, 0);
    set_character_color_shading(2, 0);
    set_character_color_shading(3, 0);
    set_character_color_shading(4, 0);
    set_character_color_shading(5, 0);
    set_character_color_shading(6, 0);
    set_character_color_shading(7, 0);
}
else if get_player_color(player) == 20{
    set_character_color_shading(0, 2);
    set_character_color_shading(1, 2);
    set_character_color_shading(2, 2);
    set_character_color_shading(3, 2);
    set_character_color_shading(4, 1);
    set_character_color_shading(5, 1);
    set_character_color_shading(6, 1);
    set_character_color_shading(7, 1);
}
else{
    set_character_color_shading(0, 1);
    set_character_color_shading(1, 1);
    set_character_color_shading(2, 1);
    set_character_color_shading(3, 1);
    set_character_color_shading(4, 1);
    set_character_color_shading(5, 1);
    set_character_color_shading(6, 1);
    set_character_color_shading(7, 1);
}

if !("hue" in self) hue = 0;
if !("hue_offset" in self) hue_offset = 0;
if !("hue_speed" in self) hue_speed = 1;

// rainbow code
hue_offset = (hue_offset + hue_speed) % 255; //keeps hue_offset within the 0-255 range
 
color_rgb = make_color_rgb( 224, 15, 0 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue = (color_get_hue(color_rgb) + hue_offset) % 255; //finds the hue and shifts it

if get_player_color(player) = 3 || (attack == 49 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window >= 2 && window <= 4){
//remember rivals starts with 0

    color_rgb = make_color_rgb(240, 72, 72);
    //make a gamemaker color variable using kirby's default color (body)
    hue2 = (color_get_hue(color_rgb) + hue) % 255;
    //shift that colour by Hue, make sure it also loops
    color_hsv = make_color_hsv(hue2, color_get_saturation(color_rgb), color_get_value(color_rgb)); 
    //make a gamemaker color variable using the new hue
    set_color_profile_slot(3, 1, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
    //set the new color using rgb values from the gamemaker color
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