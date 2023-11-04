blook_record = 0;

ignores_walls = false;
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
 
article_should_lockout = false; //set to false if you don't want hit lockout.

mask_index = sprite_get("table_mask")
state = PS_IDLE
hbox_group = player_id.hbox_group_temp
can_be_grounded = true