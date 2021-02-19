//Platforms
mode = 0;

time = 1200;

if spawn_variables[0] = 0 {
sprite_index = sprite_get("platforms_d");
version = 0;
article_animation_frame = 0;
} else {
sprite_index = sprite_get("platforms_a");
version = 1;
article_animation_frame = 4;
}

desty = y;
destx = x;
maxtime = 1200;

article_animation_speed = 0.2;
article_animation_frame_number = 16;