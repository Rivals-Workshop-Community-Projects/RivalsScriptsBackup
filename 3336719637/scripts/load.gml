//load.gml
//this script is usually used to put in all our sprites' offsets

//ground movement
sprite_change_offset("idle",            81, 97);
sprite_change_offset("crouch",          81, 97);
sprite_change_offset("walk",            81, 97);
sprite_change_offset("walkturn",        81, 97);
sprite_change_offset("dash",            81, 97);
sprite_change_offset("dashstart",       81, 97);
sprite_change_offset("dashstop",        81, 97);
sprite_change_offset("dashturn",        81, 97);

//air movement
sprite_change_offset("jumpstart",       81, 97); 
sprite_change_offset("jump",            81, 97); 
sprite_change_offset("doublejump",      81, 97);
sprite_change_offset("walljump",        81, 97);
sprite_change_offset("pratfall",        81, 97);
sprite_change_offset("land",            81, 97);
sprite_change_offset("landinglag",      81, 97);

//parry button
sprite_change_offset("parry",           81, 97); 
sprite_change_offset("roll_forward",    81, 97);
sprite_change_offset("roll_backward",   81, 97);
sprite_change_offset("airdodge",        81, 97);
sprite_change_offset("waveland",        81, 97); 
sprite_change_offset("tech",            81, 97);

//hurt
sprite_change_offset("hurtground",      81, 97);
sprite_change_offset("bighurt",         81, 97); 
sprite_change_offset("downhurt",        81, 97); 
sprite_change_offset("bouncehurt",      81, 97);
sprite_change_offset("uphurt",          81, 97);
sprite_change_offset("spinhurt",        81, 97);
sprite_change_offset("hurt",            81, 97);
sprite_change_offset("buddy_screenko", 81, 97);

//normals
sprite_change_offset("jab",             81, 97, 1);
sprite_change_offset("utilt",           81, 97, 1);
sprite_change_offset("ftilt",           81, 97, 1);
sprite_change_offset("dtilt",           81, 97, 1);
sprite_change_offset("dattack",         81, 97, 1);
sprite_change_offset("ustrong",         81, 97, 1);
sprite_change_offset("fstrong",         81, 97, 1);
sprite_change_offset("dstrong",         81, 97, 1);
sprite_change_offset("nair",            81, 97, 1);
sprite_change_offset("uair",            81, 97, 1);
sprite_change_offset("fair",            81, 97, 1);
sprite_change_offset("bair",            81, 97, 1);
sprite_change_offset("dair",            81, 97, 1);

//specials
sprite_change_offset("nspecial",        81, 97, 1);
//sprite_change_offset("nspecial_air",    81, 97, 1);
sprite_change_offset("uspecial",        81, 97, 1);
sprite_change_offset("fspecial",        81, 97, 1);
sprite_change_offset("air_fspecial",    81, 97, 1);
sprite_change_offset("dspecial",        81, 97, 1);
//sprite_change_offset("dspecial_air",    81, 97, 1);

//gas
sprite_change_offset("Gascloudtaunt",  48, 48, 1);
sprite_change_offset("Gascloudtauntdie",  48, 48, 1);
sprite_change_offset("Gascloudlevel1",  64, 64, 1);
sprite_change_offset("Gascloudlevel2",  64, 64, 1);
sprite_change_offset("Gascloudlevel3",  64, 64, 1);
sprite_change_offset("Gascloudlevel1die",  64, 64, 1);
sprite_change_offset("Gascloudlevel2die",  64, 64, 1);
sprite_change_offset("Gascloudlevel3die",  64, 64, 1);
sprite_change_offset("Gascloudmask",  64, 64, 1);

//misc
sprite_change_offset("taunt",           81, 97, 1);
sprite_change_offset("tauntalt",        81, 97, 1);
sprite_change_offset("plat_post",       81, 97, 1);
sprite_change_offset("plat_pre",        81, 97, 1);
sprite_change_offset("plat", 81, 97, 1);

sprite_change_offset("hud_player_arrow", 3, 2);
sprite_change_offset("offscreen_icons", 16, 16);
sprite_change_offset("offscreen_arrow", 16, 16);
sprite_change_offset("hurtbox",           160, 192, 1);
sprite_change_offset("hurtbox_crouching",           160, 196, 1);

sprite_change_offset("fspecialfireeffect",	18, 15);
sprite_change_offset("fspecialbomb",	160, 160);
sprite_change_offset("fspecialbomb_die",	160, 160);
sprite_change_offset("fspecialbomb_hit",	160, 160);

sprite_change_collision_mask("Gascloudmask", 0, 0, 0, 0, 0, 0, 0);
