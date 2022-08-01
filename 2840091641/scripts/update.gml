
//muno
muno_event_type = 1;
user_event(14);
//pointless
joy_pad_idle = false;
if(attack != AT_NSPECIAL)
{
    launcherFrame = 0;
}
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
        walk_speed = walk_speed_default;
        dash_speed = dash_speed_default;
        sound_play(sound_get("discipline_device_power_down"));
    }
}

//drawRocketLauncher
if(launchDir > 90 and launchDir < 270)
{
    generalDir = -1;
	launchDir = launchDir + 180;
}
else
{
    generalDir = 1}//this turns the default looking direction left if facing left and not holding any direction on the joystick
if(0 = up_down + down_down + left_down + right_down and spr_dir = -1)
{
    generalDir = -1    if(launchDir < 90 and launchDir > 270)    
    {
        generalDir = 1;
        
    }
}