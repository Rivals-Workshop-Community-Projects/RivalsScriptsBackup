//Buttons

if spawn_variables[0] = 0 {
    sprite_index = sprite_get("btn_a");
    defaultsprite = sprite_get("btn_a");
    hitsprite = sprite_get("btn_a_down");
    hitsound = sound_get("button");
} else if spawn_variables[0] = 1{
    sprite_index = sprite_get("btn_b");
    defaultsprite = sprite_get("btn_b");
    hitsprite = sprite_get("btn_b_down");
    hitsound = sound_get("button");
} else if spawn_variables[0] = 2{
    sprite_index = sprite_get("btn_x");
    defaultsprite = sprite_get("btn_x");
    hitsprite = sprite_get("btn_x_down");
    hitsound = sound_get("button");
} else if spawn_variables[0] = 3{
    sprite_index = sprite_get("btn_y");
    defaultsprite = sprite_get("btn_y");
    hitsprite = sprite_get("btn_y_down");
    hitsound = sound_get("button");
} else if spawn_variables[0] = 4{
    sprite_index = sprite_get("trig_l");
    defaultsprite = sprite_get("trig_l");
    hitsprite = sprite_get("trig_l_down");
    hitsound = sound_get("trigger");
} else if spawn_variables[0] = 5{
    sprite_index = sprite_get("trig_r");
    defaultsprite = sprite_get("trig_r");
    hitsprite = sprite_get("trig_r_down");
    hitsound = sound_get("trigger");
} else {
    sprite_index = sprite_get("taunt");
    defaultsprite = sprite_get("taunt");
    hitsprite = sprite_get("taunt_down");
    hitsound = sound_get("taunt");
}

mode = 0;
modechanger = 1;
time = 300;

desty = y;
x = -500;

activetime = 900;
downtime = 600;

state = 0;
cooldown = 0;
hitplayer = 0;
hitconnect = false;
playerhitpause = false;
