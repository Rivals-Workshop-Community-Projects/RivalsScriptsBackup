var xx = 37;
var yy = 60;
sprite_change_offset("idle", xx, yy);
sprite_change_offset("olym_hurtbox", 25, 64);
sprite_change_offset("crouch", xx, yy);
sprite_change_offset("olym_crouch_hurtbox", 15, 52);
sprite_change_offset("walk", 32, yy);
sprite_change_offset("walkturn", 39, 42);
sprite_change_offset("dash", xx, yy);
sprite_change_offset("dashstart", 31, 36);
sprite_change_offset("dashstop", 42/2, 72/2);
sprite_change_offset("dashturn", 13, 35);

sprite_change_offset("jumpstart", xx, yy);
sprite_change_offset("jump", xx, yy);
sprite_change_offset("doublejump", xx, yy);
sprite_change_offset("walljump", xx, xx);
sprite_change_offset("pratfall", 64, 83);
sprite_change_offset("land", 39, 60);
sprite_change_offset("landinglag", 20, 34);

sprite_change_offset("parry", 45, 42);
sprite_change_offset("roll_forward", 44, 48);
sprite_change_offset("roll_backward", 44, 48);
sprite_change_offset("airdodge", xx, yy);
sprite_change_offset("waveland", xx, yy);
sprite_change_offset("tech", xx, 42);

sprite_change_offset("hurt", 40/2, 70/2);
sprite_change_offset("bighurt", 32/2, 64/2);
sprite_change_offset("hurtground", 32/2, 64/2);
sprite_change_offset("uphurt", 28/2, 72/2);
sprite_change_offset("downhurt", 32/2, 64/2);
sprite_change_offset("bouncehurt", 32/2, 64/2);
sprite_change_offset("spinhurt", 32/2, 72/2);

sprite_change_offset("jab", xx, yy, true);
sprite_change_offset("dattack", xx, yy, true);
sprite_change_offset("ftilt", xx, yy, true);
sprite_change_offset("dtilt", xx-5, yy, true);
sprite_change_offset("utilt", xx, yy, true);
sprite_change_offset("nair", xx, yy, true);
sprite_change_offset("fair", xx, yy, true);
sprite_change_offset("bair", xx, yy, true);
sprite_change_offset("uair", xx, yy, true);
sprite_change_offset("dair", xx, yy, true);
sprite_change_offset("fstrong", xx, yy, true);
sprite_change_offset("ustrong", xx, yy, true);
sprite_change_offset("dstrong", xx, yy, true);
sprite_change_offset("nspecial", xx, yy, true);
sprite_change_offset("nspecial_air", 68/2, 102/2, true);
sprite_change_offset("nspecial_2", xx, yy, true);
sprite_change_offset("nspecial_2_air", xx, yy, true);
sprite_change_offset("nspecial2", xx, yy, true);
sprite_change_offset("nspecial2_air", xx, yy, true);
sprite_change_offset("fspecial",  xx, yy, true);
sprite_change_offset("fspecial_air", xx, yy, true);
sprite_change_offset("uspecial",  xx, yy, true);
sprite_change_offset("uspecial_air", xx, yy, true);
sprite_change_offset("dspecial",  xx, yy, true);
sprite_change_offset("dspecial_air", xx, yy, true);
sprite_change_offset("taunt", 37, 42);

sprite_change_offset("plat", 30, 47);

sprite_change_offset("nspecial_proj", 37, 60+60);
sprite_change_offset("nspecial_gem", 35, 52);
sprite_change_offset("nspecial_field", 196, 200);

sprite_change_offset("intro", 23, 43);
sprite_change_offset("g7intro", 30, 44);
sprite_change_offset("tauntG7", 30, 44);

sprite_change_offset("hfx_shine_large", 100,105);
sprite_change_offset("hfx_olym_spark", 10, 40);
sprite_change_offset("hfx_olym_hitspark", 80, 74);
sprite_change_offset("hfx_olym_stunsparkle", 50, 82);
sprite_change_offset("hfx_gem_cancel", 66, 98);

sprite_change_offset("hfx_armorshine", 46, 85);
sprite_change_offset("hfx_dashcancel", 90, 62);
sprite_change_offset("hfx_dashcancel2", 30, 62);
sprite_change_offset("sfx_olymcharge", 57, 38);
sprite_change_offset("G7_EFfect", 45, 84);
sprite_change_offset("vfx_gembreak", 41, 40);

//sprite_change_offset("santahat_idle", 40, 78);
// sprite_change_offset("surfboard_idle", 40, 78);
sprite_change_offset("olym_copy", 74, 70);
sprite_change_offset("feri_costume_olym", 84, 114);

//Victory Screen
set_victory_theme(sound_get("olym_victory"));
set_victory_bg(sprite_get("olym_victoryscreen"));