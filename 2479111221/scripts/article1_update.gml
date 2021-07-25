//
switch(state){
    case 0: // Idle
        break;
    case 1: // Cheering
        if state_timer >= 242{
            state = 0;
            state_timer = 0;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

switch(anim_type[state]){
    case 1:
        var frames = 5;
        var frame_dur = 8;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 2:
        var frames = 20;
        var frame_dur = 3;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
}

state_timer++;

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

prev_state = state;
state = new_state;
state_timer = 0;