//sad

if headLower >= 1
{
    headLower--;
    noddingY+=0.5;
}

if headLower <= -1
{
    headLower++;
    noddingY-=0.5;
}



if introFlyingAway == true
{
    if image_angle >= -20.5
    {
        image_angle-= 0.05;
    }
    
    if vsp >= -4
    {
        vsp-=0.1;
    }
    
    if hsp <= 4
    {
        hsp+=0.1;
    }
    
    if y <= -3
    {
        image_alpha = 0;
        intro = false;
        vsp = 0;
        hsp = 0;
        introFlyingAway = false;
        
    }
}
