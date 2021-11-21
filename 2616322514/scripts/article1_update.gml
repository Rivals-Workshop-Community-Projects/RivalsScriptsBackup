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

    //Custom idle behavior goes here
    if (state_timer == 17){
        state = 1;
    }
    if (state_timer > 8){
    if (glow_alpha < .60){
        glow_alpha += .06;
    }
    if (glow_radius < 140){
        glow_radius += 20;
    }
    }
}

if (state == 1){
    if (sound_timer == 0){
        sound_play(sound_get("sfx_shock_med"), false, noone, 0.5, 1.7 + (random_func(1, 5, true) * 0.1));
        sound_timer = 60;
    }
    if (sound_timer > 0){
        sound_timer --;
    }
    if state_timer >= 600{
        setState(2);
        sound_stop(sound_get("sfx_shock_med"));
        sound_play(sound_get("sfx_terrain_disappear"));
    }//Attack
    /*if (state_timer == 10){ //Make a hitbox 10 frames after entering state 1
        create_hitbox(AT_NSPECIAL, 1, x, y); //Spawns NSPECIAL hitbox 1 at article's position. Hitboxes MUST be projectiles for articles
    }
    if (state_timer == 20){ //This state lasts 20 frames
        setState(0);
    }*/
}

if (state == 2){ //Dying
    if (state_timer == 14){
        instance_destroy();
        exit; //Stops execution of the script
    }
    
    if (glow_alpha != 0){
        glow_alpha -= .10;
    }
    if (glow_radius != 0){
        glow_radius -= 10;
    }
}

if (state == 3){ //You can add more of these for as many states as you want
    //Behavior goes here or whatever
    	image_angle = darctan2(vsp, -hsp);
        if (state_timer == 8){
        instance_destroy();
        exit; //Stops execution of the script
    }
    
    if (glow_alpha != 0){
        glow_alpha -= .10;
    }
    if (glow_radius != 0){
        glow_radius -= 10;
    }
}

//more states can go here

//Sprite and animation handling

//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here
//if !hitstop{
    switch(anim_type[state]){
        case 0:
            var frames = 6; //# of frames in animation
            var frame_dur = 3; //duration of each frame
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