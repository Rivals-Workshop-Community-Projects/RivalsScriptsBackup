timer += 1;
depth = 31;
if (timer < 30)
{
    alpha_screen = ease_linear(0, 1, timer, 30) * 0.4;
    
}
if (timer >= 30 && timer < 60)
{
    alpha_screen = 0.4;
    
}
if (timer >= 60)
{
    alpha_screen = ease_linear(1, 0, timer-60, 30) * 0.4;
    
}
if (timer >= 90)
{
    instance_destroy();
    exit;
}