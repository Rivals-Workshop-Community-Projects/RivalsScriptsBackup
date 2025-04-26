// article_init is used when the article object is created.
if (instance_exists(player_id))
{
    x = player_id.x-60+random_func(0,90,true);
    y = player_id.y-60+random_func_2(0,60,true);
}
else
{
    instance_destroy();
}
sprite_index = sprite_get("zappy_3");
image_speed = 1;
image_angle = random_func(0,360,true);