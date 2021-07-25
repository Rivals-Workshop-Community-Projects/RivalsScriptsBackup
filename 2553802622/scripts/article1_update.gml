image_alpha = 0;
transparency -= 0.05;

if(transparency <= 0)
{
    instance_destroy();
    exit; //Stops execution of the script
}