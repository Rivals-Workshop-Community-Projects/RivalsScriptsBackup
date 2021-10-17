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

if (article_type = 1)
{

    
if (place_meeting(x, y, asset_get("plasma_field_obj")) && state != 2) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256)
    setState(2);
}


if (state == 0){ //Idle
    if should_die{
        setState(2);
    }

    if (free)
    {
        vsp += 1;
    }
    else if (!free)
    {

        vsp = 0;
        if (hsp != 0)
        {
        hsp += -0.5 * spr_dir;
        }

    }

            hitbox_timer++;

        if (hitbox_timer > 9)
        {
            create_hitbox( AT_DSPECIAL, 1, x, y);
            hitbox_timer = 0;
        }

        tripped = instance_place(x, y, oPlayer);

        if (tripped != noone && tripped != player_id && hsp = 0)
        {
            spawn_hit_fx( x, y+10, 302);
            setState(2);
            sound_play(asset_get("sfx_blow_weak1"));
        }
    if (state_timer > 40)
    {
        setState(1);
        sound_play(sound_get("splat"));
    }

}

if (state == 1)
{ 


        if (free)
        {
            vsp += 1;
        }
        else if (!free)
        {
            vsp = 0;
            if (hsp != 0)
            {
                if (hsp > 0)
                {
                    hsp += -0.5;
                }
                else if (hsp < 0)
                {
                    hsp += 0.5;
                }
            }

        }

        tripped = instance_place(x, y, oPlayer);

        if (tripped != noone && tripped != player_id)
        {
            sound_play(sound_get("trip"));
            tripped.spr_dir = tripped.spr_dir * -1;
            //tripped.hsp = 5 * spr_dir;
            tripped.hsp = 0;
            tripped.vsp = 0;
            with(tripped)
            {
                was_parried = true;
                set_state(PS_IDLE_AIR);
                set_state(PS_PRATFALL);
                parry_lag = 40;
            }
            spawn_hit_fx( x, y+10, 302);
            setState(2);
            sound_play(asset_get("sfx_blow_weak1"));
        }

}

if (state == 2){ //Dying
    if (state_timer == 30){
        instance_destroy();
        exit; //Stops execution of the script
    }
}

if (state == 3){ //You can add more of these for as many states as you want
    //Behavior goes here or whatever
}

//more states can go here

//Sprite and animation handling

//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here
if !hitstop{
    switch(anim_type[state]){
        case 0:
            var frames = 5; //# of frames in animation
            var frame_dur = 4; //duration of each frame
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
        case 1:
            var frames = 22;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
    }
}

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

//Make time progress
if !hitstop{
    state_timer++;
}

exist_timer++;



}

else if (article_type = 2)
{

if (state = 0)
{
    vsp += 0.3;

    if (!free)
    {
        setState(1);
        hsp = 0;
        vsp = 0;
    }
}   

if (state = 1)
{
    if (state_timer > 30)
    {
        setState(2);
    }
}
if (state = 2)
{
            instance_destroy();
        exit; //Stops execution of the script
}

//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here
if !hitstop{
    switch(anim_type[state]){
        case 0:
            var frames = 5; //# of frames in animation
            var frame_dur = 4; //duration of each frame
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
        case 1:
            var frames = 20;
            var frame_dur = 3;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
    }
}

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

//Make time progress
if !hitstop{
    state_timer++;
}

exist_timer++;


}





//LARGE COLLISION BOX FOR PUDDLES!!!!!!!!
else if (article_type = 3)
{

if (state = 0)
{
    if (state_timer > 1)
    {
        state = 2;
    }
}   

if (state = 1)
{

}
if (state = 2)
{
            instance_destroy();
        exit; //Stops execution of the script
}

//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here
if !hitstop{
    switch(anim_type[state]){
        case 0:
            var frames = 5; //# of frames in animation
            var frame_dur = 4; //duration of each frame
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
        case 1:
            var frames = 20;
            var frame_dur = 3;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
    }
}

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

//Make time progress
if !hitstop{
    state_timer++;
}

exist_timer++;


}


#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;