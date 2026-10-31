//article1_init 
sprite_index = sprite_get("rocket");
state_timer = 0;
article_animation_speed = 0.5;
article_animation_frame = 0;
article_animation_frame_number = 1;
state = 0;
can_be_grounded = false;
ignores_walls = true;
free = true;

vsp = 0;

hitplayer = 0;

article_hit_timer = 0;
article_hit_trigger = 20;