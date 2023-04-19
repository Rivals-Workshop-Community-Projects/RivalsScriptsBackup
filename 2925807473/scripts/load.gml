//load.gml

//ground movement
sprite_change_offset("idle",            23, 47);
sprite_change_offset("crouch",          23, 47);
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
sprite_change_offset("parry",           23, 47);
sprite_change_offset("roll_forward",    42, 47);
sprite_change_offset("roll_backward",   24, 47);
sprite_change_offset("airdodge",        24, 43);
sprite_change_offset("waveland",        24, 47);
sprite_change_offset("tech",            24, 47);

//hurt
sprite_change_offset("hurt",            24, 47); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("hurt_tumble",     24, 47); //normally called "spinhurt"

//normals
sprite_change_offset("jab",             39, 47, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("utilt",           23, 47, true);
sprite_change_offset("ftilt",           39, 47, true);
sprite_change_offset("dtilt",           46, 47, true);
sprite_change_offset("dattack",         24, 47, true);
sprite_change_offset("ustrong",         24, 47, true);
sprite_change_offset("fstrong",         39, 47, true);
sprite_change_offset("dstrong",         39, 47, true);
sprite_change_offset("nair",            20, 43, true);
sprite_change_offset("uair",            23, 47, true);
sprite_change_offset("fair",            42, 47, true);
sprite_change_offset("bair",            23, 43, true);
sprite_change_offset("dair",            23, 58, true);

//specials
sprite_change_offset("nspecial",        23, 47, true);
sprite_change_offset("nspecial_air",    23, 47, true);
sprite_change_offset("uspecial",        42, 47, true);
sprite_change_offset("fspecial",        42, 47, true);
sprite_change_offset("fspecial_air",    32, 47, true);
sprite_change_offset("dspecial",        42, 41, true);
sprite_change_offset("dspecial_air",    20, 47, true);

//misc
sprite_change_offset("taunt",           23, 47, true);
sprite_change_offset("taunt2",          24, 47, true);
sprite_change_offset("intro",           24, 47, true);
sprite_change_offset("plat_post",       32, 47); //draws platform over the player
sprite_change_offset("plat",            32, 47); //don't use this
sprite_change_offset("plat_pre",        32, 47); //draws platform behind the player

sprite_change_offset("hud_player_arrow",3, 2);
sprite_change_offset("offscreen_icons", 16, 16);
sprite_change_offset("offscreen_arrow", 16, 16);
sprite_change_offset("miiv", 60, 30);
sprite_change_offset("phone_open", 23, 47);
sprite_change_offset("chaintip", 23, 47);
sprite_change_offset("chain", 23, 70);
sprite_change_offset("nspecial_start", 64, 47);