//article1_init

sprite_index = asset_get("empty_sprite");

mask_index = sprite_get("base_article_mask");

isgrill = 1
state = 0;
state_timer = 0;
airtime = 0;
lockout = 0;
hplockout = 0;
can_be_grounded = true;
ignores_walls = false;
free = false;
uses_shader = false;
lastplayer = player_id.player