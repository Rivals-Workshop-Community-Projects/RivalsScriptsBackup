//load.gml

//ground movement
sprite_change_offset("idle",            24, 47);
sprite_change_offset("crouch",          24, 47);
sprite_change_offset("walk",            24, 47);
sprite_change_offset("walkturn",        24, 47);
sprite_change_offset("dash",            24, 47);
sprite_change_offset("dashstart",       24, 47);
sprite_change_offset("dashstop",        24, 47);
sprite_change_offset("dashturn",        24, 47);

//air movement
sprite_change_offset("jumpstart",       24, 47);
sprite_change_offset("jump",            24, 45);
sprite_change_offset("doublejump",      24, 45);
sprite_change_offset("walljump",        24, 45);
sprite_change_offset("pratfall",        24, 45);
sprite_change_offset("land",            24, 47);
sprite_change_offset("landinglag",      24, 47);
sprite_change_offset("pratland",        24, 47);

//parry button
sprite_change_offset("parry",           24, 47);
sprite_change_offset("roll",            24, 47);
sprite_change_offset("airdodge",        24, 45);
sprite_change_offset("waveland",        24, 47);
sprite_change_offset("tech",            24, 47);

//hurt
sprite_change_offset("hurt",            24, 44); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("hurt_tumble",     24, 47); //normally called "spinhurt"

//normals
sprite_change_offset("jab",             24, 47, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("utilt",           24, 47, true);
sprite_change_offset("ftilt",           24, 47, true);
sprite_change_offset("dtilt",           20, 47, true);
sprite_change_offset("dattack",         40, 37, true);
sprite_change_offset("ustrong",         24, 79, true);
sprite_change_offset("fstrong",         32, 47, true);
sprite_change_offset("dstrong",         40, 47, true);
sprite_change_offset("nair",            24, 41, true);
sprite_change_offset("uair",            32, 79, true);
sprite_change_offset("fair",            23, 47, true);
sprite_change_offset("bair",            30, 45, true);
sprite_change_offset("dair",            24, 47, true);

//specials
sprite_change_offset("nspecial",        48, 47, true);
sprite_change_offset("uspecial",        23, 39, true);
sprite_change_offset("fspecial",        24, 47, true);
sprite_change_offset("fspecial_air",    24, 47, true);
sprite_change_offset("dspecial",        24, 47, true);
sprite_change_offset("dspecial_air",    24, 47, true);
sprite_change_offset("dspecial2",       24, 47, true);
sprite_change_offset("dspecial2_air",   24, 47, true);

sprite_change_offset("finalstrong",             24, 47, true);
sprite_change_offset("finalstrong_pratfall",    24, 47, true);

//misc
sprite_change_offset("taunt",           24, 47, true);
sprite_change_offset("taunt2",          24, 47, true);
sprite_change_offset("intro",           24, 47, true);
sprite_change_offset("runeK_dspec",     24, 41, true);
sprite_change_offset("crawl",           24, 31);
sprite_change_offset("plat_post",       32, 47); //draws platform over the player
sprite_change_offset("plat",            32, 47); //don't use this
sprite_change_offset("plat_pre",        32, 47); //draws platform behind the player

sprite_change_offset("rumia_hurtbox",       16, 54);
sprite_change_offset("rumia_hurtbox_hit",   23, 49);
sprite_change_offset("hud_msg1",        48, 48);
sprite_change_offset("hud_msg2",        48, 48);
sprite_change_offset("fx_graze_range",  24, 24);

sprite_change_offset("koakuma_idle",    24, 47);
sprite_change_offset("koakuma_gone",    64, 94);

//effects
sprite_change_offset("fx_dark_hit1",        64, 64);
sprite_change_offset("fx_dark_hit2",        96, 96);
sprite_change_offset("fx_dark_hit3",        160, 128);
sprite_change_offset("fx_dark_hit_part",    16, 16);
sprite_change_offset("fx_graze",            96, 96);
sprite_change_offset("fx_graze_part",       16, 16);

sprite_change_offset("fx_darkorb_start",    32, 32);
sprite_change_offset("fx_darkorb_loop",     32, 32);
sprite_change_offset("fx_darkorb_transfer", 32, 32);
sprite_change_offset("fx_darkorb_end",      64, 72);
sprite_change_offset("fx_darkorb_travel",   64, 32);
sprite_change_offset("fx_darkorb_consume",  160, 160);
sprite_change_offset("fx_darkorb_hit",      64, 64);

sprite_change_offset("fx_darksplash",       32, 64);
sprite_change_offset("fx_darkcharge",       64, 64);
sprite_change_offset("fx_fstrong_smear",    64, 48);
sprite_change_offset("fx_dstrong_smash",    112, 64);
sprite_change_offset("fx_fspec_proj",       64, 32);
sprite_change_offset("fx_fspec_proj_end",   64, 32);
sprite_change_offset("fx_uspec_wings1",     88, 94);
sprite_change_offset("fx_uspec_wings2",     88, 94);
sprite_change_offset("fx_uspec_wings3",     88, 94 + 8);
sprite_change_offset("fx_nspec_trail",      144*1.5, 32*1.5);
sprite_change_offset("fx_nspec",            180, 84);
sprite_change_offset("fx_dspec_charge_part",-16, 32);
sprite_change_offset("fx_dspec_charge_indc",64, 64);

sprite_change_offset("fx_fs_amulet",        -16, 50);
sprite_change_offset("fx_fs_charge",        64, 64);
sprite_change_offset("fx_fs_release",       240, 240);
sprite_change_offset("fx_fs_bighit",        128, 306);

sprite_change_offset("fx_death_cpu",        16, 16);
sprite_change_offset("fx_death_p1",         16, 16);
sprite_change_offset("fx_death_p2",         16, 16);
sprite_change_offset("fx_death_p3",         16, 16);
sprite_change_offset("fx_death_p4",         16, 16);

sprite_change_offset("fx_lancer",           48, 110);

if ("colorO" in self)
{
    darkness_col = make_color_rgb(colorO[0]*255, colorO[1]*255, colorO[2]*255);
    var average = ( (colorO[0]*255 + colorO[1]*255 + colorO[2]*255) / 3); //average of darkness_col's color values to check if it's brighter than the most mid gray
    hud_frame_col = (average > 128 ? c_black : c_white);
}

//WORKSHOP COMPATIBILITIES
sprite_change_offset("mamizou_le_fishe", 16, 40);
sprite_change_offset("sonictrick", 24, 47);