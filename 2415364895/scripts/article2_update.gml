//sad


notbg_x-=1.1;
notbg2_x-=1.1;

if notbg_x <= -1388
{
    notbg_x = 1380;
}

if notbg2_x <= -1388
{
    notbg2_x = 1380;
}

alphaTimer+=0.1;

if alphaTimer >= 20
{
    if alpha >= 0.1
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

if alphaTimer >= 40
{
    alphaTimer = 0;
}