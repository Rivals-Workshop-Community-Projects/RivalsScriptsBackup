//article_projectile init
sprite_index = sprite_get("carpet_boost");
mask_index = sprite_get("carpet_coll");
image_xscale = 2*spr_dir;
image_yscale = 2;
depth = 0;

platform_type = 0;
player_id = 0;

state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
free = true;
cvsp = 0;
goingup = false;
return_speed_max = 5;
shy_guy_parried = false;
shy_guy_death = false;
autobomb = noone;
carpet_boost_hitbox = noone;
autobomb_interaction = false;