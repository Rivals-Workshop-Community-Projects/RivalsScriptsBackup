sprite_change_offset("idle", 76, 98);
sprite_change_offset("crouch", 76, 98);
sprite_change_offset("walk", 76, 98);
sprite_change_offset("walkturn", 76, 98);
sprite_change_offset("dash", 76, 98);
sprite_change_offset("dashstart", 76, 98);
sprite_change_offset("dashstop", 76, 98);
sprite_change_offset("dashturn", 76, 98);

sprite_change_offset("jumpstart", 76, 98);
sprite_change_offset("jump", 76, 98);
sprite_change_offset("doublejump", 76, 86);
sprite_change_offset("walljump", 76, 86);
sprite_change_offset("pratfall", 76, 98);
sprite_change_offset("land", 76, 98);
sprite_change_offset("landinglag", 76, 98);

sprite_change_offset("parry", 76, 98);
sprite_change_offset("roll_forward", 76, 98);
sprite_change_offset("roll_backward", 76, 98);
sprite_change_offset("airdodge", 80, 90);
sprite_change_offset("waveland", 76, 98);
sprite_change_offset("tech", 76, 98);

sprite_change_offset("hurt", 80, 90);
sprite_change_offset("bighurt", 86, 90);
sprite_change_offset("hurtground", 76, 98);
sprite_change_offset("uphurt", 86, 90);
sprite_change_offset("downhurt", 86, 78);
sprite_change_offset("bouncehurt", 80, 90);
sprite_change_offset("spinhurt", 76, 90);

sprite_change_offset("jab", 120, 148);
sprite_change_offset("dattack", 76, 98);
sprite_change_offset("ftilt", 76, 98);
sprite_change_offset("dtilt", 76, 98);
sprite_change_offset("utilt", 158, 198);
sprite_change_offset("nair", 120, 106);
sprite_change_offset("fair", 124, 106);
sprite_change_offset("bair", 120, 106);
sprite_change_offset("uair", 116, 106);
sprite_change_offset("dair", 116, 106);
sprite_change_offset("fstrong", 124, 148);
sprite_change_offset("ustrong", 124, 148);
sprite_change_offset("dstrong", 124, 148);
sprite_change_offset("nspecial", 98, 148);
sprite_change_offset("fspecial", 76, 98);
sprite_change_offset("fspecialtrail", 76, 98)
sprite_change_offset("pratfall2", 76, 98)
sprite_change_offset("uspecial", 80, 90);
sprite_change_offset("dspecial", 124, 148);
sprite_change_offset("dspecial2", 124, 148);
sprite_change_offset("taunt", 76, 98);
sprite_change_offset("phone_open", 76, 98);

sprite_change_offset("plat", 60, 24);

sprite_change_offset("projdair", 26, 12);

sprite_change_offset("minion", 40, 38);
sprite_change_offset("minionspin", 40, 38);
sprite_change_offset("spinmask", 40, 38);
sprite_change_offset("markedminiontrail", 40, 38);
sprite_change_offset("markedminionspin", 40, 38);
sprite_change_offset("miniontrail", 40, 38);
sprite_change_offset("poisonminion", 40, 38);
sprite_change_offset("webbedeffect", 76, 75);

sprite_change_offset("intro", 76, 498);

set_victory_theme( sound_get( "thara_win") );

//The giant enemy spider
if (get_player_color( player ) == 13) {
set_victory_theme(sound_get("the_giant_enemy_spider"));
}