//article1_init
sprite_index = sprite_get("grassknot_lower");
mask_index = sprite_get("grassknot_mask");
can_be_grounded = true;
ignores_walls = false;
uses_shader = false
state = PS_LAND;
image_index = 5;
state_timer = 40;

knot_health = 1;

lockout = 0;
hit_lockout = 0;

hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew

hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;     