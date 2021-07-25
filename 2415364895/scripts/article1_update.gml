//sad


notbg_x-=1;
notbg2_x-=1;

if get_gameplay_time() == 360
{
    alpha = 0.00;
    alpha_timer = 0;
}

if notbg_x <= -1388
{
    notbg_x = 1380;
}

if notbg2_x <= -1388
{
    notbg2_x = 1380;
}

alphaTimer+=0.1;

if alphaTimer >= 15
{
    if alpha >= 0.01
    {
        alpha-=0.001;
    }
}
else
{
    if alpha <= 0.2
    {
        alpha+=0.001;
    }
}

if alphaTimer >= 30
{
    alphaTimer = 0;
}
