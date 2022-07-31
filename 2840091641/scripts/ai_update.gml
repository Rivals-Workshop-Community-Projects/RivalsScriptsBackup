//ai update
randomAI += 1;
if(randomAI >= 201)
{
    randomAI = 0;
}
if(ai_target != -1) and (down_down or up_down or right_down or left_down)
{
    joy_dir = point_direction(x, y, ai_target.x, ai_target.y);
}

if(attack = AT_UAIR) and (!ai_recovering)
{
    down_down = 1;
}
if(ai_recovering)
{
    if(place_meeting(x + 5, y, asset_get("par_block"))) or (place_meeting(x + -5, y, asset_get("par_block")))
    {
        down_down = 1;
        if(ammo > 0)
        {
            var nearestBlock = instance_nearest(x, y, asset_get("par_block"));
            joy_dir = point_direction(x, y, nearestBlock.x, nearestBlock.y);
            attack = AT_NSPECIAL;
         }
    }
    else
    {
        attack = AT_UAIR;
    }
}