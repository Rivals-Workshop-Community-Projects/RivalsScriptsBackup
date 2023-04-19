sprite_change_offset("idle", 160, 194);
sprite_change_offset("hurt", 32, 62);
sprite_change_offset("crouch", 160, 194);
sprite_change_offset("walk", 160, 194);
sprite_change_offset("walkturn", 160, 194);
sprite_change_offset("dash", 160, 194);
sprite_change_offset("dashstart", 160, 194);
sprite_change_offset("dashstop", 160, 194);
sprite_change_offset("dashturn", 160, 194);

sprite_change_offset("jumpstart", 160, 194);
sprite_change_offset("jump", 160, 194);
sprite_change_offset("doublejump", 160, 194);
sprite_change_offset("walljump", 158, 194);
sprite_change_offset("pratfall", 160, 194);
sprite_change_offset("land", 160, 194);
sprite_change_offset("landinglag", 160, 194);

sprite_change_offset("parry", 160, 194);
sprite_change_offset("roll_forward", 160, 194);
sprite_change_offset("roll_backward", 160, 194);
sprite_change_offset("airdodge", 160, 194);
sprite_change_offset("waveland", 160, 194);
sprite_change_offset("tech", 160, 194);

sprite_change_offset("jab", 160, 194);
sprite_change_offset("dattack", 160, 194);
sprite_change_offset("ftilt", 160, 194);
sprite_change_offset("dtilt", 160, 194);
sprite_change_offset("utilt", 160, 194);
sprite_change_offset("nair", 160, 194);
sprite_change_offset("fair", 160, 194);
sprite_change_offset("bair", 160, 194);
sprite_change_offset("table_miss", 160, 194);
sprite_change_offset("table_hit", 160, 194);
sprite_change_offset("chair_break", 160, 194);
sprite_change_offset("uair", 160, 194);
sprite_change_offset("dair", 160, 194);
sprite_change_offset("fstrong", 160, 194);
sprite_change_offset("ustrong", 160, 194);
sprite_change_offset("dstrong", 160, 194);
sprite_change_offset("nspecial", 160, 194);
sprite_change_offset("nspecial_air", 160, 194);
sprite_change_offset("pot", 160, 158);
sprite_change_offset("lamp", 160, 162);
sprite_change_offset("tray", 160, 162);
sprite_change_offset("vase", 160, 162);
sprite_change_offset("book", 160, 162);
sprite_change_offset("hanger", 160, 162);
sprite_change_offset("fspecial", 160, 194);
sprite_change_offset("fspecial_air", 160, 194);
sprite_change_offset("uspecial", 160, 194);
sprite_change_offset("uspecial_air", 160, 194);
sprite_change_offset("dust", 160, 194);
sprite_change_offset("dspecial", 160, 194);
sprite_change_offset("bento", 160, 188);
sprite_change_offset("bento_air", 160, 188);
sprite_change_offset("bento_mask", 160, 194);
sprite_change_offset("taunt", 160, 194);

sprite_change_offset("plat", 160, 194);
sprite_change_offset("meter", 160, 194);
sprite_change_offset("ex_vfx", 160, 194);

sprite_change_offset("nspecial_proj", 64, 94);

sprite_change_offset("hurt", 160, 194);
sprite_change_offset("hurtground", 160, 194);

sprite_change_offset("training_menu", 114, 100);
sprite_change_offset("cursor", 6, 4);

if (get_player_color(player) != 6)
{
    set_victory_theme(sound_get("victoryTL"));
}
else if (get_player_color(player) == 6)
{
    set_victory_theme(sound_get("victoryAACC"));
}