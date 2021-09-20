if object_index == obj_stage_main exit;

sprite_change_offset("korok", 64, 112);
sprite_index = sprite_get("korok");
mask_index = asset_get("ferret_hurtbox");
image_xscale = 2;
image_yscale = 2;

anim_playing = false;
anim_timer = 0;



hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;