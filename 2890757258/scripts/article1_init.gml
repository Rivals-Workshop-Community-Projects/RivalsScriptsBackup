//	article1_init

sprite_index 	= sprite_get("stormpuff_spawn");
mask_index 		= sprite_get("stormpuff_mask");

puff_anim 		= 0;

//	States
state 			= 0;                                        
state_timer 	= 0;

// Health
hp 					= 16;
can_be_hit 			= 10;
has_been_hit		= false;

//	Misc                                   
hitstop 		= 0;                                        
hsp 			= 0;                                     
vsp 			= 0;
zap_count		= 0;

//spr_dir = player_id.spr_dir;

can_be_grounded 	= false;
ignores_walls 		= false;
free 				= true;
uses_shader 		= true;