lock_state = false;
destroy = false;
player_id.move_cooldown[AT_DSPECIAL] = 2

image_index += anim_speed[state];

if state_timer == 0
{
    sound_play(sounds[state]);
}

if image_index >= triggers[state]
{
    if state < 2
    {
        //print("SWITCH")
        image_index = triggers[state]
        setState(state+1)
    }
    else
    {
        //print(state_timer)
        destroy = true;
    }
}

var interval = 4

if state == 1 and (state_timer mod interval == 0)
{
    //print(string(state_timer) +" : " + string(interval))
    
    var which;
    which = state_timer > 8 ? 2: 1;
    var o =create_hitbox(AT_DSPECIAL,which,x+((sprite_get_width(sprite_index)/2) - 30)*spr_dir,y);
    o.x_scale = spr_dir;
}

state_timer += !lock_state;
if state == 1 print(state_timer) 
if destroy
{
    player_id.dspecial_laser = noone;
    player_id.move_cooldown[AT_DSPECIAL] = 90
    instance_destroy();
}

#define setState
/// setState(_state)
var _state = argument0;

state = _state;
state_timer = 0;
lock_state = true;
//print("LOCKING")
