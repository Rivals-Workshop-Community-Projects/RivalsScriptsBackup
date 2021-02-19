//articleX_update - runs every frame the article exists. Template by Muno

if (state == 0){ //Idle

    var frames = 5; //# of frames in animation
    var frame_dur = 6; //duration of each frame
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
        var killed = false;
    with pHitBox {
        if(player != other.player_id.player && place_meeting(x, y, other)){
            killed = true;
            spawn_hit_fx(x, y, hit_effect);
            sound_play(sound_effect);
     }
    }
    if(killed){
        setState(1);
    }
    with pHurtBox {
        if(player != other.player_id.player && place_meeting(x, y, other)){
            killed = true;
     }
    }
    if(killed){
        setState(1);
    }
    if(exist_timer == 780){
        setState(1);
    }
}

if (state == 1){ //Attack
    vsp = 0;
    ignores_walls = true; 
    var frames = 11;
    var frame_dur = 5;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
    if(state_timer == 1){
            sound_play(sound_get("minebeep"));
    }
     if(state_timer == 40){
            sound_play(sound_get("mine"));
            create_hitbox(AT_DSPECIAL, 1, x, y - 42);
     }
    image_index = floor(state_timer / frame_dur);
    if (image_index == frames){
        should_die = true;
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


