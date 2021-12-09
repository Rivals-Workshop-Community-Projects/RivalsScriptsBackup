sprite_change_offset("intro", 38, 58);
sprite_change_offset("idle", 34, 64);
sprite_change_offset("idle_boneless", 28, 64);
sprite_change_offset("hurt", 28, 60);
sprite_change_offset("bighurt", 26, 60);
sprite_change_offset("bouncehurt", 26, 54);
sprite_change_offset("uphurt", 26, 54);
sprite_change_offset("downhurt", 26, 54);
sprite_change_offset("spinhurt", 28, 60);
sprite_change_offset("hurtground", 34, 60);
sprite_change_offset("crouch", 36, 56);
sprite_change_offset("crouch_boneless", 28, 56);
sprite_change_offset("walk", 46, 66);
sprite_change_offset("walk_boneless", 34, 66);
sprite_change_offset("walkturn", 44, 64);
sprite_change_offset("walkturn_boneless", 28, 64);
sprite_change_offset("dash", 46, 60);
sprite_change_offset("dash_boneless", 42, 60);
sprite_change_offset("dashstart", 38, 62);
sprite_change_offset("dashstart_boneless", 32, 62);
sprite_change_offset("dashstop", 38, 62);
sprite_change_offset("dashstop_boneless", 26, 62);
sprite_change_offset("dashturn", 44, 64);
sprite_change_offset("dashturn_boneless", 28, 64);

sprite_change_offset("jumpstart", 32, 54);
sprite_change_offset("jumpstart_boneless", 22, 54);
sprite_change_offset("jump", 50, 82);
sprite_change_offset("jump_boneless", 40, 76);
sprite_change_offset("doublejump", 48, 80);
sprite_change_offset("doublejump_boneless", 40, 72);
sprite_change_offset("walljump", 50, 82);
sprite_change_offset("pratfall", 50, 82);
sprite_change_offset("land", 32, 54);
sprite_change_offset("landinglag", 32, 54);

sprite_change_offset("parry", 34, 98);
sprite_change_offset("parry_boneless", 26, 72);
sprite_change_offset("roll_forward", 44, 66);
sprite_change_offset("roll_backward", 44, 66);
sprite_change_offset("roll_boneless", 36, 66);
sprite_change_offset("airdodge", 46, 64);
sprite_change_offset("airdodge_boneless", 34, 64);
sprite_change_offset("waveland", 36, 54);
sprite_change_offset("waveland_boneless", 36, 54);
sprite_change_offset("tech", 36, 54);

sprite_change_offset("jab", 36, 60);
sprite_change_offset("dattack", 44, 62);
sprite_change_offset("ftilt", 42, 102);
sprite_change_offset("ftilt_hurt", 32, 66);
sprite_change_offset("ftilt_boneless", 30, 74);
sprite_change_offset("ftilt_boneless_extra", 16, 35);
sprite_change_offset("dtilt", 62, 46);
sprite_change_offset("dtilt_hurt", 26, 46);
sprite_change_offset("dtilt_boneless", 22, 54);
sprite_change_offset("utilt_boneless", 44, 102);
sprite_change_offset("nair", 66, 82);
sprite_change_offset("nair_hurt", 32, 72);
sprite_change_offset("nair_boneless", 36, 70);
sprite_change_offset("nair_boneless_extra", 15, 33);
sprite_change_offset("fair", 76, 106);
sprite_change_offset("fair_hurt", 30, 68);
sprite_change_offset("fair_boneless", 32, 68);
sprite_change_offset("bair", 64, 66);
sprite_change_offset("bair_extra", 44, 30);
sprite_change_offset("uair_boneless", 36, 90);
sprite_change_offset("uair_boneless_hurt", 36, 86);
sprite_change_offset("dair", 68, 74);
sprite_change_offset("dair_hurt", 46, 70);
sprite_change_offset("dair_boneless", 56, 62);
sprite_change_offset("dair_boneless_extra", 5, 3);
sprite_change_offset("fstrong", 48, 70);
sprite_change_offset("fstrong_extra", 24, 37);
sprite_change_offset("ustrong", 32, 96);
sprite_change_offset("ustrong_extra", 24, 73);
sprite_change_offset("dstrong", 42, 84);
sprite_change_offset("dstrong_extra", 59, 43);
sprite_change_offset("nspecial", 30, 60);
sprite_change_offset("fspecial", 60, 64);
sprite_change_offset("fspecial_hurt", 50, 64);
sprite_change_offset("fspecial_extra", 50, 64);
sprite_change_offset("fspecial_boneless", 42, 70);
sprite_change_offset("fspecial_boneless_extra", 14, 34);
sprite_change_offset("uspecial", 58, 84);
sprite_change_offset("uspecial_hurt", 44, 70);
sprite_change_offset("uspecial_boneless", 36, 70);
sprite_change_offset("uspecial_boneless_hurt", 35, 65);
sprite_change_offset("dspecial", 50, 100);
sprite_change_offset("dspecial_boneless", 50, 100);
sprite_change_offset("taunt", 34, 72);
sprite_change_offset("taunt_extra", 27, 29);

sprite_change_offset("megaLuc", 12, 28);
sprite_change_offset("riley", 16, 30);
sprite_change_offset("anubis", 9, 29);

sprite_change_offset("plat", 56, 8);
RatioOffset("killcard", 0.5, 0.5);
sprite_change_offset("hud", 12, 12);
RatioOffset("boneHud", 0.5, 0.5);

sprite_change_offset("bone", 24, 60);
sprite_change_collision_mask("bone", true, 0, 0, 0, 0, 0, 0);
sprite_change_offset("boneDespawn", 26, 66);
RatioOffset("boneProj", 0.5, 0.5);
sprite_change_collision_mask("boneProj", true, 0, 0, 0, 0, 0, 0);
RatioOffset("boneMark", 0.5, 0.5);
sprite_change_offset("shinestar", 64, 22);
RatioOffset("aurafx", 0.5, 0.5);
RatioOffset("aurabigfx", 0.5, 0.5);

set_victory_bg(sprite_get("vic"));
set_victory_theme(sound_get("vic"));

#define RatioOffset(_name, _x, _y)
{
	sprite_change_offset(_name, floor(sprite_get_width(sprite_get(_name))*_x), floor(sprite_get_height(sprite_get(_name))*_y));
}