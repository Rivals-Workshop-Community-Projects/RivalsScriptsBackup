//load.gml

//ground movement
sprite_change_offset("idle",            46, 80);
sprite_change_offset("crouch",          46, 80);
sprite_change_offset("walk",            46, 80);
sprite_change_offset("walkturn",        46, 80);
sprite_change_offset("dash",            46, 80);
sprite_change_offset("dashstart",       46, 80);
sprite_change_offset("dashstop",        46, 80);
sprite_change_offset("dashturn",        52, 80);

//air movement
sprite_change_offset("jumpstart",       46, 80);
sprite_change_offset("jump",            46, 80);
sprite_change_offset("doublejump",      46, 80);
sprite_change_offset("walljump",        46, 80);
sprite_change_offset("pratfall",        46, 80);
sprite_change_offset("land",            46, 80);
sprite_change_offset("landinglag",      46, 80);

//parry button
sprite_change_offset("parry",           46, 80);
sprite_change_offset("roll_forward",    46, 80);
sprite_change_offset("roll_backward",   46, 80);
sprite_change_offset("airdodge",        46, 80);
sprite_change_offset("waveland",        46, 80);
sprite_change_offset("tech",            46, 80);

//hurt
sprite_change_offset("hurt",            46, 80); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("hurt_tumble",     46, 80); //normally called "spinhurt"

//normals
sprite_change_offset("jab",             46, 80); //this  alligns the hurtboxes when using small_sprites
sprite_change_offset("utilt",           46, 80);
sprite_change_offset("ftilt",           46, 80);
sprite_change_offset("dtilt",           46, 80);
sprite_change_offset("dattack",         46, 80);
sprite_change_offset("ustrong",         46, 121);
sprite_change_offset("fstrong",         70, 81);
sprite_change_offset("dstrong",         46, 80);
sprite_change_offset("nair",            46, 80);
sprite_change_offset("uair",            46, 80);
sprite_change_offset("fair",            47, 80);
sprite_change_offset("bair",            46, 80);
sprite_change_offset("dair",            46, 80);

//specials
sprite_change_offset("nspecial",        46, 80);
sprite_change_offset("nspecial_air",    46, 80);
sprite_change_offset("uspecial",        46, 140);
sprite_change_offset("fspecial",        46, 80);
sprite_change_offset("fspecial_air",    46, 80);
sprite_change_offset("dspecial",        46, 80);
sprite_change_offset("dspecial_air",    46, 80);

//misc
sprite_change_offset("taunt",           46, 80);
sprite_change_offset("taunt2",          46, 80);
sprite_change_offset("intro",           46, 80);
sprite_change_offset("plat_post",       32, 47); //draws platform over the player
sprite_change_offset("plat",            32, 47); //don't use this
sprite_change_offset("plat_pre",        32, 47); //draws platform behind the player
sprite_change_offset("baseball",        12, 12); //draws platform behind the player

sprite_change_offset("hud_player_arrow", 3, 2);
sprite_change_offset("offscreen_icons", 16, 16);
sprite_change_offset("offscreen_arrow", 16, 16);

//effects