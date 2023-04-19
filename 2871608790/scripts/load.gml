//load.gml

//ground movement
sprite_change_offset("idle",            51, 72);
sprite_change_offset("crouch",          49, 68);
sprite_change_offset("walk",            75, 96);
sprite_change_offset("walkturn",        46, 96); //doesn't have
sprite_change_offset("dash",            54, 78);
sprite_change_offset("dashstart",       54, 78); //doesn't have
sprite_change_offset("dashstop",        54, 78); //doesn't have
sprite_change_offset("dashturn",        55, 78); //doesn't have

//air movement
sprite_change_offset("jumpstart",       57, 74);
sprite_change_offset("jump",            55, 81);
sprite_change_offset("doublejump",      53, 81); //doesn't have
sprite_change_offset("walljump",        53, 81); //doesn't have
sprite_change_offset("pratfall",        55, 81); //doesn't have
sprite_change_offset("land",            57, 74); //doesn't have
sprite_change_offset("landinglag",      57, 74); //doesn't have

//parry button
sprite_change_offset("parry",           54, 76);
sprite_change_offset("roll_forward",    51, 73); //doesn't have
sprite_change_offset("roll_backward",   51, 73); //doesn't have
sprite_change_offset("airdodge",        55, 81); //doesn't have
sprite_change_offset("waveland",        57, 73); //doesn't have
sprite_change_offset("tech",            57, 90); //doesn't have

//hurt  //doesn't have
sprite_change_offset("hurt",            40, 95); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("hurt_tumble",     40, 95); //normally called "spinhurt"
sprite_change_offset("hurt_crystalized",26, 44);

//normals
sprite_change_offset("jab",             48, 107);
sprite_change_offset("utilt",           43, 105);
sprite_change_offset("ftilt",           75, 113);
sprite_change_offset("dtilt",           56, 77);
sprite_change_offset("dattack",         52, 95);
sprite_change_offset("ustrong",         67, 191);
sprite_change_offset("fstrong",         88, 93);
sprite_change_offset("dstrong",         77, 151);
sprite_change_offset("nair",            66, 89);
sprite_change_offset("uair",            92, 136);
sprite_change_offset("fair",            79, 123);
sprite_change_offset("bair",            90, 97);
sprite_change_offset("dair",            66, 85);

//specials
sprite_change_offset("nspecial",        49, 81);
sprite_change_offset("uspecial",        69, 79);
sprite_change_offset("fspecial",        55, 97);
sprite_change_offset("dspecial",        110, 123);
sprite_change_offset("dspecial_air",    93, 137);

//misc
sprite_change_offset("taunt",           95, 94);
sprite_change_offset("taunt_head",      38, 44);
sprite_change_offset("intro",           24, 47);
sprite_change_offset("plat_post",       32, 47); //draws platform over the player
sprite_change_offset("plat",            32, 47); //don't use this
sprite_change_offset("plat_pre",        32, 47); //draws platform behind the player

sprite_change_offset("hud_player_arrow",3, 2);
sprite_change_offset("offscreen_icons", 16, 16);
sprite_change_offset("offscreen_arrow", 16, 16);

sprite_change_offset("hud_pocket",      8, 8);
sprite_change_offset("hud_items",       8, 8);
sprite_change_offset("hud_pocket_crack",8, 9);

sprite_change_offset("artc_nspec_mask", 16, 16);
sprite_change_offset("artc_fspec_range",24, 24);

//items
sprite_change_offset("artc_nspec_water",    24, 24);
sprite_change_offset("artc_nspec_paper",    24, 24);
sprite_change_offset("artc_nspec_pencil",   24, 24);
sprite_change_offset("artc_nspec_ruler",    24, 24);
sprite_change_offset("artc_nspec_scissors", 24, 24);
sprite_change_offset("artc_nspec_textbook", 24, 26);
sprite_change_offset("artc_nspec_lunchbox", 24, 26);
sprite_change_offset("artc_nspec_soap",     24, 24);
sprite_change_offset("artc_nspec_banana",   24, 24);
sprite_change_offset("artc_nspec_bell",     24, 24);
sprite_change_offset("artc_nspec_bomb",     22, 22);
sprite_change_offset("artc_nspec_soap",     22, 22);
sprite_change_offset("artc_nspec_car",      24, 16);
sprite_change_offset("artc_nspec_spit",     26, 30);

//effects
sprite_change_offset("fx_bell_hit",         78*2, 86*2);
sprite_change_offset("fx_soap_part",        16, 16);
sprite_change_offset("fx_soap_explode",     64, 64);
sprite_change_offset("fx_bomb_explode",     122, 140);
sprite_change_offset("fx_bomb_flash",       48, 47);
sprite_change_offset("fx_car_explode",      77, 71);
sprite_change_offset("fx_water_multi",      96, 96);
sprite_change_offset("fx_water_final",      192, 192);
sprite_change_offset("fx_water_hit",        64, 67);

sprite_change_offset("fx_fspec_spit",       72, 32);
sprite_change_offset("fx_uspec",            69, -2);
sprite_change_offset("fx_dspec",            128, 32);