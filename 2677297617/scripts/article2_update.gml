//sad

frames+=0.1;

notbg_x-=4;
notbg2_x-=4;

notbg_y+=goingdown;
notbg2_y+=goingdown;


if notbg_x <= -1388
{
    notbg_x = 1380;
}

if notbg2_x <= -1388
{
    notbg2_x = 1380;
}

if notbg2_y >= 907 || notbg_y >= 907
{
    instance_destroy()
}