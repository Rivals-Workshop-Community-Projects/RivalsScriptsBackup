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
                case 2:
            var frames = 9;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;    
        case 8:
            var frames = 10;
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



if (state == 0){ //Dissapear Check

    x = round(x);
    y = round(y);

//move_snap(30, 1);

    if (   place_meeting(x,y+8,asset_get("par_block")) == 0 && place_meeting(x,y+4,asset_get("par_jumpthrough")) == 0 && place_meeting(x,y+4,obj_stage_article_solid) == 0 && place_meeting(x,y+4,obj_stage_article_platform) == 0 )
    {
           setState(2);
    }

    if (collision_line(x, y, x + 5, y, obj_article3, false, true) != noone || collision_line(x, y, x - 5, y, obj_article3, false, true) != noone) //trying to fit it
    {
        if (collision_line(x, y, x + 5, y, obj_article3, false, true) != noone)
        {
            collision_line(x, y, x + 5, y, obj_article3, false, true).death_timer = player_id.death_amount; 
        }
        if (collision_line(x, y, x - 5, y, obj_article3, false, true) != noone)
        {
            collision_line(x, y, x - 5, y, obj_article3, false, true).death_timer = player_id.death_amount; 
        }
            
            instance_destroy();
            exit; //Stops execution of the script
        

        

    }
    else
    {
        
        call_recheck();

        //spawn_hit_fx(x,y, player_id.puddle_spawn);
        setState(1);
    }


}

if (state = 0)
{
            call_recheck();

        //spawn_hit_fx(x,y, player_id.puddle_spawn);
        setState(1);
}

if (state == 1 || state = 5){ //Attack


    //one time edge determination. truly sadge
    if (death_timer = 980)
    {
                //DETERMINING EDGES
            min_covered = check_spot(-16, obj_article3);
        
            max_covered = check_spot(16, obj_article3);

            edge = 0;
            edge_state = 0;

        if (max_covered = 0 || min_covered = 0) 
        {
           edge = 1;

           if (!min_covered && !max_covered)
           {
               edge_state = 3;
           }
           else if (min_covered)
           {
               edge_state = 1;
           }
           else if (max_covered)
           {
               edge_state = 2;
           }  
        }

    }

    death_timer += -1;

    //rechecking = player_id.rechecking;
    //rechecking_y = player_id.rechecking_y;


    //CHECK FOR ELECTRCITY
    if (player_id.spark = 1 && place_meeting(x,y,player_id))
    {
        setState(8);
    }

    if (player_id.attack = AT_USPECIAL && player_id.window = 2 && player_id.hsp = 0 && ( place_meeting(x,y,player_id)  || place_meeting(x+40,y,player_id) || place_meeting(x-40,y,player_id) ))
    {
        marked_for_electricity = 1;
    }
    else if (marked_for_electricity)
    {
        if (player_id.state != PS_PRATFALL)
        {
        setState(8);
        }
        else
        {
            marked_for_electricity = 0;
        }
    }
    
    
    //Check if it's mid air

        if (free)
    {
           vsp += 1;
    }

    if (vsp > 2 && free)
    {
        setState(2);
    }


        //ded

    if (death_timer < 0)
    {
        setState(2);
        call_recheck();
    }


}

if (state == 2){ //Dying

        instance_destroy();
        exit; //Stops execution of the script

      if (state_timer > 20)
      {
    

        sound_stop(sound_get("shock3"));
        if ("old_dash_speed" in self && "old_slipped" in self)
        {
            if (old_slipped != noone)
            {
                reset_slip();
            }
        }
        call_recheck();
      }
    
}

if (state = 8)
{

    

    if (marked_for_electricity && player_id.was_parried && player_id.attack == AT_USPECIAL)
    {
        setState(2);
    }


    if (state_timer = 1)
    {
        sound_play(sound_get("shock3"));
        hitbox_timer = 0;
    }

    
    hitbox_timer++;

    if (hitbox_timer > 9)
    {
        create_hitbox( AT_FSPECIAL, 1, x, y);
        hitbox_timer = 0;
    }


    if (state_timer > 100)
    {
        call_recheck();

        if ("old_dash_speed" in self && "old_slipped" in self)
        {
            if (old_slipped != noone)
            {
                reset_slip();
            }
        }
        instance_destroy();
        exit; //Stops execution of the script
    }
}

//more states can go here
if (exist_timer < 15)  //56 frames!
{
    visible = false;
}
else
{
    visible = true;
}



exist_timer++;



#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;

#define check_spot(spot_distance, thing) //returns true if something is touched

    temp_connection = instance_position( (x + spot_distance ), y, thing); 

            if (temp_connection != noone && temp_connection.player_id = player_id && temp_connection != self_id)
            {
                return true;
            }
            else
            {
                return false;
            }



#define ray_trace(ray_distance, thing)

    temp_ray = collision_line(x, y, x + ray_distance, y, thing, false, true)

            if (temp_ray != noone && temp_ray.player_id && temp_ray != self_id)
            {
                return true;
            }
            else
            {
                return false;
            }

#define reset_slip()

        //old_slipped.dash_speed = old_dash_speed;
        //old_slipped.walk_speed = old_walk_speed;
        //old_slipped.walk_accel = old_walk_accel;
        old_slipped.ground_friction = old_ground_friction;

        old_slipped.one_time_slip = noone;
        old_slipped = noone;

        return true;


#define rechecking_collision()

    temp_connection = instance_position( x, y, obj_article1); 

            if (temp_connection != noone && temp_connection.player_id = player_id && temp_connection != self_id && temp_connection.article_type = 3)
            {
                return true;
            }
            else
            {
                return false;
            }

#define call_recheck()

if (69 = 420)
{
    with(player_id)
    {
            article_type = 3;
    temp_id = instance_create(other.x, other.y+10, "obj_article1");

    }
}

//                player_id.rechecking = 1;
//                player_id.rechecking_y = y;