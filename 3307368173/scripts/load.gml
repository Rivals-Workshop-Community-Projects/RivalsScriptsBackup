//load.gml

//ground movement
sprite_change_offset("idle",            25, 47);
sprite_change_offset("she_tall",        50, 94);
sprite_change_offset("she_crouch",      50, 94);
sprite_change_offset("crouch",          24, 47);
sprite_change_offset("walk",            25, 47);
sprite_change_offset("walkturn",        25, 47);
sprite_change_offset("dash",            25, 49);
sprite_change_offset("dashstart",       25, 49);
sprite_change_offset("dashstop",        25, 49);
sprite_change_offset("dashturn",        25, 49);

//air movement
sprite_change_offset("jumpstart",       27, 49);
sprite_change_offset("jump",            27, 49);
sprite_change_offset("doublejump",      27, 49);
sprite_change_offset("walljump",        27, 49);
sprite_change_offset("pratfall",        27, 49);
sprite_change_offset("land",            24, 47);
sprite_change_offset("landinglag",      24, 47);

//parry button
sprite_change_offset("parry",           27, 49);
sprite_change_offset("roll_forward",    27, 49);
sprite_change_offset("roll_backward",   27, 49);
sprite_change_offset("airdodge",        27, 49);
sprite_change_offset("waveland",        27, 49);
sprite_change_offset("tech",            27, 49);

//hurt
sprite_change_offset("hurt",            26, 49); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("hurt_tumble",     25, 44); //normally called "spinhurt"

//normals
sprite_change_offset("jab",             34, 49, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("utilt",           30, 74, true);
sprite_change_offset("ftilt",           34, 49, true);
sprite_change_offset("dtilt",           37, 49, true);
sprite_change_offset("dattack",         34, 49, true);
sprite_change_offset("ustrong",         51, 74, true);
sprite_change_offset("fstrong",         37, 59, true);
sprite_change_offset("dstrong",         50, 74, true);
sprite_change_offset("dstrong_proj",    50, 74, true);
sprite_change_offset("nair",            51, 56, true);
sprite_change_offset("uair",            54, 56, true);
sprite_change_offset("fair",            53, 55, true);
sprite_change_offset("bair",            51, 56, true);
sprite_change_offset("dair",            53, 55, true);

//specials
sprite_change_offset("nspecial",        36, 49, true);
sprite_change_offset("nspecial_proj",   38, 33, true);
sprite_change_offset("nspecial_fx",     56, 44, true);
sprite_change_offset("uspecial",        50, 73, true);
sprite_change_offset("fspecial",        39, 49, true);
sprite_change_offset("dspecial",        29, 49, true);
sprite_change_offset("dspecial_cut",    26, 30, true);
sprite_change_offset("dspecial_hole1",  30, 31, true);
sprite_change_offset("dspecial_hole2",  30, 31, true);
sprite_change_offset("dspecial_hole3",  41, 41, true);

//frozen frenzy
sprite_change_offset("hud_frenzylevel", 20, 38, true);

//misc
sprite_change_offset("taunt",           25, 49, true);
sprite_change_offset("intro",           24, 47, true);
sprite_change_offset("plat_post",       32, 47); //draws platform over the player
sprite_change_offset("plat",            32, 47); //don't use this
sprite_change_offset("plat_pre",        32, 47); //draws platform behind the player

sprite_change_offset("hud_player_arrow",3, 2);
sprite_change_offset("offscreen_icons", 16, 16);
sprite_change_offset("offscreen_arrow", 16, 16);

//effects
sprite_change_offset("hfx_uair_boom", 60, 0, true);
sprite_change_offset("hfx_bighit", 164, 168, true);
sprite_change_offset("hfx_medhit", 82, 92, true);
sprite_change_offset("hfx_smallhit", 48, 50, true);
sprite_change_offset("fx_ashe_trail", 9, 9);