//load.gml
//this script is usually used to put in all our sprites' offsets

//ground movement
sprite_change_offset("idle",            			19, 31);
sprite_change_offset("crouch",          			22, 31);
sprite_change_offset("walk",            			17, 33);
sprite_change_offset("walkturn",        			17, 28);
sprite_change_offset("dash",            			21, 31);
sprite_change_offset("dashstart",       			22, 30);
sprite_change_offset("dashstop",        			16, 31);
sprite_change_offset("dashturn",        			22, 28);

//air movement
sprite_change_offset("jumpstart",       			21, 28);
sprite_change_offset("jump",            			28, 39);
sprite_change_offset("jump_forward",					28, 39);
sprite_change_offset("doublejump",      			24, 43);
sprite_change_offset("walljump",        			26, 38);
sprite_change_offset("pratfall",        			32, 65);
sprite_change_offset("land",            			23, 28);
sprite_change_offset("landinglag",      			29, 38);

//parry button
sprite_change_offset("parry",           			23, 35);
sprite_change_offset("roll_forward",    			20, 35);
sprite_change_offset("roll_backward",   			20, 35);
sprite_change_offset("airdodge",        			28, 40);
sprite_change_offset("airdodge_forward",			28, 40);
sprite_change_offset("airdodge_up",						28, 40);
sprite_change_offset("airdodge_upforward",		28, 40);
sprite_change_offset("airdodge_downforward",	28, 40);
sprite_change_offset("airdodge_back",					28, 40);
sprite_change_offset("airdodge_upback",				28, 40);
sprite_change_offset("airdodge_downback",			28, 40);
sprite_change_offset("airdodge_down",					28, 40);
sprite_change_offset("waveland",        			29, 30);
sprite_change_offset("tech",            			32, 40);

//hurt
sprite_change_offset("hurt",            			15, 29);
sprite_change_offset("bighurt",         			14, 25);
sprite_change_offset("downhurt",        			12, 36);
sprite_change_offset("hurtground",      			21, 28);
sprite_change_offset("bouncehurt",      			22, 25);
sprite_change_offset("uphurt",      					12, 29);
sprite_change_offset("spinhurt",    					19, 31);

//normals
sprite_change_offset("jab",             25, 40, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("utilt",           32, 55, true);
sprite_change_offset("ftilt",           19, 34, true);
sprite_change_offset("dtilt",           19, 26, true);
sprite_change_offset("dattack",         22, 31, true);
sprite_change_offset("ustrong",         32, 52, true);
sprite_change_offset("fstrong",         38, 50, true);
sprite_change_offset("dstrong",         37, 40, true);
sprite_change_offset("nair",            25, 42, true);
sprite_change_offset("uair",            24, 38, true);
sprite_change_offset("fair",            24, 46, true);
sprite_change_offset("bair",            36, 39, true);
sprite_change_offset("dair",            30, 43, true);

//specials
sprite_change_offset("nspecial",        20, 32, true);
sprite_change_offset("nspecial_air",    32, 47, true);
sprite_change_offset("uspecial",        32, 65, true);
sprite_change_offset("fspecial",        30, 47, true);
sprite_change_offset("fspecial_air",    27, 41, true);
sprite_change_offset("dspecial",    		44, 64, true);
sprite_change_offset("dspecial_right",	44, 83, true);
sprite_change_offset("dspecial_left",		44, 83, true);

//misc
sprite_change_offset("taunt",           22, 47, true);
sprite_change_offset("taunt_bird_fx",   5*2, 6*2, true);
sprite_change_offset("intro",           24, 47, true);
sprite_change_offset("plat",            25, 2); //don't use this

sprite_change_offset("hud_player_arrow",			3, 2);
sprite_change_offset("offscreen_icons", 			16, 16);
sprite_change_offset("offscreen_arrow", 			16, 16);

sprite_change_offset("coin",      					8, 10);

sprite_change_offset("slash_active",					236, 14);
sprite_change_offset("slash_frozen",					250/2, 14/2);
sprite_change_offset("slash_frozen_small",		250/2, 14/2);
sprite_change_offset("slash_break_small_fx",	250/2, 20/2);
sprite_change_offset("slash_break_big_fx",		250/2, 20/2);
sprite_change_offset("mist_finer_mask", 			100, 100);
sprite_change_collision_mask( "mist_finer_mask", true, 0, 0, 0, 0, 0, 0 );

sprite_change_offset("grind_mask", 263, 14);
sprite_change_collision_mask( "grind_mask", true, 0, 0, 0, 0, 0, 0 );

sprite_change_offset("gold_expand_mask", 100, 100);
sprite_change_collision_mask( "gold_expand_mask", true, 0, 0, 0, 0, 0, 0 );

sprite_change_offset("rail_grind_forward",					24, 35);
sprite_change_offset("rail_grind_backwards",				24, 35);

sprite_change_offset("coins_hud",					27, 12);
sprite_change_offset("coin_head_display",	6, 3);
sprite_change_offset("level_hud",					44, 9);

//effects
sprite_change_offset("multislash_fx_right", 		55, 97);
sprite_change_offset("multislash_fx_left",  		55, 97);
sprite_change_offset("hat_fall",  							40, 32);
sprite_change_offset("fstrong_hfx", 						14*2, 32*2);
sprite_change_offset("fstrong_explosion_hfx",		128, 128);
sprite_change_offset("dstrong_explosion_hfx",		64, 64);
sprite_change_offset("leaf_small_hfx",					33, 33);
sprite_change_offset("leaf_big_hfx",					104, 100);
sprite_change_offset("dair_fx", 								24*2, 22*2);
sprite_change_offset("bag_hfx", 								26*2, 31*2);
sprite_change_offset("nspecial_mask",     			8, 10);
sprite_change_offset("fspecial_air_lvl2_fx",    19, 40);
sprite_change_offset("fspecial_ground_lvl2_fx", 23, 37);
sprite_change_offset("fspecial_lvl3_fx",				32, 32);
sprite_change_offset("grind_fx",     						35*2, 22*2);
sprite_change_offset("gold_speckles_0",     		14, 14);
sprite_change_offset("gold_speckles_1",     		14, 14);
sprite_change_offset("gold_speckles_2",     		14, 14);
sprite_change_offset("gold_speckles_3",     		14, 14);
sprite_change_offset("gold_speckles_4",     		14, 14);
sprite_change_offset("sparkle_fx",     					2*2, 4*2);
sprite_change_offset("coin_gain_fx",     				4*2, 40*2);
sprite_change_offset("slash_ground_gold_stuck",	1, 32);
sprite_change_offset("slash_ground_hitfx_big",	0*2, 13*2);
sprite_change_offset("gold_sigil",							57, 50);
sprite_change_offset("gold_expand_bg",					171, 34);
sprite_change_offset("gold_expand_fg",					171, 34);
sprite_change_offset("level2_vfx",							78, 54);
sprite_change_offset("level3_vfx",							108, 108);