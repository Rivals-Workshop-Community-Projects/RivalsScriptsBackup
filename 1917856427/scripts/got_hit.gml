//got_hit - called when you're hit by a hitbox
char_height = 52;
move_cooldown[AT_USPECIAL] = 0
if (used_aird = true)
{
    used_aird = false;
}
TIMED = 0;
if grabbedid != noone 
{
    grabbedid.invincible = false;
    grabbedid.wrap_time = 0;
    grabbedid.ungrab = 0;
    grabbedid = noone;
}

   
if (hitpause = true && MUS_NOTE != 8 && multihitpro = 0) 
{
MUS_NOTE -= 1;
multihitpro = 60;
}

if MUS_NOTE < 0 
{
MUS_NOTE = 0
}

if MUS_NOTE = 8
{
multihitpro = 60;
MUS_NOTE -= 2;
}