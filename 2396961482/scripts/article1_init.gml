sprite_index = sprite_get("dspecial_proj");
article_anim_speed = 0.2;
article_friction = 0.0;
article_gravity = 0.0;
article_max_fall_speed = 0;
playerurl = player_id.url;
state_timer = 0;
state = 0;

if(get_player_color(player_id.player) != 24)
  sprite_index = sprite_get("dspecial_proj");
else
  sprite_index = sprite_get("sweden");