//articleX_update - runs every frame the article exists. Template by Muno

/*STATE LIST

- 0 Moving
- 1 Stuck
- 2 Dying
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9

*/
if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256);
    should_die = true; //you could replace this with "setState(2);" to make it die INSTANTLY, even if already attacking or etc
}
if should_die{
    setState(2);
}
if (state == 0){ //Idle
    with asset_get("pHitBox"){
        if (place_meeting(x, y, other) && player != other.player_id.player){
            with other{
        spawn_hit_fx(x, y, 301);
        sound_play(asset_get("sfx_blow_weak2"));
        should_die = true;
            }
        }
    }
    create_hitbox(AT_FSPECIAL, 1, x + 8*spr_dir, y);
    hsp = 8*spr_dir;
    if (hit_wall){
        spawn_hit_fx(x, y, 301);
        sound_play(asset_get("sfx_blow_weak2"));
        x -= 4*spr_dir;
        wall_stuck = true;
        if (instance_exists(player_id.hydrant) && collision_circle(x, y, 30, player_id.hydrant , false, true)){
            hydrant_stuck = true;
        }
        setState(1);
    }
    var tramp = player_id.trampoline;
    if (instance_exists(tramp) && place_meeting(x, y, tramp)){
        spawn_hit_fx(x, y, 301);
        sound_play(asset_get("sfx_blow_weak2"));
        tramp_stuck = true;
        setState(1);
    }
    if (state_timer >= 24){
        should_die = true;
    }

    //Custom idle behavior goes here
}

if (state == 1){ //Attack
    if (hydrant_stuck){
        if (instance_exists(player_id.hydrant)){
        ignores_walls = true;
        x = player_id.hydrant.x;
        y = player_id.hydrant.y;
        } else should_die = true;
    }
    var tramp = player_id.trampoline;
    if (tramp_stuck){
        if (instance_exists(tramp)){
        ignores_walls = true;
        x = tramp.x + 32;
        y = tramp.y - 32;
        } else should_die = true;
    }
    hsp = 0;
    vsp = 0;
    image_index += 0.12;
    if (instance_exists(player_id.pellet_id)){
        pellet_id = player_id.pellet_id;
        x = pellet_id.x;
        y = pellet_id.y - pellet_id.char_height * 0.5;
        if (pellet_id.state == PS_RESPAWN or pellet_id.state == PS_DEAD){
            should_die = true;
        }
        //depth = pellet_id.depth - 1;
    }
    if (state_timer == 10){ //Make a hitbox 10 frames after entering state 1
         //Spawns NSPECIAL hitbox 1 at article's position. Hitboxes MUST be projectiles for articles
    }
    if (state_timer == 20){ //This state lasts 20 frames
        //setState(0);
    }
}

if (state == 2){ //Dying
        instance_destroy();
        exit; //Stops execution of the script
}

if (state == 3){ //You can add more of these for as many states as you want
    //Behavior goes here or whatever
}

//more states can go here

//Sprite and animation handling

//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here

//Make time progress
if !hitstop{
    state_timer++;
}

exist_timer++;

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;