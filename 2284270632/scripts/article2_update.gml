//articleX_update - runs every frame the article exists. Template by Muno

if (state == 0){ //Idle

    var frames = 5; //# of frames in animation
    var frame_dur = 6; //duration of each frame
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
    x = ionized.x - 30;
    y = ionized.y - 30 - ionized.char_height;
    if(player_id.ion_timer == 0 || player_id.ionized == noone || ionized.state == PS_DEAD){
        should_die = true;
    if(player_id.attack == AT_NSPECIAL && player_id.window == 4){
        should_die = true;
        }
    }
}




//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

if(y > BOTTOM_BLASTZONE_Y_POS || y < TOP_BLASTZONE_Y_POS || x < LEFT_BLASTZONE_X_POS || x > RIGHT_BLASTZONE_X_POS){
    should_die = true;
}

if should_die{
    instance_destroy();
    exit; //Stops execution of the script
}

//Make time progress
if !hitstop{
    state_timer++;
    window_timer++;
}
exist_timer++;


#define setState(new_state)
state = new_state;
state_timer = 0;

#define setWindow(new_window)
window = new_window;
window_timer = 0;


