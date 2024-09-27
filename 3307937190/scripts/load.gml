//load.gml

//ground movement
sprite_change_offset("idle",            28, 49);
sprite_change_offset("crouch",          28, 49);
sprite_change_offset("walk",            28, 49);
sprite_change_offset("walkturn",        28, 49);
sprite_change_offset("dash",            28, 49);
sprite_change_offset("dashstart",       28, 49);
sprite_change_offset("dashstop",        28, 49);
sprite_change_offset("dashturn",        28, 49);

//air movement
sprite_change_offset("jumpstart",       28, 49);
sprite_change_offset("jump",            28, 45);
sprite_change_offset("doublejump",      28, 45);
sprite_change_offset("walljump",        28, 49);
sprite_change_offset("pratfall",        28, 45);
sprite_change_offset("land",            28, 49);
sprite_change_offset("landinglag",      28, 49);

//parry button
sprite_change_offset("parry",           28, 49);
sprite_change_offset("roll_forward",    28, 49);
sprite_change_offset("roll_backward",   28, 49);
sprite_change_offset("airdodge",        29, 45);
sprite_change_offset("waveland",        28, 49);
sprite_change_offset("tech",            28, 49);

//hurt
sprite_change_offset("hurt",            27, 49); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("hurt_tumble",     27, 49); //normally called "spinhurt"

//normals
sprite_change_offset("jab",                 34, 49, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("fx_jab_ink_r",        34, 49, true);
sprite_change_offset("fx_jab_ink_b",        34, 49, true);
sprite_change_offset("fx_jab_ink_y",        34, 49, true);
sprite_change_offset("utilt",               30, 47, true);
sprite_change_offset("ftilt",               32, 47, true);
sprite_change_offset("fx_ftilt_ink_r",      32, 47, true);
sprite_change_offset("fx_ftilt_ink_b",      32, 47, true);
sprite_change_offset("fx_ftilt_ink_y",      32, 47, true);
sprite_change_offset("dtilt",               32, 49, true);
sprite_change_offset("dattack",             46, 49, true);
sprite_change_offset("ustrong",             33, 63, true);
sprite_change_offset("fx_ustrong_ink_r",    32, 71, true);
sprite_change_offset("fx_ustrong_ink_b",    32, 71, true);
sprite_change_offset("fx_ustrong_ink_y",    32, 71, true);
sprite_change_offset("fstrong",             28, 47, true);
sprite_change_offset("fx_fstrong_ink_r",    36, 47, true);
sprite_change_offset("fx_fstrong_ink_b",    36, 47, true);
sprite_change_offset("fx_fstrong_ink_y",    36, 47, true);
sprite_change_offset("dstrong",             30, 55, true);
sprite_change_offset("fx_dstrong_ink_r",    30, 55, true);
sprite_change_offset("fx_dstrong_ink_b",    30, 55, true);
sprite_change_offset("fx_dstrong_ink_y",    30, 55, true);
sprite_change_offset("nair",                41, 59, true);
sprite_change_offset("uair",                40, 59, true);
sprite_change_offset("fair",                41, 59, true);
sprite_change_offset("fx_fair_ink_r",       41, 59, true);
sprite_change_offset("fx_fair_ink_b",       41, 59, true);
sprite_change_offset("fx_fair_ink_y",       41, 59, true);
sprite_change_offset("bair",                52, 55, true);
sprite_change_offset("fx_bair_ink_r",       52, 55, true);
sprite_change_offset("fx_bair_ink_b",       52, 55, true);
sprite_change_offset("fx_bair_ink_y",       52, 55, true);
sprite_change_offset("dair",                32, 43, true);

//specials
sprite_change_offset("nspecial",            34, 47, true);
sprite_change_offset("fx_nspecial_ink_r",   34, 47, true);
sprite_change_offset("nspecial_fire",       40, 48, true);
sprite_change_offset("nspecial2",           38, 55, true);
sprite_change_offset("fx_nspecial_ink_b",   38, 55, true);
sprite_change_offset("nspecial_frost",      32, 18, true);
sprite_change_offset("nspecial3",           26, 63, true);
sprite_change_offset("fx_nspecial_ink_y",   26, 63, true);
sprite_change_offset("nspecial_trap",       48, 12, true);
sprite_change_offset("nspecial_thunder",    64, 236, true);
sprite_change_offset("uspecial",            30, 55, true);
sprite_change_offset("fx_uspecial_ink_r",   30, 55, true);
sprite_change_offset("fx_uspecial_ink_b",   30, 55, true);
sprite_change_offset("fx_uspecial_ink_y",   30, 55, true);
sprite_change_offset("fspecial",            33, 47, true);
sprite_change_offset("fx_boot_ink_r",       33, 47, true);
sprite_change_offset("fx_boot_ink_b",       33, 47, true);
sprite_change_offset("fx_boot_ink_y",       33, 47, true);
sprite_change_offset("dspecial",            26, 47, true);
sprite_change_offset("dspecial_red",        22, 20, true);
sprite_change_offset("dspecial_blue",       22, 20, true);
sprite_change_offset("dspecial_yellow",     22, 20, true);

//misc
sprite_change_offset("taunt",           28, 54, true);
sprite_change_offset("intro",           24, 47, true);
sprite_change_offset("plat_post",       32, 47); //draws platform over the player
sprite_change_offset("plat",            32, 47); //don't use this
sprite_change_offset("plat_pre",        32, 47); //draws platform behind the player

sprite_change_offset("hud_player_arrow",3, 2);
sprite_change_offset("hud_inks", 4, 16);
sprite_change_offset("offscreen_icons", 16, 16);
sprite_change_offset("offscreen_arrow", 16, 16);

//effects
sprite_change_offset("fx_hit_pen1", 96, 48, true);
sprite_change_offset("fx_hit_pen2", 192, 80, true);

sprite_change_offset("fx_hit_pen_ink1", 96, 32, true);
sprite_change_offset("fx_hit_pen_ink2", 192, 48, true);
sprite_change_offset("fx_hit_r1",   64, 64, true);
sprite_change_offset("fx_hit_b1",   64, 64, true);
sprite_change_offset("fx_hit_y1",   64, 64, true);
sprite_change_offset("fx_hit_r2",   96, 96, true);
sprite_change_offset("fx_hit_b2",   96, 96, true);
sprite_change_offset("fx_hit_y2",   96, 96, true);

sprite_change_offset("ink_reaction_p", 96, 96, true);
sprite_change_offset("ink_reaction_g", 96, 96, true);
sprite_change_offset("ink_reaction_o", 96, 96, true);
sprite_change_offset("ink_status_r", 30, 30, true);
sprite_change_offset("ink_status_b", 30, 30, true);
sprite_change_offset("ink_status_y", 30, 30, true);

sprite_change_offset("fx_ashe_trail", 9, 9);
sprite_change_offset("fx_bubble_trail", 9, 9);