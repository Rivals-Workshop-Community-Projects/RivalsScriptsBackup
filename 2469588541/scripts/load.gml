Offset("idle");
Offset("hurt");
Offset("bighurt");
Offset("downhurt");
Offset("bouncehurt");
Offset("spinhurt");
Offset("hurtground");
Offset("crouch");
Offset("walk");
Offset("walkturn");
Offset("dash");
Offset("dashstart");
Offset("dashstop");
Offset("dashturn");

Offset("jumpstart");
Offset("jump");
Offset("doublejump");
Offset("walljump");
Offset("pratfall");
Offset("land");
Offset("landinglag");

Offset("parry");
Offset("roll_forward");
Offset("roll_backward");
Offset("airdodge");
Offset("waveland");
Offset("tech");

Offset("jab");
Offset("dattack");
Offset("ftilt");
Offset("dtilt");
Offset("utilt");
Offset("nair");
Offset("fair");
Offset("bair", 128);
Offset("uair", 0, 64);
Offset("dair");
Offset("fstrong");
Offset("ustrong", 0, 128);
Offset("dstrong", 64, 2);
Offset("nspecial");
Offset("fspecial1", 0, 132);
Offset("fspecial2", -10);
Offset("uspecial");
Offset("dspecial");
Offset("intro");
Offset("taunt");

sprite_change_offset("plat", 64, 94);

sprite_change_offset("shinestar", 64, 22);
sprite_change_offset("star2", 64, 64);
sprite_change_offset("starshot", 64, 64);
sprite_change_offset("bigstar", 64, 64);
sprite_change_offset("bigstarshot", 64, 64);
sprite_change_offset("startrail", 64, 64);
sprite_change_offset("hitsmall", 64, 64);
sprite_change_offset("hitfx", 64, 64);
sprite_change_offset("bighit", 128, 128);

set_victory_bg(sprite_get("vic"));
//set_victory_theme(sound_get("Astro"));
set_victory_theme(sound_get("lukastar_only_2_leads_but_actually_with_a_better_mixed_3rd_lead"));

#define Offset
{
	var _spriteName = argument[0];
    var _xOffset = argument_count > 1 ? argument[1] : 0;
    var _yOffset = argument_count > 2 ? argument[2] : 0;
	sprite_change_offset(_spriteName, 64 + _xOffset, 102 + _yOffset);
}