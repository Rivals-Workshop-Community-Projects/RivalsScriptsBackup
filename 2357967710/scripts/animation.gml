
if (state == PS_IDLE)
{
    if (state_timer == 90 and idle < 2)
    {
        state_timer = 0;
        idle += 1
    }
    
    if (state_timer == 267)
    {
        state_timer = 0;
        idle = 0;
    }
}
else if (state == PS_LANDING_LAG)
{
    switch(land)
    {
        case 1:
            state_timer = 2;
            if (time < 5)
            {
                time += 1;
            }
            else if (time == 5)
            {
                time = 0;
                land = 2;
            }
            break;
        case 2:
            state_timer = 7;
            if (time < 5)
            {
                time += 1;
            }
            else if (time == 5)
            {
                time = 0;
                land = 3;
            }
            break;
        case 3:
            state_timer = 10;
            state = PS_IDLE
            break;
    }
}