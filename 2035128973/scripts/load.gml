if ("player" in self && get_synced_var(player) == 15005)
{
	sprite_change_offset("idleAcc", 39, 49);
	sprite_change_offset("hurtAcc", 39, 49);
	sprite_change_offset("crouchAcc", 39, 49);
	sprite_change_offset("walkAcc", 39, 49);
	sprite_change_offset("walkturnAcc", 39, 49, 1);
	sprite_change_offset("dashAcc", 39, 49);
	sprite_change_offset("jumpAcc", 39, 49, 1);
	sprite_change_offset("pratfallAcc", 39, 49);
	sprite_change_offset("parryAcc", 39, 49);
	
	sprite_change_offset("jabAcc", 39, 49, 1);
	sprite_change_offset("dattackAcc", 39, 49, 1);
	sprite_change_offset("ftiltAcc", 39, 49, 1);
	sprite_change_offset("dtiltAcc", 39, 49, 1);
	sprite_change_offset("utiltAcc", 39, 49, 1);
	sprite_change_offset("bairAcc", 49, 49, 1);
	sprite_change_offset("uairAcc", 39, 49, 1);
	sprite_change_offset("dairAcc", 39, 49, 1);
	sprite_change_offset("fstrongAcc", 39, 49, 1);
	sprite_change_offset("ustrongAcc", 39, 114, 1);
	sprite_change_offset("dstrongAcc", 39, 49, 1);
	sprite_change_offset("dspecialAcc", 39, 49, 1);
	sprite_change_offset("tauntAcc", 44, 130);
	
	set_victory_bg(sprite_get("vicAcc"));
	set_victory_theme(sound_get("luc_taunt"));
}
else
{
	sprite_change_offset("intro", 19, 29);
	sprite_change_offset("idle", 17, 32);
	sprite_change_offset("idle_boneless", 14, 32);
	sprite_change_offset("hurt", 14, 30);
	sprite_change_offset("bighurt", 13, 30);
	sprite_change_offset("bouncehurt", 13, 27);
	sprite_change_offset("uphurt", 13, 27);
	sprite_change_offset("downhurt", 13, 27);
	sprite_change_offset("spinhurt", 14, 30);
	sprite_change_offset("hurtground", 17, 30);
	sprite_change_offset("crouch", 18, 28);
	sprite_change_offset("crouch_boneless", 14, 28);
	sprite_change_offset("walk", 23, 33);
	sprite_change_offset("walk_boneless", 17, 33);
	sprite_change_offset("walkturn", 22, 32);
	sprite_change_offset("walkturn_boneless", 14, 32);
	sprite_change_offset("dash", 23, 30);
	sprite_change_offset("dash_boneless", 21, 30);
	sprite_change_offset("dashstart", 19, 31);
	sprite_change_offset("dashstart_boneless", 16, 31);
	sprite_change_offset("dashstop", 19, 31);
	sprite_change_offset("dashstop_boneless", 13, 31);
	sprite_change_offset("dashturn", 22, 32);
	sprite_change_offset("dashturn_boneless", 14, 32);
	
	sprite_change_offset("jumpstart", 16, 27);
	sprite_change_offset("jumpstart_boneless", 11, 27);
	sprite_change_offset("jump", 25, 41);
	sprite_change_offset("jump_boneless", 20, 38);
	sprite_change_offset("doublejump", 24, 40);
	sprite_change_offset("doublejump_boneless", 20, 36);
	sprite_change_offset("walljump", 25, 41);
	sprite_change_offset("pratfall", 25, 41);
	sprite_change_offset("land", 16, 27);
	sprite_change_offset("landinglag", 16, 27);
	
	sprite_change_offset("parry", 17, 49);
	sprite_change_offset("parry_boneless", 13, 36);
	sprite_change_offset("roll_forward", 22, 33);
	sprite_change_offset("roll_backward", 22, 33);
	sprite_change_offset("roll_boneless", 18, 33);
	sprite_change_offset("airdodge", 23, 32);
	sprite_change_offset("airdodge_boneless", 17, 32);
	sprite_change_offset("waveland", 17, 27);
	sprite_change_offset("waveland_boneless", 17, 27);
	sprite_change_offset("tech", 17, 27);
	
	sprite_change_offset("jab", 18, 30, 1);
	sprite_change_offset("dattack", 22, 31, 1);
	sprite_change_offset("ftilt", 30, 51);
	sprite_change_offset("ftilt_hurt", 32, 66);
	sprite_change_offset("ftilt_boneless", 15, 37, 1);
	sprite_change_offset("ftilt_boneless_extra", 16, 35);
	sprite_change_offset("dtilt", 31, 23);
	sprite_change_offset("dtilt_hurt", 26, 46);
	sprite_change_offset("dtilt_boneless", 11, 27, 1);
	sprite_change_offset("utilt_boneless", 22, 51, 1);
	sprite_change_offset("nair", 33, 41);
	sprite_change_offset("nair_hurt", 32, 72);
	sprite_change_offset("nair_boneless", 18, 35, 1);
	sprite_change_offset("nair_boneless_extra", 15, 33);
	sprite_change_offset("fair", 40, 54);
	sprite_change_offset("fair_hurt", 30, 68);
	sprite_change_offset("fair_boneless", 16, 34, 1);
	sprite_change_offset("bair", 32, 33, 1);
	sprite_change_offset("bair_extra", 44, 32);
	sprite_change_offset("uair", 42, 60);
	sprite_change_offset("uair_hurt", 36, 74);
	sprite_change_offset("uair_boneless", 18, 45);
	sprite_change_offset("uair_boneless_hurt", 36, 86);
	sprite_change_offset("dair", 34, 37);
	sprite_change_offset("dair_hurt", 46, 70);
	sprite_change_offset("dair_boneless", 28, 31, 1);
	sprite_change_offset("dair_boneless_extra", 5, 3);
	sprite_change_offset("fstrong", 24, 35, 1);
	sprite_change_offset("fstrong_extra", 24, 37);
	sprite_change_offset("ustrong", 16, 48, 1);
	sprite_change_offset("ustrong_extra", 24, 73);
	sprite_change_offset("dstrong", 21, 42, 1);
	sprite_change_offset("dstrong_extra", 59, 43);
	sprite_change_offset("nspecial", 15, 30, 1);
	sprite_change_offset("fspecial", 30, 32);
	sprite_change_offset("fspecial_hurt", 50, 64);
	sprite_change_offset("fspecial_extra", 25, 32);
	sprite_change_offset("fspecial_boneless", 21, 35, 1);
	sprite_change_offset("fspecial_boneless_extra", 14, 34);
	sprite_change_offset("uspecial", 29, 42);
	sprite_change_offset("uspecial_hurt", 44, 70);
	sprite_change_offset("uspecial_boneless", 18, 35);
	sprite_change_offset("uspecial_boneless_hurt", 35, 65);
	sprite_change_offset("dspecial", 25, 50, 1);
	sprite_change_offset("dspecial_boneless", 25, 50, 1);
	sprite_change_offset("taunt", 17, 36);
	sprite_change_offset("taunt_extra", 27, 29);
	
	sprite_change_offset("megaLuc", 12, 28);
	sprite_change_offset("riley", 16, 30);
	sprite_change_offset("anubis", 9, 29);
	
	RatioOffset("killcard", 0.5, 0.5);
	sprite_change_offset("hud", 12, 12);
	RatioOffset("boneHud", 0.5, 0.5);
	
	sprite_change_offset("bone", 12, 30);
	sprite_change_collision_mask("bone", true, 0, 0, 0, 0, 0, 0);
	sprite_change_offset("boneDespawn", 13, 33);
	RatioOffset("boneProj", 0.5, 0.5);
	RatioOffset("boneProj_mask", 0.5, 0.5);
	sprite_change_collision_mask("boneProj_mask", true, 0, 0, 0, 0, 0, 0);
	RatioOffset("boneMark", 0.5, 0.5);
	sprite_change_offset("shinestar", 64, 22);
	RatioOffset("aurafx", 0.5, 0.5);
	RatioOffset("aurabigfx", 0.5, 0.5);
	
	set_victory_bg(sprite_get("vic"));
	set_victory_theme(sound_get("vic"));
}
sprite_change_offset("plat", 28, 4);

#define RatioOffset(_name, _x, _y)
{
	sprite_change_offset(_name, floor(sprite_get_width(sprite_get(_name))*_x), floor(sprite_get_height(sprite_get(_name))*_y));
}