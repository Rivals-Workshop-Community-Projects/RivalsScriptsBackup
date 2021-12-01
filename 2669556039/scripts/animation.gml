switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

if(state == PS_PARRY && state_timer == 24)
    //spawn_hit_fx(x+16, y-16, 13);
    spawn_hit_fx(x+4, y-16, 14);
    

//make idle/taunt transition smooth
if(state == PS_IDLE || (attack == AT_TAUNT && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)))
{
    image_index = idleIndex;
    idleTimer++;
    if(idleTimer > 8)
    {
        idleTimer = 0;
        idleIndex++;
    }
}
else
{
    idleTimer = 0;
    idleIndex = 0;
}

if(state == PS_HITSTUN)
{
    if(fixExplosionHurt)
        sprite_index = fixExplosionHurtSpr;
}
else
    fixExplosionHurt = false;

    
if(state == PS_SPAWN)
{
    sprite_index = sprite_get("spawn");
    
    var startTime = 25;
    if(state_timer > startTime)
    {
        image_index = floor(((state_timer-startTime)/(125-startTime)) * image_number);
        if(image_index >= image_number)
            image_index = image_number-1;
    }
    else
        image_index = 0;
    
    if(state_timer == 125)
    {
        state = PS_IDLE;
        state_timer = 0;
    }
}