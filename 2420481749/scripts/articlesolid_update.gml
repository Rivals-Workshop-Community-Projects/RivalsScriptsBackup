//asdafg

if summon_timer >= 1
{
    summon_timer--;
    immunity = 20;
    vsp = -31.2;
}

if immunity >= 1
{
    immunity--;
}

if earth_timer >= 1
{
    earth_timer--;
}


if was_hit == 0 && immunity == 0 && times_hit <= 2
{
    with pHitBox
    {
        if place_meeting(x, y+16, other)
        {
            other.was_hit = 14;
            other.immunity = 10;
            other.pillarhit_x = x;
            other.pillarhit_y = y;
        }
    }
}

if was_hit >= 1
{
    was_hit--;
    immunity = 2;
    
        if pillarhit_x <= x-32
        {
            pillarhit_x = x-32;
        }
        
        if pillarhit_x >= x+32
        {
            pillarhit_x = x+32;
        }
    
        if pillarhit_y <= y-560
        {
            pillarhit_y = y-560;
        }
        
        if pillarhit_y >= y+640
        {
            pillarhit_y = y+640;
        }
    
    if was_hit == 12
    {
        times_hit+=1;
        earth_timer -= 180;
        
        if !hitpause
        {
            with player_id
            {
                spawn_hit_fx( other.pillarhit_x, other.pillarhit_y, puffyhit);
            }
            sound_play(asset_get("sfx_kragg_spike"));
        }
    }
    
    if was_hit >= 8 && was_hit <= 10 && times_hit <= 3
    {
        vsp = 3.5;
    }
    else if times_hit >= 3 && was_hit <= 8
    {
        earth_timer -= earth_timer+2;
    }
}
else if earth_timer >= 1 && summon_timer <= 1
{
    vsp = 0;
}
else if earth_timer <= 1
{
    vsp += 1;
}


if abs(vsp) >= 1
{
    draw_x = x-3 + random_func(0, 3, false);
}
else
{
    draw_x = x;
}

var stage_y = get_stage_data(SD_BOTTOM_BLASTZONE);

if y-640 >= stage_y
{   
    instance_destroy();
}

