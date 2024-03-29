//articleX_update - runs every frame the article exists. Template by Muno

/*STATE LIST

- 0 Idle
- 1 Attacking
- 2 Dying
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9

*/

x = round(x);
y = round(y);

if (state == 0){ //Idle


    if (free)
    {
        if (player_id.state = PS_ATTACK_AIR)
        {
            hsp = round(hsp + player_id.hsp * 0.02);
        }

        if (hsp > 10)
        {
            hsp = 10;
        }
        else if (hsp < -10)
        {
            hsp = -10;
        }

        if (random_func( floor(hsp) , 10, true) > 8)
        {
            spawn_hit_fx(x + (random_func(3, 30, true)),y, player_id.bubble);
        }

        if (state_timer > 3)
        {
            if ( (state_timer mod 5) == 0)
            {
                    temp_water_hitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
            }        
            else if ("temp_water_hitbox" in self)
            {
                //temp_water_hitbox.x = x;
                //temp_water_hitbox.y = y;
            }
        }
    }

    if (state_timer > 150)
    {
        setState(9);
    }
    
    if (!free)
    {


        setState(1);
        hsp = 0;
        vsp = 0;
    }
}

if (state == 1){ //Attack
{
    if (state_timer = 1)
    {
        move_snap(1, 16);
        spawn_hit_fx(x,y+3,player_id.watersplash);
        spawn_hit_fx(x,y+3,player_id.initialsplash);
        //sound_play(sound_get("splash"));
    }
    if (state_timer = 15)
    {
        setState(2);
        
    }
}
}

if (state == 2)
{
    if (state_timer = 1)
    {
        

            max_covered = check_spot(size, obj_article2);
            min_covered = check_spot(-size, obj_article2);

        if (max_covered = 0 || min_covered = 0) 
        {
           
            setState(3);
        }
        else
        {
            setState(9);
        }

    }
    
}




if (state == 3)
{

    move_snap(30, 1);
    setState(9);
    if (69 = 420)
    {

    if (state_timer = 20)
    {
        x = round(x);
        y = round(y);
        if ( collision_line(x, y, x - 1000, y, obj_article2, false, true) != noone && collision_line(x, y, x - 1000, y, obj_article2, false, true).player_id = player_id)
        {
            min_connection = collision_line(x, y, x - 1000, y, obj_article2, false, true);

            distance = x - min_connection.x;
            player_id.distance = distance;
            offset = frac(distance/size) * size;
            player_id.offset = offset;

            min_connection.x -= (size - offset);

            distance = x - min_connection.x;
            //player_id.distance = distance;
            difference = distance / size;
            player_id.difference = difference;

            i = 0;
        }
    }

    if (state_timer > 21)
    {
         x = round(x);
        y = round(y);
        if ("i" in self)
        {

            if (i < (difference + 1))
            {
                    temp_id = instance_create(x - (size * i), y,  "obj_article3");
                    temp_id.self_id = temp_id;
                    temp_id.death_timer = player_id.death_amount;
                    i += 1;
            }
            else
            {
                setState(9);
            }
        }
        else
        {
            setState(9);
        }
    }

    }

}



if (state = 9)
{
    if (state_timer > 16)
    {
                        temp_id = instance_create(x, y,  "obj_article3");
                    temp_id.self_id = temp_id;
                    temp_id.death_timer = player_id.death_amount;
    instance_destroy();
    exit; //Stops execution of the script
    }
}
if (state = 68)
{
            while (true)
        {
            connection_max = instance_place(x + _distance, y, obj_article2) 
            
            if (connection_max != noone && connection_max.player_id = player_id)
            {
                _distance += 30;
            }
            else
            {
                temp_max_x = connection_max.x;
                break;
            }
        }

            while (true)
        {
            connection_min = instance_place(x - _distance, y, obj_article2) 
            
            if (connection_min != noone && connection_min.player_id = player_id)
            {
                _distance += 30;
            }
            else
            {
                temp_min_x = connection_min.x;
                break;
            }
        }

}

if (state == 69)
{ 
    if (self_id = player_id.splash_count[self_puddle])
    {
        player_id.temp_puddle_y = y;
        with(player_id)
        {
        temp_puddle_max = instance_create(temp_max_x[puddle_i], temp_puddle_y, "obj_article3");
        temp_puddle_max.self_id = max_x_puddle[puddle_i];
        temp_puddle_max.death_timer = player_id.death_amount;
        temp_puddle_min = instance_create(temp_max_x[puddle_i], temp_puddle_y, "obj_article3");
        temp_puddle_min.self_id = max_x_puddle[puddle_i];
        temp_puddle_min.death_timer = player_id.death_amount;

        }
        instance_destroy();
        exit; //Stops execution of the script
    }
    else
    {
    instance_destroy();
    exit; //Stops execution of the script
    }
}

//more states can go here

//Sprite and animation handling

//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here
if !hitstop{
    switch(anim_type[state]){
        case 0:
            var frames = 9; //# of frames in animation
            var frame_dur = 4; //duration of each frame

            if (69 = 420)
            {
            if ((state_timer mod 5) == 0)
            {
            image_index = random_func(1, 4, true);
            }
            }

            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
        case 1:
            var frames = 9;
            var frame_dur = 3;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
    }
}

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state] || mask_index != mask[state])
{
    sprite_index = sprite[state];
    mask_index = mask[state];
}

//Make time progress
if !hitstop{
    state_timer++;
}


if (temp_max_x != noone && temp_min_x != noone)
{
player_id.temp_min_x = temp_min_x;
player_id.temp_max_x = temp_max_x;
}

exist_timer++;


#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;


#define check_spot(spot_distance, thing) //returns true if something is touched

    temp_connection = instance_place( (x + spot_distance ), y, thing); 

            if (temp_connection != noone && temp_connection.player_id = player_id && temp_connection != self_id)
            {
                return true;
            }
            else
            {
                return false;
            }