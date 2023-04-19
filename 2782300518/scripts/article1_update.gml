time++;
image_index += 0.5;

if (time >=32)
{
    image_alpha -= 0.06;
}
if (image_alpha <= 0)
{
    instance_destroy();
}