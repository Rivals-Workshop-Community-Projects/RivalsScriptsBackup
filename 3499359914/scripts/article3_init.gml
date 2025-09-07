//Beanstalk/Flower

sprite_index = asset_get("empty_sprite");

//State Machine
state = 0;
state_timer = 0;
state_length = 0;

//Animation Handler
current_sprite = sprite_get("beanstalk");
current_anim_frame = 0;
current_opacity = 1;

depth = 29;

//Flower-specific
flower_height = 5;
flower_next = noone;
flower_leaf = noone;

flower_lifetime = 900;
flower_destroy = false;