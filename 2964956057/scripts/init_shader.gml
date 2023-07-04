if "champ_color_array" not in self{
    champ_color_array = [ // each array is a nested array of rgbs for each slot of the alt
        [ // seesaw
            [251, 234, 212],
            [60, 164, 67],
            [181, 45, 65],
            [224, 216, 46],
            [80, 20, 29],
            [0, 0, 0],
            [0, 0, 0],
            [255, 255, 255]
        ], 
        [ // tenchu
            [255, 236, 212],
            [210, 144, 131],
            [72, 140, 32],
            [231, 248, 255],
            [255, 188, 225],
            [72, 140, 32],
            [72, 140, 32],
            [255, 255, 255]
        ]
    ]
}

if "custom_color_array" not in self{
    mouth_color = get_synced_var(player) % 10;
    righteye_color = ((get_synced_var(player) - mouth_color) / 10) % 10;
    lefteye_color = ((get_synced_var(player) - mouth_color - (righteye_color * 10)) / 100) % 10;
    soul_color = ((get_synced_var(player) - mouth_color - (righteye_color * 10) - (lefteye_color * 100)) / 1000) % 10;
    thorns_color = ((get_synced_var(player) - mouth_color - (righteye_color * 10) - (lefteye_color * 100) - (soul_color * 1000)) / 10000) % 10;
    stem_color = ((get_synced_var(player) - mouth_color - (righteye_color * 10) - (lefteye_color * 100) - (soul_color * 1000) - (thorns_color * 10000)) / 100000) % 10;
    petals_color = ((get_synced_var(player) - mouth_color - (righteye_color * 10) - (lefteye_color * 100) - (soul_color * 1000) - (thorns_color * 10000) - (stem_color * 100000)) / 1000000) % 100;
    face_color = ((get_synced_var(player) - mouth_color - (righteye_color * 10) - (lefteye_color * 100) - (soul_color * 1000) - (thorns_color * 10000) - (stem_color * 100000) - (petals_color * 1000000)) / 100000000) % 100;
    custom_color_array = [ // [[shade 1's rgbs], [shade 2's rgbs], shade 1's shading, shade 2's shading]
        [[255, 0, 0], [192, 0, 1], 1, 1], // rainbow, 0
        [[255, 255, 255], [192, 177, 177], 1, 1], // white, 1
        [[80, 80, 80], [48, 48, 48], 1, 0.2], // black, 2
        [[214, 113, 113], [158, 65, 87], 1, 1], // soft red, 3
        [[214, 121, 92], [158, 68, 58], 1, 1], // soft orange, 4
        [[214, 181, 92], [158, 116, 58], 1, 1], // soft yellow, 5
        [[56, 101, 55], [37, 69, 37], 1, 0.5], // soft green, 6
        [[127, 130, 196], [81, 84, 133], 1, 1], // soft blue, 7
        [[203, 156, 237], [143, 104, 174], 1, 1], // soft purple, 8
        [[237, 171, 234], [174, 125, 172], 1, 1], // soft pink, 9
        [[155, 155, 155], [124, 120, 120], 1, 1], // soft gray, 10 // this and below are only on face and petals
        [[104, 106, 120], [66, 68, 84], 1, 1], // soft black, 11
        [[110, 79, 52], [78, 56, 37], 1, 1], // soft brown, 12
        [[222, 199, 135], [176, 148, 102], 1, 1], // soft tan, 13
        [[255, 255, 229], [194, 186, 158], 1, 1], // soft cream, 14
        [[123, 198, 121], [74, 135, 72], 1, 1], // soft lime, 15
        [[110, 255, 255], [90, 192, 191], 1, 1], // soft cyan, 16
        [[222, 16, 16], [159, 0, 2], 1, 1], // red, 17
        [[255, 135, 0], [192, 115, 0], 1, 1], // orange, 18
        [[247, 229, 27], [184, 168, 6], 1, 1], // yellow, 19
        [[74, 198, 71], [41, 135, 38], 1, 1], // lime, 20
        [[9, 101, 7], [6, 69, 5], 1, 0.5], // green, 21
        [[0, 255, 255], [0, 192, 190], 1, 1], // cyan, 22
        [[71, 75, 196], [38, 42, 133], 1, 1], // blue, 23
        [[169, 78, 237], [117, 44, 174], 1, 1], // purple, 24
        [[237, 100, 230], [174, 60, 169], 1, 1], // pink, 25
        [[117, 117, 117], [84, 84, 84], 1, 0.2], // gray, 26
        [[110, 58, 13], [78, 40, 7], 1, 1], // brown, 27
        [[222, 180, 67], [176, 123, 37], 1, 1], // tan, 28
        [[173, 173, 156], [117, 113, 95], 1, 1], // cream, 29
    ]
}

//animate_portrait("_portrait_intro", 40, 6, "_portrait_idle", 20, 5);

if "battle_over" not in self {
    battle_over = 0;  
}

switch get_player_color(player){
    case 0:
        set_character_color_slot( 5, 0, 0, 0, 1 ); //Blue Eyes White Dragon
        set_character_color_slot( 6, 0, 0, 0, 1 ); //Red Eyes Black Dragon
        set_character_color_slot( 7, 255, 255, 255, 1 ); //Teeth
    break;
    case 2: case 14:
        set_character_color_shading(0, 0);
        set_character_color_shading(1, 0);
        set_character_color_shading(2, 0);
        set_character_color_shading(3, 0);
        set_character_color_shading(4, 0);
        set_character_color_shading(5, 0);
        set_character_color_shading(6, 0);
        set_character_color_shading(7, 0);
    break;
    case 20:
        set_character_color_shading(0, 2);
        set_character_color_shading(1, 2);
        set_character_color_shading(2, 2);
        set_character_color_shading(3, 2);
        set_character_color_shading(4, 1);
        set_character_color_shading(5, 1);
        set_character_color_shading(6, 1);
        set_character_color_shading(7, 1);
    break;
    case 22:
        set_character_color_shading(0, 1);
        set_character_color_shading(1, 1);
        set_character_color_shading(2, 1);
        set_character_color_shading(3, 1);
        set_character_color_shading(4, 1);
        set_character_color_shading(5, 1);
        set_character_color_shading(6, 1);
        set_character_color_shading(7, 1);
        if "champ_cur" not in self{
            champ_cur = get_synced_var(player);
        }
        for (var h = 0; h < 8; h++){
            set_character_color_slot(h, champ_color_array[champ_cur][h][0], champ_color_array[champ_cur][h][1], champ_color_array[champ_cur][h][2]);
        }
        set_synced_var(player, champ_cur);
    break;
    case 23:
        set_character_color_slot(0, custom_color_array[face_color][0][0], custom_color_array[face_color][0][1], custom_color_array[face_color][0][2]);
        set_character_color_slot(1, custom_color_array[petals_color][0][0], custom_color_array[petals_color][0][1], custom_color_array[petals_color][0][2]);
        set_character_color_slot(2, custom_color_array[stem_color][0][0], custom_color_array[stem_color][0][1], custom_color_array[stem_color][0][2]);
        set_character_color_slot(3, custom_color_array[thorns_color][0][0], custom_color_array[thorns_color][0][1], custom_color_array[thorns_color][0][2]);
        set_character_color_slot(4, custom_color_array[soul_color][0][0], custom_color_array[soul_color][0][1], custom_color_array[soul_color][0][2]);
        set_character_color_slot(5, custom_color_array[lefteye_color][0][0], custom_color_array[lefteye_color][0][1], custom_color_array[lefteye_color][0][2]);
        set_character_color_slot(6, custom_color_array[righteye_color][0][0], custom_color_array[righteye_color][0][1], custom_color_array[righteye_color][0][2]);
        set_character_color_slot(7, custom_color_array[mouth_color][0][0], custom_color_array[mouth_color][0][1], custom_color_array[mouth_color][0][2]);
    default:
        set_character_color_shading(0, 1);
        set_character_color_shading(1, 1);
        set_character_color_shading(2, 1);
        set_character_color_shading(3, 1);
        set_character_color_shading(4, 1);
        set_character_color_shading(5, 1);
        set_character_color_shading(6, 1);
        set_character_color_shading(7, 1);
    break;
}

if !("hue" in self) hue = 0;
if !("hue_offset" in self) hue_offset = 0;
if !("hue_speed" in self) hue_speed = 1;

// rainbow code
hue_offset = (hue_offset + hue_speed) % 255; //keeps hue_offset within the 0-255 range
 
color_rgb = make_color_rgb(240, 72, 72); //input rgb values here, uses rgb to create a gamemaker colour variable
hue = (color_get_hue(color_rgb) + hue_offset) % 255; //finds the hue and shifts it

if "attack" not in self{
    attack = 0;
}

if get_player_color(player) == 3 || get_player_color(player) >= 22 || (attack == 49 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window >= 2 && window <= 4){
//remember rivals starts with 0

    color_rgb = make_color_rgb(240, 72, 72);
    //make a gamemaker color variable using kirby's default color (body)
    hue2 = (color_get_hue(color_rgb) + hue) % 255;
    //shift that colour by Hue, make sure it also loops
    color_hsv = make_color_hsv(hue2, color_get_saturation(color_rgb), color_get_value(color_rgb));
    //make a gamemaker color variable using the new hue
    if get_player_color(player) == 3 || (attack == 49 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window >= 2 && window <= 4){
        set_character_color_slot(1, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
    }
    else if get_player_color(player) == 23{
        set_color_profile_slot(1, 0, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
        if face_color == 0{
            set_character_color_slot(0, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
        }
        if petals_color == 0{
            set_character_color_slot(1, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
        }
        if stem_color == 0{
            set_character_color_slot(2, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
        }
        if thorns_color == 0{
            set_character_color_slot(3, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
        }
        if soul_color == 0{
            set_character_color_slot(4, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
        }
        if lefteye_color == 0{
            set_character_color_slot(5, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
        }
        if righteye_color == 0{
            set_character_color_slot(6, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
        }
        if mouth_color == 0{
            set_character_color_slot(7, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
        }
    }
    //set the new color using rgb values from the gamemaker color
//remember rivals starts with 0
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