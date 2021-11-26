//article1_init
sprite_index = sprite_get("leechseed_spawn");
mask_index = sprite_get("leechseed_mask");
can_be_grounded = true;
ignores_walls = true;
uses_shader = true;
state = PS_LAND;
state_timer = 0;
radius_view_timer = 0;
effect_radius = 110;
        
        
max_seed_health = 15;        
seed_health = max_seed_health;        
        
        
lockout = 0;

hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew

hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;     
        
poison_seed = 0;

	with (oPlayer){
	poison_timer_loop = 0;
	}
	
	poison_view_timer = 0;