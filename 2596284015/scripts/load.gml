// load is a script that mainly is used for making the sprite offsets align properly in game.

sprite_change_offset("idle", 48, 126);//
sprite_change_offset("crouch", 48, 126);//
sprite_change_offset("walk", 48, 126);//
sprite_change_offset("walkturn", 48, 126);
sprite_change_offset("dash", 48, 126);//
sprite_change_offset("dashstart", 48, 126);//
sprite_change_offset("dashstop", 48, 126);
sprite_change_offset("dashturn", 48, 126);

sprite_change_offset("jumpstart", 48, 126);//
sprite_change_offset("jump", 48, 126);//
sprite_change_offset("doublejump", 48, 126);//
sprite_change_offset("walljump", 48, 126);
sprite_change_offset("pratfall", 48, 126);
sprite_change_offset("land", 48, 126);//
sprite_change_offset("landinglag", 48, 126);//

sprite_change_offset("parry", 64, 126);//
sprite_change_offset("roll_forward", 48, 126);
sprite_change_offset("roll_backward", 48, 126);
sprite_change_offset("airdodge", 48, 120);
sprite_change_offset("airdodge_forward", 48, 120);
sprite_change_offset("airdodge_back", 48, 120);
sprite_change_offset("airdodge_up", 48, 120);
sprite_change_offset("airdodge_down", 48, 120);
sprite_change_offset("airdodge_upforward", 48, 120);
sprite_change_offset("airdodge_downforward", 48, 120);
sprite_change_offset("airdodge_upback", 48, 120);
sprite_change_offset("airdodge_downback", 48, 120);
sprite_change_offset("waveland", 48, 126);
sprite_change_offset("tech", 48, 126);

sprite_change_offset("hurt", 48, 126);
sprite_change_offset("hurtground", 48, 126);
sprite_change_offset("bighurt", 48, 126);
sprite_change_offset("bouncehurt", 48, 126);
sprite_change_offset("uphurt", 48, 126);
sprite_change_offset("downhurt", 48, 126);
sprite_change_offset("spinhurt", 48, 126);

sprite_change_offset("jab", 48, 126);
sprite_change_offset("dattack", 40, 126);
sprite_change_offset("ftilt", 48, 126);
sprite_change_offset("dtilt", 48, 126);
sprite_change_offset("utilt", 52, 126);
sprite_change_offset("nair", 68, 118);
sprite_change_offset("fair", 68, 118);
sprite_change_offset("bair", 68, 126);
sprite_change_offset("uair", 68, 118);
sprite_change_offset("dair", 68, 118);
sprite_change_offset("fstrong", 58, 126);
sprite_change_offset("ustrong", 48, 146);
sprite_change_offset("dstrong", 94, 126);
sprite_change_offset("nspecial", 96, 118);
sprite_change_offset("fspecial", 48, 118);
sprite_change_offset("uspecial", 48, 126);
sprite_change_offset("dspecial", 48, 118);
sprite_change_offset("nspecial_air", 96, 118);
sprite_change_offset("fspecial_air", 48, 118);
sprite_change_offset("dspecial_air", 48, 118);

sprite_change_offset("taunt", 50, 126);
sprite_change_offset("phone_open", 50, 126);

sprite_change_offset("snookertrap", 21, 20);
sprite_change_offset("snookerball", 21, 20);
sprite_change_offset("billiardball", 13, 13);
sprite_change_offset("chalk2", 72, 84);
sprite_change_offset("chalk3", 132, 34);

sprite_change_offset("plat", 96, 16);
sprite_change_offset("plat2", 96, 16);

sprite_change_offset("setsuka_hurt_box", 48, 126);
sprite_change_offset("setsuka_crouch_box", 48, 126);

sprite_change_offset("kirby_ability", 90, 96);
sprite_change_offset("kirby_ability_air", 90, 96);

set_victory_bg( sprite_get("victorybg"));
set_victory_theme( sound_get("victorytheme"));
