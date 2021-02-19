//article1_update - runs every frame the article exists. Template by Muno

/*STATE LIST

- 0 Initial Movement
- 1 Movement Back
- 2 Dying
- 3 Idle (Movement complete, no hit)
- 4 Instant Destruction
- 5 
- 6 
- 7 
- 8 
- 9

*/

//Clairen plasma field will destroy the article

if (place_meeting(x, y, asset_get("plasma_field_obj")) && state != 2) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256);
    setState(2); //you could replace this with "setState(2);" to make it die INSTANTLY, even if already attacking or etc
}

//Leaving the screen will destroy the article

if ((x+hsp > room_width || x+hsp < 0) || (y+vsp > room_height || y+vsp < 0)) {
    setState(4);
}

//Grab Code

//Keep player in devilsknife
with oPlayer {
    if (id != other.player_id) && kris_grab_id == other {
        // Drags the opponent with the projectile
        x = other.x;
        y = other.y + 25;
        // Sets opponent to wrapped state if they are in the hitbox
        if (state != PS_WRAPPED && state != PS_HITSTUN) {
            state = PS_WRAPPED;
        }
        if (state == PS_WRAPPED) {
            wrap_time = 99999;
        }
        // If they are hit, they are knocked out of the projectile
        if (state == PS_HITSTUN) {
            kris_grab_id = noone;
        }
    }
}

//Check if everyone has been hit
if nspecial_has_hit {
    var alive = false;
    with oPlayer {
        if (id != other.player_id && has_been_kris_grabbed == other) {
            alive = kris_grab_id == noone ? false : true;
        }
    }
    if !alive {
        setState(4);
    }
}

if (state == 0){ //Movement
    if (state_timer == 2){ //Make a hitbox 2 frames after entering state 1
        hbox = create_hitbox(AT_NSPECIAL, 1, x, y); //Spawns NSPECIAL hitbox 1 at article's position. Hitboxes MUST be projectiles for articles
        hbox.parent_article = id;
    }
    if (state_timer <= forward_movement_time) {
        hsp = lengthdir_x(movement_speed,movement_angle);
        vsp = lengthdir_y(movement_speed,movement_angle);
    }
    if ((state_timer > forward_movement_time) && (state_timer <= boomerang_turn_time)) {
        if !"speed_logged" in self {
            hsp_start = hsp;
            vsp_start = vsp;
            speed_logged = true;
        }
        if (player_id.angle_devilsknife) {
            if !"location_logged" in self { //find the owner of the article, get ready to return to them
                movement_angle = point_direction(x,y,player_id.x,player_id.y);
                location_logged = true;
            }
            var aa = lengthdir_x(movement_speed,movement_angle);
            var ax = lengthdir_y(movement_speed,movement_angle);
            hsp = ease_linear(floor(hsp_start),round(aa),state_timer - forward_movement_time,boomerang_turn_time - forward_movement_time);
            vsp = ease_linear(floor(vsp_start),floor(ax),state_timer - forward_movement_time,boomerang_turn_time - forward_movement_time);
        }
        else {
            hsp = ease_linear(hsp_start, -1*hsp_start, state_timer - forward_movement_time,boomerang_turn_time - forward_movement_time);
        }
    }
    if (state_timer > boomerang_turn_time) {
        if (state_timer <= backward_movement_time) {
            if (player_id.angle_devilsknife) { 
                if (vsp > 0 && y > (player_id.y - 10)) vsp = lerp(vsp,0,.5);
                if (vsp < 0 && y < (player_id.y - 10)) vsp = lerp(vsp,0,.5); 
            }
            else {
                hsp = lengthdir_x(-1*(movement_speed),movement_angle);
            }
        }
        if (state_timer > backward_movement_time || place_meeting(x+hsp,y+vsp,player_id)) {
            setState(2);
        }
    }
    if instance_exists(hbox) {
        hbox.x = x+hsp;
        hbox.y = y+vsp;
    }
}



if (state == 1){ //Movement Back

    if (state_timer == 20){ //This state lasts 20 frames
        setState(0);
    }
}



if (state == 2){ //Dying
    if (state_timer == 1) {
        hsp = 0;
        vsp = 0;
    }

    if (state_timer == 15) {
        setState(4);
    }
}



if (state == 3){ //You can add more of these for as many states as you want
    if should_die{
        setState(2);
    }
    //Custom idle behavior goes here
}

if (state == 4){ //Instant Destruction
    with oPlayer {
        if (id != other.player_id) {
            if state == PS_WRAPPED && kris_grab_id == other {
                state = PS_TUMBLE;
                kris_grab_id = noone;
            }
            if (has_been_kris_grabbed == other) {
                has_been_kris_grabbed = noone;
            }
        }
    }
    instance_destroy(hbox);
    instance_destroy();
    exit;
}

//more states can go here



//Sprite and animation handling

//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here
if !hitstop{
    switch(anim_type[state]){
        case 0:
            var frames = 4; //# of frames in animation
            var frame_dur = 3; //duration of each frame
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
        case 1: //unused, just from template
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

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;