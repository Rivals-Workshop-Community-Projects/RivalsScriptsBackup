//load.gml
//this script is usually used to put in all our sprites' offsets

//ground movement
sprite_change_offset("idle",            50, 74);
sprite_change_offset("crouch",          50, 74);
sprite_change_offset("walk",            50, 74);
sprite_change_offset("walkturn",        50, 74);
sprite_change_offset("dash",            50, 74);
sprite_change_offset("dashstart",       50, 74);
sprite_change_offset("dashstop",        50, 74);
sprite_change_offset("dashturn",        40, 74);

//air movement
sprite_change_offset("jumpstart",       45, 74);
sprite_change_offset("jump",            45, 74);
sprite_change_offset("doublejump",      45, 74);
sprite_change_offset("walljump",        45, 74);
sprite_change_offset("pratfall",        45, 86);
sprite_change_offset("land",            45, 74);
sprite_change_offset("landinglag",      45, 74);

//parry button
sprite_change_offset("parry",           50, 74);
sprite_change_offset("roll_forward",    50, 74);
sprite_change_offset("roll_backward",   50, 74);
sprite_change_offset("airdodge",        52, 88);
sprite_change_offset("waveland",        45, 74);
sprite_change_offset("tech",            55, 79);

//hurt
sprite_change_offset("hurt",            52, 89); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("hurt_tumble",     52, 89); //normally called "spinhurt"

//normals
sprite_change_offset("jab",             55, 97, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("utilt",           50, 74, true);
sprite_change_offset("ftilt",           50, 74, true);
sprite_change_offset("dtilt",           50, 74, true);
sprite_change_offset("dattack",         40, 74, true);
sprite_change_offset("ustrong",         48, 84, true);
sprite_change_offset("ustrong2",        48, 84, true);
sprite_change_offset("fstrong",         39, 79, true);
sprite_change_offset("dstrong",         50, 84, true);
sprite_change_offset("nair",            51, 74, true);
sprite_change_offset("uair",            48, 103, true);
sprite_change_offset("fair",            35, 72, true);
sprite_change_offset("bair",            50, 74, true);
sprite_change_offset("dair",            45, 74, true);

//specials
sprite_change_offset("nspecial",        37, 79, true);
sprite_change_offset("nspecial_air",    35, 80, true);
sprite_change_offset("uspecial",        54, 79, true);
sprite_change_offset("uspecair",        55, 79, true);
sprite_change_offset("fspecial",        34, 79, true);
sprite_change_offset("fspecial_air",    32, 47, true);
sprite_change_offset("dspecial",        54, 84, true);
sprite_change_offset("dspecial_air",    54, 84, true);

//misc
sprite_change_offset("stancestr",       54, 97, true);
sprite_change_offset("stancespback",    54, 97, true);
sprite_change_offset("stancespfoward",  54, 97, true);
sprite_change_offset("stancle",         44, 89, true);
sprite_change_offset("taunt",           44, 89, true);
sprite_change_offset("taunt2",          24, 47, true);
sprite_change_offset("intro",           44, 79, true);
sprite_change_offset("plat_post",       32, 47); //draws platform over the player
sprite_change_offset("plat",            32, 47); //don't use this

sprite_change_offset("tail",            0, 11);
sprite_change_offset("harpoon",         0, 11);
sprite_change_offset("tailspike",       46, 58);
sprite_change_offset("tailspike_mask",  46, 58);
sprite_change_offset("hud_icons",       7, 7);
sprite_change_offset("indicator_arrow", 7, 7);

sprite_change_offset("hud_tailwhip", 0, 0);
sprite_change_offset("hud_dragon", 0, 0);
sprite_change_offset("hud_player_arrow",3, 2);
sprite_change_offset("offscreen_icons", 16, 16);
sprite_change_offset("offscreen_arrow", 16, 16);

sprite_change_offset("walkback_runeF",  24, 47);

//effects
sprite_change_offset("fx_pow_hit1",         64, 64);
sprite_change_offset("fx_pow_hit2",         96, 96);
sprite_change_offset("fx_pow_hit3",         130, 115);
sprite_change_offset("fx_pow_hit4",         96, 96);
sprite_change_offset("fx_pow_part",         8, 8);
sprite_change_offset("fx_fstrong_pop",      64, 64);
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
sprite_change_offset("fx_pow_sparks",       130, 115);
sprite_change_offset("uair_explosion",       95, 200);

//Hurtboxes
sprite_change_offset("hurtbox", 25, 71);