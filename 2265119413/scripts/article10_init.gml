//light
sprite_index = asset_get("empty_sprite");
article_animation_speed = 0.15;
article_animation_frame = 0;
image_alpha = 0;
image_xscale = 2;
image_yscale = 2;
x = x+56;
y = y+24;
mode = 0;
should_exist = false;

state_timer = 0;
flickertime = 900;
flickerover = flickertime + 100;