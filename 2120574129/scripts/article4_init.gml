//Buttons

if spawn_variables[0] = 0 {
    sprite_index = sprite_get("joystick");
    defaultsprite = sprite_get("joystick");
    hitup = sprite_get("joystick_up");
    hitdown = sprite_get("joystick_down");
    hitleft = sprite_get("joystick_left");
    hitright = sprite_get("joystick_right");
    hitsound = sound_get("joystick");
} else {
    sprite_index = sprite_get("cstick");
    defaultsprite = sprite_get("cstick");
    hitup = sprite_get("cstick_up");
    hitdown = sprite_get("cstick_down");
    hitleft = sprite_get("cstick_left");
    hitright = sprite_get("cstick_right");
    hitsound = sound_get("cstick");
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
hit_direction = 4;
hitconnect = false;
playerhitpause = false;