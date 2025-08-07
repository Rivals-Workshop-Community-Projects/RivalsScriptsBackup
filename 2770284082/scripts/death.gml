//
sound_stop(cur_sound)

cur_sound = sound_play(sound_get("v_haooooo"),false,noone,1,1.05 - random_func(1,10,true)/100)
moonlight = 0
walk_speed = 4.5;
walk_accel = 1;
walk_turn_time = 1;
initial_dash_time = 2;
initial_dash_speed = 4;
dash_speed = 4.5;
dash_turn_time = 1;
dash_turn_accel = .5;
dash_stop_time = 1;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 1;
moonwalk_accel = 2;

max_jump_hsp = 3; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;

with oPlayer {
    if hatstate == other.player*other.player or hatstate == 2*other.player*other.player {
         hatstate = 0
         sound_stop(asset_get("sfx_forsburn_cape_hit"))
         sound_play(asset_get("sfx_forsburn_cape_hit"),false,noone,1,1.2)
         with other {
         h3x = spawn_hit_fx(floor(other.x), floor(other.y - other.char_height-10), h3)
         h3x.depth = -6
         create_hitbox(AT_NSPECIAL,3,floor(other.x), floor(other.y - other.char_height-10))
         }
             
    }
}