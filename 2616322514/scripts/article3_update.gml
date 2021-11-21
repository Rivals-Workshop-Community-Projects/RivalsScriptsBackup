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

if (state == 0){ //Idle
    if (state_timer == 18){
        instance_destroy();
        exit; //Stops execution of the script
    }
    if image_xscale != .75{
        image_xscale -= .05;
    }
    image_angle += 5;
    if (image_alpha != .5){
    image_alpha -= .05;
    }
    /*if (state_timer == 1){
        vsp += player_id.vsp*-1;
        hsp += player_id.hsp*-1;
    }*/
}


//more states can go here

//Sprite and animation handling

//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here
//if !hitstop{
    switch(anim_type[state]){
        case 0:
            var frames = 4; //# of frames in animation
            var frame_dur = 5; //duration of each frame
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
        case 1:
            var frames = 3;
            var frame_dur = 6;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
        case 2:
            var frames = 5;
            var frame_dur = 3;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
        case 3:
            var frames = 7;
            var frame_dur = 1;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
    }
//}

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

//Make time progress
//if !hitstop{
    state_timer++;
//}

exist_timer++;

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;