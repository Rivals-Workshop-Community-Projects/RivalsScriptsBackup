// Main Offset is 100, 130
var mainX = 100;
var mainY = 130;

// Grounded Basic
sprite_change_offset("idle", mainX, mainY);
sprite_change_offset("crouch", mainX, mainY);
sprite_change_offset("walk", mainX, mainY);
sprite_change_offset("walkturn", mainX, mainY);
sprite_change_offset("dash", mainX, mainY);
sprite_change_offset("dashstart", mainX, mainY);
sprite_change_offset("dashstop", mainX, mainY);
sprite_change_offset("dashturn", mainX, mainY);

// Hurts
sprite_change_offset("hurt", mainX, mainY);
sprite_change_offset("bighurt", mainX, mainY);
sprite_change_offset("hurtground", mainX, mainY);
sprite_change_offset("bouncehurt", mainX, mainY);
sprite_change_offset("spinhurt", mainX, mainY);
sprite_change_offset("uphurt", mainX, mainY);
sprite_change_offset("downhurt", mainX, mainY);

// Air Basic
sprite_change_offset("jumpstart", mainX, mainY);
sprite_change_offset("jump", mainX, mainY);
sprite_change_offset("doublejump", mainX, mainY);
sprite_change_offset("walljump", mainX, mainY);
sprite_change_offset("pratfall", mainX, mainY);
sprite_change_offset("land", mainX, mainY);
sprite_change_offset("landinglag", mainX, mainY);

// Defense
sprite_change_offset("parry", mainX, mainY);
sprite_change_offset("roll_forward", mainX, mainY);
sprite_change_offset("roll_backward", mainX, mainY);
sprite_change_offset("airdodge", mainX, mainY);
sprite_change_offset("waveland", mainX, mainY);
sprite_change_offset("tech", mainX, mainY);

// Grounded Normals
sprite_change_offset("jab", mainX, mainY);
sprite_change_offset("dattack", mainX, mainY);
sprite_change_offset("ftilt", mainX, mainY);
sprite_change_offset("dtilt", mainX, mainY);
sprite_change_offset("utilt", mainX, mainY);

// Aerials
sprite_change_offset("nair", mainX, mainY);
sprite_change_offset("fair", mainX, mainY);
sprite_change_offset("bair", mainX, mainY);
sprite_change_offset("uair", mainX, mainY);
sprite_change_offset("dair", mainX, mainY);

// Strongs
sprite_change_offset("fstrong", mainX, mainY);
sprite_change_offset("ustrong", mainX, (mainY + 38));
sprite_change_offset("ustrong_kiblast_vfx", mainX, (mainY + 38));
sprite_change_offset("dstrong", mainX, mainY);
sprite_change_offset("dstrong_air", mainX, mainY);

// Specials
sprite_change_offset("nspecial", mainX, mainY);
sprite_change_offset("nspecial_air", mainX, mainY);
sprite_change_offset("kiproj", mainX, mainY);
sprite_change_offset("destructodisk", mainX, mainY);
sprite_change_offset("fspecial", mainX, mainY);
sprite_change_offset("fspecial_dash", mainX, mainY);
sprite_change_offset("fspecial_dash_default", mainX, mainY);
sprite_change_offset("uspecial", mainX, mainY);
sprite_change_offset("dspecial", mainX, mainY);
sprite_change_offset("dspecial_solarflare_kiblast", 99, 97);
sprite_change_offset("dspecial_solarflare_light", 100, 99);

// Taunt(s)
sprite_change_offset("taunt", mainX, mainY);
sprite_change_offset("taunt2", mainX, mainY);

// Plat
sprite_change_offset("plat", mainX, mainY);

// other stuff
sprite_change_offset("_arrow", 7, 0);
sprite_change_offset("ki_large_hitfx", 140, 140);
sprite_change_offset("ki_sml_hitfx", 100, 100);
sprite_change_offset("krillindies", 84, 168);
sprite_change_offset("stone_throw", mainX, mainY);
sprite_change_offset("stone_throw_air", mainX, mainY);
sprite_change_offset("stoneProj", mainX - 2, mainY + 2);