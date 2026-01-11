//load.gml
//this script is usually used to put in all our sprites' offsets

//ground movement
sprite_change_offset("idle",            32, 63);
sprite_change_offset("idle_hurtbox",	64, 93);
sprite_change_offset("crouch",          32, 63);
sprite_change_offset("crouch_hurtbox",	64, 93);
sprite_change_offset("walk",            32, 63);
sprite_change_offset("walkturn",        32, 63);
sprite_change_offset("dash",            32, 63);
sprite_change_offset("dashstart",       32, 63);
sprite_change_offset("dashstop",        32, 63);
sprite_change_offset("dashturn",        32, 63);

//air movement
sprite_change_offset("jumpstart",       32, 63);
sprite_change_offset("jump",            32, 63);
sprite_change_offset("doublejump",      32, 63);
sprite_change_offset("walljump",        32, 63);
sprite_change_offset("pratfall",        32, 63);
sprite_change_offset("land",            32, 63);
sprite_change_offset("landinglag",      32, 63);

//parry button
sprite_change_offset("parry",           32, 63);
sprite_change_offset("roll_forward",    32, 63);
sprite_change_offset("roll_backward",   32, 63);
sprite_change_offset("airdodge",        32, 63);
sprite_change_offset("waveland",        32, 63);
sprite_change_offset("tech",            32, 63);

//hurt
sprite_change_offset("hurt",            32, 63);
sprite_change_offset("hurtground",      32, 63);
sprite_change_offset("bighurt",         32, 63);
sprite_change_offset("uphurt",          32, 63);
sprite_change_offset("downhurt",        32, 63);
sprite_change_offset("bouncehurt",      32, 63);
sprite_change_offset("spinhurt",        32, 63);

//normals
sprite_change_offset("jab",             22, 63, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("ftilt",           32, 63, true);
sprite_change_offset("dtilt",           32, 63, true);
sprite_change_offset("utilt",           32, 63, true);
sprite_change_offset("utilt_p",         32, 63, true);
sprite_change_offset("dattack",         32, 63, true);
sprite_change_offset("fstrong",         32, 63, true);
sprite_change_offset("dstrong",         32, 63, true);
sprite_change_offset("ustrong",         32, 95, true);
sprite_change_offset("nair",            32, 63, true);
sprite_change_offset("fair",            21, 55, true);
sprite_change_offset("fair_p",          21, 55, true);
sprite_change_offset("bair",            66, 63, true);
sprite_change_offset("dair",            32, 39, true);
sprite_change_offset("uair",            32, 63, true);
sprite_change_offset("uair_p",          32, 63, true);

//specials
sprite_change_offset("nspecial",        18, 63, true);
sprite_change_offset("nspecial_air",    18, 63, true);
sprite_change_offset("nspecial_start_hurt",     0, 102, true);
sprite_change_offset("nspecial_middle_hurt",    0, 102, true);
//sprite_change_offset("nspecial_end_hurt",       0, 102, true);
sprite_change_offset("nspecial_angled_start_hurt",  0, 102, true);
sprite_change_offset("nspecial_angled_middle_hurt", 0, 102, true);
//sprite_change_offset("nspecial_angled_end_hurt",    0, 102, true);
sprite_change_offset("vfx_fired",       64, 64, true);
sprite_change_offset("vfx_reticle",     64, 64, true);
sprite_change_offset("fspecial",        32, 63, true);
sprite_change_offset("fspecial_air",    32, 63, true);
sprite_change_offset("dspecial",        23, 63, true);
sprite_change_offset("dspecial_air",    23, 63, true);
sprite_change_offset("uspecial",        32, 63, true);

//misc
sprite_change_offset("taunt",           32, 63, true);
sprite_change_offset("pencil",          32, 63, true);
sprite_change_offset("pencil_p",        32, 63, true);
sprite_change_offset("intro",           32, 63, true);
sprite_change_offset("plat_post",       32, 47); //draws platform over the player
//sprite_change_offset("plat",            32, 47); //don't use this
sprite_change_offset("plat_pre",        32, 47); //draws platform behind the player

sprite_change_offset("hud_player_arrow",3, 2);
sprite_change_offset("offscreen_icons", 16, 16);
sprite_change_offset("offscreen_arrow", 16, 16);