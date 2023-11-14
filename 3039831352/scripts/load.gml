//load.gml

//ground movement
sprite_change_offset("idle",            24, 47);
sprite_change_offset("crouch",          24, 47);
sprite_change_offset("walk",            24, 47);
sprite_change_offset("walkturn",        24, 47);
sprite_change_offset("dash",            24, 47);
sprite_change_offset("dash_max",        24, 47);
sprite_change_offset("dashstart",       24, 47);
sprite_change_offset("dashstop",        24, 47);
sprite_change_offset("dashturn",        24, 47);

//air movement
sprite_change_offset("jumpstart",       24, 47);
sprite_change_offset("jump",            24, 45);
sprite_change_offset("doublejump",      24, 45);
sprite_change_offset("walljump",        24, 45);
sprite_change_offset("pratfall",        24, 47);
sprite_change_offset("land",            24, 47);
sprite_change_offset("landinglag",      24, 47);
sprite_change_offset("pratland",        24, 47);

//parry button
sprite_change_offset("parry",           24, 47);
sprite_change_offset("roll",            24, 47);
sprite_change_offset("airdodge",        24, 47);
sprite_change_offset("waveland",        24, 47);
sprite_change_offset("tech",            24, 47);

//hurt
sprite_change_offset("hurt",            24, 47); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("hurt_tumble",     24, 43); //normally called "spinhurt"
sprite_change_offset("hurt_kbspin",     24, 24);

//normals
sprite_change_offset("jab",             24, 47, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("utilt",           22, 47, true);
sprite_change_offset("ftilt",           28, 47, true);
sprite_change_offset("dtilt",           32, 31, true);
sprite_change_offset("dattack",         24, 47, true);
sprite_change_offset("ustrong",         28, 63, true);
sprite_change_offset("fstrong",         42, 47, true);
sprite_change_offset("dstrong",         32, 47, true);
sprite_change_offset("nair",            24, 43, true);
sprite_change_offset("uair",            28, 59, true);
sprite_change_offset("fair",            40, 47, true);
sprite_change_offset("bair",            32, 43, true);
sprite_change_offset("dair",            23, 39, true);

//specials
sprite_change_offset("nspecial",        32, 48, true); //updates in animation.gml
sprite_change_offset("uspecial",        24, 47, true);
sprite_change_offset("uspecial_air",    24, 47, true);
sprite_change_offset("uspecial2",       23, 47, true);
sprite_change_offset("fspecial",        40, 39, true);
sprite_change_offset("dspecial",        24, 47, true);
sprite_change_offset("dspecial_air",    24, 47, true);
sprite_change_offset("trick",           24, 47, true);

sprite_change_offset("finalsmash",      24, 47, true);
sprite_change_offset("transform",       24, 47, true);

//misc
sprite_change_offset("taunt",           24, 47, true);
sprite_change_offset("taunt2",          24, 47, true);
sprite_change_offset("intro",           24, 47, true);
sprite_change_offset("walk_push",       23, 47);
sprite_change_offset("tails_hang",      24, 45);
sprite_change_offset("knux_dunk",       54, 32);
sprite_change_offset("runeC",           24, 45, true);
sprite_change_offset("runeH",           24, 47, true);

sprite_change_offset("outtahere", 31, 50);


sprite_change_offset("plat_windy", 40, 47);
sprite_change_offset("plat_speed", 40, 63);
sprite_change_offset("plat_cave", 40, 47);
sprite_change_offset("plat_rush", 40, 63);
sprite_change_offset("plat_seaside", 40, 63);
sprite_change_offset("plat_canyon", 40, 48);

sprite_change_offset("lordX_idle", 24, 47);
sprite_change_offset("lordX_jumpscare", 48, 94);

//article stuff
sprite_change_offset("artc_tr_spawn", 48, 48);
sprite_change_offset("artc_tr_idle", 48, 48);
sprite_change_offset("artc_tr_despawn", 64, 64);
sprite_change_offset("artc_tr_swap", 48, 48);
sprite_change_offset("artc_tr_mask", 48, 48);

sprite_change_offset("fx_sparkle", 7, 7);
sprite_change_offset("fx_trickring_circspark", 96, 96);
sprite_change_offset("fx_trickring_dirspark", 80, 96);
sprite_change_offset("fx_trickring_col", 16, 48);

sprite_change_offset("hud_offscreen_image", 17, 17);

//effects
sprite_change_offset("fx_windhit1", 64, 64);
sprite_change_offset("fx_windhit2", 96, 96);
sprite_change_offset("fx_windpart", 128, 96);
//sprite_change_offset("fx_boost_active", 96, 128);
sprite_change_offset("fx_airdash_aura1", 0, 64);
sprite_change_offset("fx_airdash_aura2", 48, 80); //48, 96
sprite_change_offset("fx_airdash_trail", 32, 32);

sprite_change_offset("fx_dstrong_tornado", 96, 96);
sprite_change_offset("fx_dstrong_tornado_alt", 96, 96);
sprite_change_offset("fx_nairshield", 32, 48);
sprite_change_offset("fx_fair", 40*2, 47*2);
sprite_change_offset("fx_nspec_reticle", 24, 24);
sprite_change_offset("fx_uspec_ringtoss", 24, 47);

sprite_change_offset("fx_fs_bg",                    133, 133);
sprite_change_offset("fx_fs_bg_fire",               168, 80);
sprite_change_offset("fx_fs_elecring",              32, 32);
sprite_change_offset("fx_fs_stun",                  24, 24);
sprite_change_offset("fx_fs_charge",                16, 16);
sprite_change_offset("fx_fs_charge_afterimage",     16, 16);
sprite_change_offset("fx_fs_ball",                  23, 37);
sprite_change_offset("fx_fs_shockwave",             64, 64);
sprite_change_offset("fx_knux_dunk",                128, 32);
sprite_change_offset("fx_runeC_ball",               23, 37);
sprite_change_offset("fx_runeD_charge",             16, 16);
sprite_change_offset("fx_runeD_charge_afterimage",  16, 16);
sprite_change_offset("fx_emeralds",                 96, 96);


//misc
sprite_change_offset("spin_hurtbox",    32, 64);
sprite_change_offset("artc_ring", 16, 16);
sprite_change_offset("artc_ring_X", 16, 16);
sprite_change_offset("fx_ring_collect", 24, 24);
sprite_change_offset("fx_ring_X_collect", 24, 24);
sprite_change_offset("artc_ring_mask", 16, 16);
sprite_change_offset("artc_ring_outline", 9, 9);
sprite_change_offset("proj_runeF", 32, 32);
sprite_change_offset("proj_runeA", 80, 64);
sprite_change_offset("result_rank", 32, 25);


sprite_change_offset("hud_sonic_norm", 0, -2);
sprite_change_offset("hud_sonic_hurt", 0, -2);
sprite_change_offset("hud_sonic_offscreen", 16, 18);

//workshop compats
sprite_change_offset("mamizou_chao", 16, 47);
sprite_change_offset("mamizou_chao_alt", 16, 47);
sprite_change_offset("s_mamizou_chao", 16, 47);
sprite_change_offset("s_mamizou_chao_alt", 16, 47);
sprite_change_offset("gfz_signpost", 18, 41);
sprite_change_offset("gfz_signpost_super", 18, 41);



//super sonic skin
user_event(2);