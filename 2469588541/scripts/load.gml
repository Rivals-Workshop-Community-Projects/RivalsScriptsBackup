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
Offset("bair", 64);
Offset("uair", 0, 32);
Offset("dair");
Offset("fstrong");
Offset("ustrong", 0, 64);
Offset("dstrong", 32, 1);
Offset("nspecial");
Offset("fspecial1", 0, 66);
Offset("fspecial2", -5);
Offset("uspecial");
Offset("dspecial");
Offset("intro");
Offset("taunt");

sprite_change_offset("plat", 32, 47);

sprite_change_offset("shinestar", 64, 22);
sprite_change_offset("star2", 32, 32);
sprite_change_offset("starshot", 32, 32);
sprite_change_offset("bigstar", 32, 32);
sprite_change_offset("bigstarshot", 32, 32);
sprite_change_offset("startrail", 64, 64);
sprite_change_offset("hitsmall", 64, 64);
sprite_change_offset("hitfx", 64, 64);
sprite_change_offset("bighit", 128, 128);

set_victory_bg(sprite_get("vic"));
//set_victory_theme(sound_get("lukastar_only_2_leads_but_actually_with_a_better_mixed_3rd_lead"));
set_victory_theme(sound_get("lukastar_victory_finished"));

#define Offset
{
	var _spriteName = argument[0];
    var _xOffset = argument_count > 1 ? argument[1] : 0;
    var _yOffset = argument_count > 2 ? argument[2] : 0;
	sprite_change_offset(_spriteName, 32 + _xOffset, 51 + _yOffset, 1);
}