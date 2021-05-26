if(get_gameplay_time() % 2 == 0)
{
    x -= 10*spr_dir;
    image_alpha = 0;
}
else
    image_alpha = transparency;
transparency -= 0.05;
x += 3*spr_dir;
if(transparency < 0)
{
    instance_destroy();
    exit; //Stops execution of the script
}