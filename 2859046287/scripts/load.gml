//load.gml
//this script is usually used to put in all our sprites' offsets

//ground movement
sprite_change_offset("idle",            23, 47);
sprite_change_offset("crouch",          24, 47);
sprite_change_offset("walk",            24, 47);
sprite_change_offset("walkturn",        24, 47);
sprite_change_offset("dash",            24, 47);
sprite_change_offset("dashstart",       24, 47);
sprite_change_offset("dashstop",        24, 47);
sprite_change_offset("dashturn",        24, 47);

//air movement
sprite_change_offset("jumpstart",       24, 47);
sprite_change_offset("jump",            24, 43);
sprite_change_offset("doublejump",      24, 43);
sprite_change_offset("walljump",        24, 47);
sprite_change_offset("pratfall",        24, 47);
sprite_change_offset("land",            24, 47);
sprite_change_offset("landinglag",      24, 47);

//parry button
sprite_change_offset("parry",           24, 47);
sprite_change_offset("roll_forward",    24, 47);
sprite_change_offset("roll_backward",   24, 47);
sprite_change_offset("airdodge",        24, 43);
sprite_change_offset("waveland",        24, 47);
sprite_change_offset("tech",            24, 47);

//hurt
sprite_change_offset("hurt",            24, 47); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("hurt_tumble",     24, 47); //normally called "spinhurt"

//normals
sprite_change_offset("jab",             13, 47, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("utilt",           24, 47, true);
sprite_change_offset("ftilt",           32, 47, true);
sprite_change_offset("dtilt",           20, 47, true);
sprite_change_offset("dattack",         24, 47, true);
sprite_change_offset("ustrong",         24, 47, true);
sprite_change_offset("fstrong",         27, 47, true);
sprite_change_offset("dstrong",         52, 47, true);
sprite_change_offset("nair",            20, 43, true);
sprite_change_offset("uair",            24, 80, true);
sprite_change_offset("fair",            23, 47, true);
sprite_change_offset("bair",            24, 43, true);
sprite_change_offset("dair",            23, 32, true);

//specials
sprite_change_offset("nspecial",        32, 47, true);
sprite_change_offset("nspecial_air",    32, 47, true);
sprite_change_offset("uspecial",        32, 32, true);
sprite_change_offset("fspecial",        32, 47, true);
sprite_change_offset("fspecial_air",    32, 47, true);
sprite_change_offset("dspecial",        20, 47, true);
sprite_change_offset("dspecial_air",    20, 47, true);

//misc
sprite_change_offset("taunt",           24, 47, true);
sprite_change_offset("taunt2",          24, 47, true);
sprite_change_offset("intro",           24, 47, true);
sprite_change_offset("plat_post",       32, 47); //draws platform over the player
sprite_change_offset("plat",            32, 47); //don't use this
sprite_change_offset("plat_pre",        32, 47); //draws platform behind the player

sprite_change_offset("hud_player_arrow",3, 2);
sprite_change_offset("offscreen_icons", 16, 16);
sprite_change_offset("offscreen_arrow", 16, 16);

sprite_change_offset("walkback_runeF",  24, 47);
sprite_change_offset("fx_gravfield_runeH",  112, 112);

//effects
sprite_change_offset("fx_pow_hit1",         64, 64);
sprite_change_offset("fx_pow_hit2",         96, 96);
sprite_change_offset("fx_pow_hit3",         128, 128);
sprite_change_offset("fx_pow_part",         8, 8);
sprite_change_offset("fx_fstrong_pop",      48, 48);
sprite_change_offset("fx_nspec_proj1",      64, 32);
sprite_change_offset("fx_nspec_proj2",      96, 48);
sprite_change_offset("fx_nspec_proj3",      96, 64);
sprite_change_offset("nspec_proj3_mask",    32, 32);
sprite_change_offset("fx_fspec_crosshair",  15, 15);
sprite_change_offset("fx_fspec_tether",     0, 16);
sprite_change_offset("fx_dspec_spawn",      64, 64);
sprite_change_offset("artc_dspec",          32, 64);
sprite_change_offset("artc_dspec_mask",     24, 52);
sprite_change_offset("fx_dspec_hit",        48, 48);
sprite_change_offset("fx_dspec_despawn",    96, 96);
sprite_change_offset("fx_pow_sparks",       32, 32);