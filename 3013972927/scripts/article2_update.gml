//article2_update.gml
//808 Floating Update

state_timer ++; //always count up state_timer (in this case since there's no states it can be used as a "lifetime timer")
hitpause = player_id.hitpause;
game_time = get_gameplay_time();
beat_hit_speed = 3;

if apply_friction_mult {
    r_hsp *= frict;
    r_vsp *= frict;
}


switch (state) {
        case 0: //INIT
            x = player_id.x-50*player_id.spr_dir;
            y = player_id.y-80;
            set_c808_state(CAT_IDLE);
            break;
        case 1: //IDLE
            depth = def_depth;
            var lerp_spd = 0.2;
            x = floor(lerp(x,player_id.x+follow_x*player_id.spr_dir,lerp_spd));
            y = floor(lerp(y,player_id.y+follow_y,lerp_spd));
           // sound_play(sound_get("chai_jump1_perfect"));
            spr_dir = abs(player_id.x-x) >= 1 ? sign(player_id.x-x) : spr_dir;
            
            break;
            
        case 2: //MOVE
                can_move = false;
                depth = player_id.depth+1;
                 if (player_id.state != clamp(player_id.state,5,6)) 
                 {
                set_c808_state(CAT_IDLE);
                }
                break;
            
        case 3: //Reset
            depth = def_depth;
            spr_dir = sign(player_id.x - x); // Applies proper direction
            can_attack = false;
            can_glide = false;
            var spd = ease_sineIn(1,6,clamp(state_timer,0,16),16)/40;
            x = floor( lerp( x + player_id.hsp, player_id.x+follow_x*player_id.spr_dir, spd ) );
            y = floor( lerp( y + player_id.vsp, player_id.y+follow_y, spd ) );
            if point_distance( x + hsp, y + vsp, player_id.x+follow_x*player_id.spr_dir, player_id.y+follow_y) < 20 {
                set_c808_state(CAT_IDLE);
                attached = true;
            }
        
        case 4: // Die
       //     print("Resetting...");
            instance_destroy();
            break;
        
        break;
}

//Sprite and animation handling

//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here
if(instance_exists(state))
    {
    switch(anim_type[state]){
        case 0:
            var frames = 10; //# of frames in animation
            var frame_dur = 6; //duration of each frame
            image_index = beat_hit_time;
            spr_dir = player_id.spr_dir;
            if(player_id.bpm_onBeat_check)
            {
            	beat_hit_time++;
            	if(beat_hit_time > 10)
            	{
            		beat_hit_time = 0;
            	}
            }
         // sound_play(sound_get("chai_jump1_perfect"));
            break;
        case 1:
            var frames = 7;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
          //  sound_play(sound_get("chai_jump1_perfect"));
            break;
            
        case 4:
            print("stop");
            var frames = 7; //# of frames in animation
            var frame_dur = 6; //duration of each frame
            image_index = beat_hit_time;
            spr_dir = player_id.spr_dir;
            if(player_id.bpm_onBeat_check)
            {
            	beat_hit_time++;
            	if(beat_hit_time > 10)
            	{
            		beat_hit_time = 0;
            	}
            }
            break;
    }
}
    

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite_strip[state]){
    sprite_index = sprite_strip[state];
}

//Make time progress
state_timer++;

exist_timer++;



#define get_c808_state_name(state)
switch (state) {
    case 0: return "CAT_INIT";
    case 1: return "CAT_IDLE";
    case 2: return "CAT_MOVE";
    case 3: return "CAT_RESET";
    case 4: return "CAT_DIE";
}
#define set_c808_state(_state)
can_be_grounded = false;
ignores_walls = true;
prev_state = state;
state = _state;
state_timer = 0;
window = 0;
window_timer = 0;