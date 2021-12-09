// article2_init
// This can really be anything / they're usually like objects
// This is where the character establishes all variables for this article
// can be article1, article2, article3, articlesolid, articleplatform

can_be_grounded = false;
ignores_walls = true;

state = 0;
state_timer = 0;

sprite_index = sprite_get("shadowball_fx2");
mask_index = -1;
image_index = 0;
image_speed = .4;

random_life = 0;