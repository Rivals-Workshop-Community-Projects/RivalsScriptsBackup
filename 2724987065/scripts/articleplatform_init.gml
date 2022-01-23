// article_init is used when the article object is created.


time_alive = 0;
start_dying = false;
die_timer = 10;
sprite_index = sprite_get("plat");
mask_index = sprite_get("plat");
image_index = get_gameplay_time()/10;
free = true;
can_be_grounded = false;
ignores_walls = true;
spr_dir = 1;