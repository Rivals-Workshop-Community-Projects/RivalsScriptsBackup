

//pointless
joy_pad_idle = false;
if(down_down or up_down or right_down or left_down)
{
    launchDir = joy_dir;
}
else
{
    launchDir = 0
    if(spr_dir = -1)
    {
        launchDir = 180
    }
}

//ammo reload timer
if(ammo <= 2)
{
    ammoTimer --;

    if(ammoTimer <= 0)
    {
        ammoTimer = 60;
        ammo ++;
        sound_play(sound_get("rocket_reload"));
    }
}

for(r=1; r > 5; r++)
{
    if(instanceNumber[r].free = true)
        {
            instance_destroy(instanceNumber[r])
        }
}

if(!free = true)
{
    rocketJumping = 0;
}

if(whipped == true)
{
    whippedtimer --;
    if(whippedtimer == 0)
    {
        whipped = false;
        walk_speed = 2.5;
        dash_speed = 5;
        sound_play(sound_get("discipline_device_power_down"));
    }
}