//article3_init

sprite_index = sprite_get("article_wind_outline");
//visible = false;
image_yscale = 0;

state = 0;

live_timer = 0;

max_lifetime = 450;

//max_lifetime = 9999999;

time_to_active = 15;

die_time = 30;

is_horizontal = true;

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;