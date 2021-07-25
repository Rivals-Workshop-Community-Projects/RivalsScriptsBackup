//article1_init

sprite_index = sprite_get("plat_article");

mask_index = sprite_get("plat_article_mask");

state = 0;
state_timer = 0;
airtime = 0;
lockout = 0;
can_be_grounded = true;
ignores_walls = false;
free = false;
uses_shader = 1;