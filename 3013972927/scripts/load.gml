//load.gml
//this script is usually used to put in all our sprites' offsets

//ground movement
sprite_change_offset("idle",            25, 37);
sprite_change_offset("idle_hurt",            50, 74);
sprite_change_offset("crouch",          25, 37);
sprite_change_offset("crouch_hurt",          50, 74);
sprite_change_offset("walk",            25, 37);
sprite_change_offset("walkturn",        25, 37);
sprite_change_offset("dash",            25, 37);
sprite_change_offset("dashstart",       25, 37);
sprite_change_offset("dashstop",        25, 37);
sprite_change_offset("dashturn",        25, 37);

//air movement
sprite_change_offset("jumpstart",       22, 37);
sprite_change_offset("jump",            22, 37);
sprite_change_offset("doublejump",      22, 37);
sprite_change_offset("walljump",        22, 37);
sprite_change_offset("pratfall",        19, 37);
sprite_change_offset("land",            29, 37);
sprite_change_offset("landinglag",      29, 37);
sprite_change_offset("airdodge_back",      25, 37);
sprite_change_offset("airdodge_up",      25, 37);
sprite_change_offset("airdodge_down",      25, 37);
sprite_change_offset("airdodge",      25, 37);

//parry button
sprite_change_offset("parry",           20, 37);
sprite_change_offset("roll_forward",    25, 37);
sprite_change_offset("roll_backward",   25, 37);
sprite_change_offset("airdodge",        25, 37);
sprite_change_offset("waveland",        27, 37);
sprite_change_offset("tech",            27, 37);

//hurt
sprite_change_offset("hurt",            25, 37); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("spinhurt",        25, 37); //normally called "spinhurt"
sprite_change_offset("hurtground", 25, 37);
sprite_change_offset("bighurt", 25, 37);
sprite_change_offset("bouncehurt", 25, 37);
sprite_change_offset("downhurt", 25, 37);
sprite_change_offset("uphurt", 25, 37);
sprite_change_offset("hurt_tumble", 25, 37);
	
//normals
sprite_change_offset("jab",             23, 39, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("utilt",           24, 47, true);
sprite_change_offset("ftilt",           24, 43, true);
sprite_change_offset("dtilt",           22, 43, true);
sprite_change_offset("dattack",         23, 37, true);
sprite_change_offset("ustrong",         25, 59, true);
sprite_change_offset("fstrong",         29, 45, true);
sprite_change_offset("dstrong",         29, 59, true);
sprite_change_offset("nair",            25, 49, true);
sprite_change_offset("uair",            35, 53, true);
sprite_change_offset("fair",            23, 47, true);
sprite_change_offset("bair",            40, 47, true);
sprite_change_offset("dair",            25, 49, true);

//specials
sprite_change_offset("nspecial",        25, 59, true);
sprite_change_offset("nspecial_air",    25, 59, true);
sprite_change_offset("uspecial",        25, 42, true);
sprite_change_offset("fspecial",        25, 59, true);
sprite_change_offset("fspecial_air",    25, 59, true);
sprite_change_offset("dspecial",        25, 52, true);
sprite_change_offset("dspecial_air",    25, 52, true);

//misc
sprite_change_offset("taunt",           26, 64, true);
sprite_change_offset("intro",           26, 64, true);
sprite_change_offset("phone_open",           26, 64, true);
sprite_change_offset("plat_post",       32, 47); //draws platform over the player
sprite_change_offset("plat",            32, 47); //don't use this
sprite_change_offset("plat_pre",        32, 47); //draws platform behind the player

sprite_change_offset("hud_player_arrow",3, 2);
sprite_change_offset("offscreen_icons", 16, 16);
sprite_change_offset("offscreen_arrow", 16, 16);

//sprite_change_offset("c808",32, 64);
//sprite_change_offset("c808_idle",32, 64);

sprite_change_offset("walkback_runeF",  24, 47);

//normals hurt
sprite_change_offset("jab_hurt",             46, 78, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("utilt_hurt",           48, 94, true);
sprite_change_offset("ftilt_hurt",           48, 86, true);
sprite_change_offset("dtilt_hurt",           44, 86, true);
sprite_change_offset("dattack_hurt",         46, 74, true);
sprite_change_offset("ustrong_hurt",         50, 118, true);
sprite_change_offset("fstrong_hurt",         58, 90, true);
sprite_change_offset("dstrong_hurt",         58, 118, true);
sprite_change_offset("nair_hurt",            50, 98, true);
sprite_change_offset("uair_hurt",            70, 106, true);
sprite_change_offset("fair_hurt",            46, 94, true);
sprite_change_offset("bair_hurt",            80, 94, true);
sprite_change_offset("dair_hurt",            50, 98, true);
sprite_change_offset("taunt_hurt",           52, 128, true);

//specials hurt
sprite_change_offset("nspecial_hurt",        50, 118, true);
sprite_change_offset("nspecial_air_hurt",    50, 118, true);
sprite_change_offset("uspecial_hurt",        50, 115, true);
sprite_change_offset("fspecial_hurt",        50, 118, true);
sprite_change_offset("fspecial_air_hurt",    50, 118, true);
sprite_change_offset("dspecial_hurt",        50, 105, true);
sprite_change_offset("dspecial_air_hurt",    50, 105, true);

//effects
sprite_change_offset("fx_pow_hit1",         64, 64);
sprite_change_offset("fx_pow_hit2",         96, 96);
sprite_change_offset("fx_pow_hit3",         128, 128);
sprite_change_offset("fx_pow_part",         8, 8);
sprite_change_offset("fx_fstrong_pop",      48, 68);
sprite_change_offset("fx_nspec_proj1",      64, 32);
sprite_change_offset("fx_nspec_proj2",      96, 48);
sprite_change_offset("fx_nspec_proj3",      96, 64);
sprite_change_offset("nspec_proj3_mask",    32, 32);
sprite_change_offset("fx_crosshair",  31, 31);
sprite_change_offset("fx_crosshair_true",  31, 31);
sprite_change_offset("note1v2",  0, 0);
sprite_change_offset("fx_fspec_tether",     0, 26);
sprite_change_offset("nspecial_proj",     0, 26);
sprite_change_offset("fx_dspec_spawn",      64, 64);

sprite_change_offset("fx_grapple_meter_back",      0, 0);
sprite_change_offset("fx_grapple_meter_mask",      0, 0);
sprite_change_offset("chai_assist_hud_mask_2",      -3, 0);
sprite_change_offset("beat_center",      0, 0);
sprite_change_offset("beat_waves",      0, 0);
sprite_change_offset("beat_meter",      0, 0);

sprite_change_offset("assist_pmnt_summon",          32, 48);
sprite_change_offset("assist_pmnt_attack",          32, 48);
sprite_change_offset("assist_pep_fx",      64, 32);
sprite_change_offset("assist_pmnt_end",          32, 48);
sprite_change_offset("assist_mac_summon",          32, 58);
sprite_change_offset("assist_mac_attack",          32, 58);
sprite_change_offset("assist_mac_end",          32, 58);
sprite_change_offset("assist_kor_summon",          32, 48);
sprite_change_offset("assist_kor_attack",          32, 48);
sprite_change_offset("assist_kor_end",          32, 48);
sprite_change_offset("assist_kor_wind",			36, 64);
sprite_change_offset("assist_kor_windv",			36, 64);

sprite_change_offset("artc_dspec_mask",     24, 52);
sprite_change_offset("fx_dspec_hit",        48, 48);
sprite_change_offset("fx_dspec_despawn",    96, 96);
sprite_change_offset("fx_pow_sparks",       32, 32);
sprite_change_offset("uspecial_start",		32, 28);
sprite_change_offset("uspecial_loop_fx",		0, 28);
sprite_change_offset("chai_fspecial_follow",	0, 28)