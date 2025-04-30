//load.gml

//ground movement
sprite_change_offset("idle",            32, 66);
sprite_change_offset("crouch",          30, 78);
sprite_change_offset("walk",            32, 64);
sprite_change_offset("walkturn",        44, 64);
sprite_change_offset("dash",            62, 66);
sprite_change_offset("dashstart",       62, 66);
sprite_change_offset("dashstop",        62, 66);
sprite_change_offset("dashturn",        62, 66);

//air movement
sprite_change_offset("jumpstart",       38, 70);
sprite_change_offset("jump",            42, 67);
sprite_change_offset("doublejump",      42, 67);
sprite_change_offset("walljump",        42, 67);
sprite_change_offset("pratfall",        52, 96);
sprite_change_offset("land",            38, 70);
sprite_change_offset("landinglag",      38, 70);

//parry button
sprite_change_offset("parry",           36, 64);
sprite_change_offset("roll_forward",    30, 72);
sprite_change_offset("roll_backward",   30, 72);
sprite_change_offset("airdodge",        50, 68);
sprite_change_offset("waveland",        38, 70);
sprite_change_offset("tech",            56, 70);

//hurt
sprite_change_offset("hurt",            45, 70); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("hurt_tumble",     45, 70); //normally called "spinhurt"

//normals
if ("small_sprites" not in self) exit; //prevents error message in the workshop character screen
sprite_change_offset("jab",             45, 76, small_sprites);
sprite_change_offset("utilt",           66, 114, small_sprites);
sprite_change_offset("ftilt",           39, 82, small_sprites);
sprite_change_offset("dtilt",           38, 70, small_sprites);
sprite_change_offset("dattack",         57, 70, small_sprites);
sprite_change_offset("ustrong",         48, 182, small_sprites);
sprite_change_offset("fstrong",         67, 84, small_sprites);
sprite_change_offset("dstrong",         97, 72, small_sprites);
sprite_change_offset("nair",            42, 76, small_sprites);
sprite_change_offset("uair",            67, 100, small_sprites);
sprite_change_offset("fair",            52, 90, small_sprites);
sprite_change_offset("bair",            140, 78, small_sprites);
sprite_change_offset("dair",            43, 78, small_sprites);

//specials
sprite_change_offset("nspecial",        50, 98, small_sprites);
sprite_change_offset("nspecial_air",    50, 98, small_sprites);
sprite_change_offset("uspecial",        60, 102, small_sprites);
sprite_change_offset("fspecial",        50, 70, small_sprites);
sprite_change_offset("fspecial_air",    50, 70, small_sprites);
sprite_change_offset("dspecial",        34, 78, small_sprites);
sprite_change_offset("dspecial_stretch_hurt", 34, 238);
sprite_change_offset("dspecial_rune_hurt", 34, 78);
sprite_change_offset("dspecial_head",   36, 78);
sprite_change_offset("dspecial_stem",    2, 1);
sprite_change_offset("footstool",       44, 166);

sprite_change_offset("ptooie",          11, 11);
sprite_change_offset("ptooie_mask",     18, 18);

//misc
sprite_change_offset("poison_small_active", 40, 46);
sprite_change_offset("poison_small_dissipate", 40, 46);
sprite_change_offset("poison_mid", 54, 46);
sprite_change_offset("poison_big", 54, 46);

sprite_change_offset("taunt",           34, 134, small_sprites);
sprite_change_offset("intro",           24, 47, small_sprites);
sprite_change_offset("plat_post",       65, 80); //draws platform over the player
sprite_change_offset("plat",            32, 47); //don't use this
sprite_change_offset("plat_pre",        65, 80); //draws platform behind the player

sprite_change_offset("hud_player_arrow",3, 2);
sprite_change_offset("offscreen_icons", 16, 16);
sprite_change_offset("offscreen_arrow", 16, 16);

//effects 
sprite_change_offset("bair_explosion_vfx", 140, 85);
sprite_change_offset("fx_explosion", 100, 100); // sprite_change_offset("fx_explosion", 85, 85);
sprite_change_offset("fx_poisonhit", 80, 90);
sprite_change_offset("fx_leaf", 80, 100);
sprite_change_offset("fx_bite", 80, 100);
sprite_change_offset("fx_bigbite", 85, 85);
sprite_change_offset("fx_bigleaf", 85, 85);
sprite_change_offset("nspecial_vfx_full", 30, 42);
sprite_change_offset("nspecial_vfx_half", 30, 42);
sprite_change_offset("nspecial_vfx_spit", 30, 42);
sprite_change_offset("ptooie_trail_vfx", 2, 0);
sprite_change_offset("uspecial_trail", 30, 16);
sprite_change_offset("poison_status_vfx", 8, 8);
sprite_change_offset("poison_consume_vfx", sprite_get_xoffset(asset_get("afx_poison_large")), sprite_get_yoffset(asset_get("afx_poison_large")));

