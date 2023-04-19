//results_draw_portrait.gml

// Put this at the top of the scrpt

// Synced Variable Stuff -Should run to reset these valus on game load
/* Synced Variable should account for these. We have 32 bits to work with.
1. Color Shift - 2 bits - Off / Extra 1 / Extra 2
2. Dino's button - Should Switch - 1 bit
3. Results portrait - Awesome -  1 bit
*/

//This function takes the bit lengths you put in the previous function, in the same order, and outputs an array with the values you put in (assuming you put in the correct bit lengths), also in the same order.
//split_var = split_synced_var(bit_length_1, bit_length_2...);
split_var = split_synced_var(2,1,1);

color_shift = split_var[0];
should_switch = split_var[1]; // Swap this name to your other button. Also swap it in CSS update
awesome = split_var[2] // swap this to Rick's result variable. Also swat it in CSS update

// Everything else below

//Define section should be at the bottom

//draws sprites over the results but under everything that's in results_post_draw.gml

if (awesome) {
    animate_portrait("_portrait_Based_1", 0, 5, "_portrait_Based_1", 0, 5);
}  else{
    animate_portrait("_portrait_1", 0, 0, "_portrait_1", 0, 0);
    
}
 /*   
} else if get_player_damage( player ) % 2 == 0 {
    animate_portrait("_portrait_2", 0, 6, "_portrait_2", 0, 5);
    
}else  {
    animate_portrait("_portrait_1", 0, 6, "_portrait_1", 0, 5);
    
}

*/
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

#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
//print(chunk_arr);
return chunk_arr;