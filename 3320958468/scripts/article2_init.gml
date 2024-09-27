//	article2_init

sprite_index 		= asset_get("empty_sprite");
mask_index 			= asset_get("empty_sprite");

spr_dir 			= player_id.spr_dir;

//	State
state 				= 0;            //	The behavior state the article should start in.
state_timer 		= 0;            //	The point in time during that state the article should start in. (0 = beginning)
hitstop 			= 0;            //	The frames remaining in hitpause. Hitpause automatically prevents movement
hsp 				= 0;            //	The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp 				= 0;            //	The vertical speed of the article.

//	Blastzones
blastzone_r 		= room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l 		= get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t 		= get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b 		= get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);

can_be_grounded 	= true;
ignores_walls 		= false;
free 				= false;
uses_shader 		= true;

hp 					= 18;			//	Health
can_be_hit 			= 10;

prev_vsp            = 0;
prev_hsp            = 0;
has_bounced         = false;
enemy_detected 	    = false;
shoot_angle         = 0;
reset_guard 		= 118;

//	No. Just no.
Pocketable 			= false;