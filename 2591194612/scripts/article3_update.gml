//

if(inBackground)
{
    x = orgX + (view_get_xview() - orgViewX) * get_bg_data(obj_stage_main.backgroundIndex, BG_LAYER_PARALLAX_X);
    y = orgY + (view_get_yview() - orgViewY) * get_bg_data(obj_stage_main.backgroundIndex, BG_LAYER_PARALLAX_Y);
}

if(doAnim)
{
    animTimer += animSpd;
}

if(isWave)
{
    if(!didInit)
    {
        didInit = true;
        animTimer = random_func(0+seed, 8, true);
    }
    
    x += waveSpd * moveDir;
    
    if(animTimer >= 8)
    {
        animTimer = 0;
        x = random_func(1+seed, 1100, true) + 100;
        y = random_func(2+seed, 400, true) + 350;
        animSpd = random_func(3+seed, 1, false) * 0.0625 + 0.0625;
        moveDir = random_func(4+seed, 2, true) * 2 - 1;
        moveDir *= clamp(remap(y, 350, 700, 0.25, 2), 0.25, 2);
    }
    
    scale = clamp(remap(y, 350, 700, 0.5, 3), 0.5, 3);
    //TODO: try to put top half of waves into fake background parallax
}

if(isFish)
{
    if(!didInit)
    {
        didInit = true;
        fishFindNewTarget(true);
    }

    x = ease_quadInOut(startX, endX, moveTimer, animDurCurr) + waveTimer * lengthdir_x(waveSpdX, waveDir);
    y = ease_quadInOut(startY, endY, moveTimer, animDurCurr) + waveTimer * lengthdir_y(waveSpdY, waveDir);
    animSpd = ease_quadIn(50, 10, moveTimer, animDurCurr) * 0.01;
    
    waveDir += waveRotSpd * (random_func(0+seed, 3+bias, true)-1);//(random_func(0, 3, true)-1);//(random_func(0, 2, true) * 2 - 1);

    var desRot = 180 + point_direction(x, y, endX, endY);//waveDir + 90;)
    rot = ease_linear(floor(rot), floor(desRot), 1, 50);
    moveTimer = clamp(moveTimer+1, 0, animDurCurr);
    if(moveTimer == animDurCurr)
    {
        repeatTimer++;
        
        if(repeatTimer >= repeatDelayCurr)
            fishFindNewTarget(false);
    }
    
    //update scaled based on y for fake depth
    scale = clamp(extraScale + remap(y, 300, 700, 0, 1.5), 0, 10);

    waveTimer++;
}


#define fishFindNewTarget(isInit)
if(isInit)
{
    startXconst = floor(x);
    startYconst = floor(y);
    waveDir = random_func(1+seed, 360, true);
    bias = random_func(2+seed, 2, true) * 2 - 1;
}
repeatTimer = 0;
animDurCurr = random_func(3+seed, 120, true) + 120;
repeatDelayCurr = random_func(4+seed, 180, true) + 60;
waveTimer = 0;
moveTimer = 0;
startX = floor(x);
startY = floor(y);
//endX = startX+random_func(5+seed, 200, true) - 100;
//endY = startY+random_func(6+seed, 100, true) - 50;
endX = startXconst+random_func(5+seed, 200, true) - 100; //just always swim back to origin
endY = startYconst+random_func(6+seed, 100, true) - 50;

#define remap(value, low1, high1, low2, high2)
return low2 + (value - low1) * (high2 - low2) / (high1 - low1);