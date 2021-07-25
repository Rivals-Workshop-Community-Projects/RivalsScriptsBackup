//sad

if frames >= 6
{
    if alpha >= 0.01
    {
        alpha -= 0.01;
    }
}

if get_gameplay_time() >= 120
{
    if frames <= 9
    {
        frames+= 0.1;
    }
}

if alpha <= 0.01
{
    instance_destroy();
}