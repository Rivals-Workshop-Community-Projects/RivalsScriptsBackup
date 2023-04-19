if (!turnabout)
{
    switch (parry_evidence)
    {
        case 1:
            evidence1 = 0;
            evidence1_status = 0;
        break;
    
        case 2:
            evidence2 = 0;
            evidence2_status = 0;
        break;
    
        case 3:
            evidence3 = 0;
            evidence3_status = 0;
        break;
    }
}
else
{
        if (turnabout_timer_pause) turnabout_timer_pause = 0;
        turnabout_timer-= 90;
}