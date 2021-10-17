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

//Sprite and animation handling

//Make time progress
if !hitstop{
    state_timer++;
}

//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here
if !hitstop{
    switch(anim_type[state]){
        case 8:
            var frames = 7;
            var frame_dur = 3;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;    
    }
}


//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}



if (state == 0){ //Dissapear Check

    if (place_meeting(x,y+8,player_id) == noone)
    {
                instance_destroy();
            exit; //Stops execution of the script
    }
    else if (collision_line(x, y, x + 5, y, obj_article3, false, true) != noone || collision_line(x, y, x - 5, y, obj_article3, false, true) != noone)
    {
                       instance_destroy();
            exit; //Stops execution of the script
    }
    else
    {
        setState(1);
    }

}

if (state == 1 || state = 5){ //Attack

    if (state_timer = 1)
    {
        rechecking = 0;
    }


    if (place_meeting(x,y,player_id) && player_id.spark = 1)
    {
        setState(8);
    }

    if ( ( place_meeting(x,y,player_id)  || place_meeting(x+40,y,player_id) || place_meeting(x-40,y,player_id) ) && player_id.attack = AT_USPECIAL && player_id.window = 2 && player_id.hsp = 0)
    {
        marked_for_electricity = 1;
    }
    else if (marked_for_electricity)
    {
        setState(8);
    }
    


    slipped = instance_place(x, y, oPlayer);

    if (slipped != noone && slipped != player_id)
    {
        with(slipped)
        {
            if ("one_time_slip" in self && one_time_slip != noone)
            {
                dash_speed = 15;
                walk_speed = 10;		// 3    -  4.5
                walk_accel = 3;		// 0.2  -  0.5
            }
            else
            {
                if (dash_speed != 15)
                {
                other.old_dash_speed = dash_speed;
                other.old_walk_speed = walk_speed;
                other.old_walk_accel = walk_accel;
                }
                one_time_slip = 0;
                other.old_slipped = other.slipped;
            }
            
            
        }
    }

    if (slipped != old_slipped && old_slipped != noone)
    {
        old_slipped.dash_speed = old_dash_speed;
        old_slipped.walk_speed = old_walk_speed;
        old_slipped.walk_accel = old_walk_accel
        old_slipped.one_time_slip = noone;
        old_slipped = noone;
    }


    if (rechecking)
    {

        max_covered = check_spot(10, obj_article3);

        min_covered = check_spot(-10, obj_article3);

        if (max_covered = 0 || min_covered = 0) 
        {
           edge = 1;
           if (max_covered)
           {
               edge_state = 1;
           }
           else if (min_covered)
           {
               edge_state = 2;
           }
        }
        else
        {
            edge = 0;
        }



        rechecking = 0 ;


    }



}

if (state == 2){ //Dying
    
        instance_destroy();
        exit; //Stops execution of the script
    
}

if (state == 3){ //You can add more of these for as many states as you want
    //Behavior goes here or whatever
}

if (state = 8)
{
    if (state_timer = 1)
    {
        sound_play(sound_get("shock3"));
    }

    if (state_timer > 100)
    {
        instance_destroy();
        exit; //Stops execution of the script
    }
}

//more states can go here



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
            
