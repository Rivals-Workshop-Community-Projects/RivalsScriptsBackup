//Blinking timer
if (blinkTimer < blinkTargetTimer)
    blinkTimer++;
else if (blinkTimer >= blinkTargetTimer)
{
    if (blinkAnimTimer < 3)
        blinkAnimTimer += 0.5;
    else if (blinkTimer >= 3)
    {
        blinkAnimTimer = 0;
        blinkTimer = 0;
        blinkTargetTimer = 30 + random_func(0, 150, true);
    }
}

switch (state){
    case PS_IDLE:
        if (blinkTimer >= blinkTargetTimer)
        {
            var prev_imageIndex = image_index;
            if (blinkAnimTimer <= 1 || blinkAnimTimer > 2 && blinkAnimTimer <= 3)
                sprite_index = sprite_get("idle_blink1");
            else if (blinkAnimTimer > 1 && blinkAnimTimer <= 2)
                sprite_index = sprite_get("idle_blink2");
            else if (sprite_index != sprite_get("idle"))
                sprite_index = sprite_get("idle");
            
            image_index = prev_imageIndex;
        }
    break;
    case PS_CROUCH:
        if (blinkTimer >= blinkTargetTimer)
        {
            var prev_imageIndex = image_index;
            if (blinkAnimTimer <= 1 || blinkAnimTimer > 2 && blinkAnimTimer <= 3)
                sprite_index = sprite_get("crouch_blink1");
            else if (blinkAnimTimer > 1 && blinkAnimTimer <= 2)
                sprite_index = sprite_get("crouch_blink2");
            else if (sprite_index != sprite_get("crouch"))
                sprite_index = sprite_get("crouch");
            
            image_index = prev_imageIndex;
        }
    break;
    
    case PS_WALL_JUMP:
        image_index = floor(wallJumpAnimCounter);
        
        if (wallJumpAnimCounter > 4.5 && clinging == true) //Stay at wall cling animation
            wallJumpAnimCounter = 4.5;
        else if (clinging == false) //Once no longer clinging, play jump animation
        {
            //Skip to the jumping frame if we quickly wall jumped while the
            //wall cling intro animation was still playing. Don't skip the animation
            //if we are on frame 1 of the wall cling due to the clinging not setting to
            //true right away. Speed up the animation if we wall jumped immediately
            if (wallJumpAnimCounter < 4.5)
                wallJumpAnimCounter += 1.5;
            
            if (wallJumpAnimCounter > 11)
                wallJumpAnimCounter = 11;
        }
        
        //To prevent the animation from playing too fast, we make an extra
        //variable that increases every 0.5 per frame to simulate the animation
        //index increasing every other frame
        if (wallJumpAnimCounter <= 4.5)
            wallJumpAnimCounter += 0.5;
        else if (wallJumpAnimCounter > 4.5 && wallJumpAnimCounter <= 11)
            wallJumpAnimCounter += 0.25;
        else if (wallJumpAnimCounter > 11)
            wallJumpAnimCounter = 0;

        if (image_index > 11 && clinging == false)
            image_index = 0;
    break;
}

if (attack == AT_FSPECIAL && window == 4 && shurikatChargeLevel == 5)
{
    if (sprite_index != sprite_get("fspecial_spin"))
        sprite_index = sprite_get("fspecial_spin");
    image_index = window_timer;
}

if (attack == AT_DSPECIAL)
{
    //Change aiming frame sprite to the direction Amber is aiming at
    if (window == 5)
    {
        if (yarnBallThrowAngle > 225 && yarnBallThrowAngle < 315) //Aiming downwards
            image_index = 13;
        else if (yarnBallThrowAngle > 50 && yarnBallThrowAngle < 130) //aiming upwards
            image_index = 12;
        else
            image_index = 11;
    }
    
    if (window == 11 || window == 10)
    {
        //spr_angle = yarnDashAngleDirection;
        if (instance_exists(yarnBallObject))
        {
        if (yarnBallObject.x > x && spr_dir == -1)
            spr_dir = 1;
        else if (yarnBallObject.x < x && spr_dir == 1)
            spr_dir = -1;
        }
        /*
        if (spr_dir == 1)
            spr_angle = yarnDashAngleDirection;
        else if (spr_dir == -1)
            spr_angle = yarnDashAngleDirection - 180;
            */
        //if (state == PS_PRATFALL)
          //  image_index = sprite_get("pratfall");
    }
}

if (attack == AT_TAUNT_2)
{
    //Change the cardboard box sprite so that the text isn't mirrored but the box sprite is properly mirrored
    if (spr_dir == -1 && sprite_index == sprite_get("taunt_box"))
        sprite_index = sprite_get("taunt_box_left");
    else if (spr_dir == 1 && sprite_index == sprite_get("taunt_box_left"))
        sprite_index = sprite_get("taunt_box");
}

if (attack == AT_EXTRA_3)
{
    with (targetPlayerHugID)
    {
        if (oPlayerHugAmberState == 3)
        {
            oPlayerHugAmberIndex = oPlayerAmberID.image_index;
        }
    }
    if (targetPlayerHugIDTwo != noone)
    {
        with (targetPlayerHugIDTwo)
        {
            if (oPlayerHugAmberState == 3)
            {
                oPlayerHugAmberIndex = oPlayerAmberID.image_index;
            }
        }
    }
    
    
}

if (state != PS_WALL_JUMP && wallJumpAnimCounter > 0)
    wallJumpAnimCounter = 0;
    
if (smallSparkVfxBairTimer <= 2)
    smallSparkVfxBairTimer++;

/*
if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD )
{
    if (state_timer < 10)
    {
        hud_offset += 8;
    }
    else if (state_timer < 20)
    {
        hud_offset -= 8;
    }
}
else if (hud_offset != origin_hud_offset && attack != AT_DSTRONG && attack != AT_NTHROW && attack != AT_TAUNT_2)
{
    hud_offset = origin_hud_offset;
}
 */   
    