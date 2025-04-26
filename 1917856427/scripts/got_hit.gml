//got_hit - called when you're hit by a hitbox
char_height = 52;
shine_parried = false;
move_cooldown[AT_USPECIAL] = 0
if (used_aird = true)
{
    used_aird = false;
}
TIMED = 0;

for(var i = 0; i < 3; i++){
	if (grabbedCharacter[i] != -4){
        grabbedCharacter[i].invincible = false;
        grabbedCharacter[i].wrap_time = 0;
        grabbedCharacter[i].ungrab = 0;
        grabbedCharacter[i].state = PS_TUMBLE;
	}
}
grabbedCharacter[0] = -4;
grabbedCharacter[1] = -4;
grabbedCharacter[2] = -4;


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