sprite_change_offset("idle", 32, 62);
sprite_change_offset("crouch", 34, 58);
sprite_change_offset("walk", 32, 66);
sprite_change_offset("walkturn", 58, 116);
sprite_change_offset("dash", 32, 66);
sprite_change_offset("dashstart", 58, 116);
sprite_change_offset("dashstop", 58, 116);
sprite_change_offset("dashturn", 58, 116);

sprite_change_offset("jumpstart", 58, 116);
sprite_change_offset("jump", 36, 74);
sprite_change_offset("doublejump", 40, 74);
sprite_change_offset("walljump", 51, 108);
sprite_change_offset("pratfall", 58, 116);
sprite_change_offset("land", 58, 116);
sprite_change_offset("landinglag", 58, 116);

sprite_change_offset("parry", 48, 62);
sprite_change_offset("roll_forward", 52, 68);
sprite_change_offset("roll_backward", 52, 68);
sprite_change_offset("airdodge", 58, 116);
sprite_change_offset("waveland", 32, 64);
sprite_change_offset("tech", 32, 66);

sprite_change_offset("hurt", 46, 66);
sprite_change_offset("hurtground", 46, 66);
sprite_change_offset("bighurt", 46, 62);
sprite_change_offset("uphurt", 32, 62);
sprite_change_offset("downhurt", 32, 62);
sprite_change_offset("bouncehurt", 32, 62);
sprite_change_offset("spinhurt", 46, 66);

sprite_change_offset("jab", 134, 168);
sprite_change_offset("dattack", 134, 168);
sprite_change_offset("ftilt", 134, 168);
sprite_change_offset("dtilt", 134, 168);
sprite_change_offset("utilt", 134, 168);
sprite_change_offset("nair", 134, 168);
sprite_change_offset("fair", 134, 168);
sprite_change_offset("bair", 134, 168);
sprite_change_offset("uair", 134, 168);
sprite_change_offset("dair", 134, 168);
sprite_change_offset("fstrong", 134, 168);
sprite_change_offset("ustrong", 134, 168);
sprite_change_offset("dstrong", 134, 168);
sprite_change_offset("nspecial", 134, 168);
sprite_change_offset("fspecial", 134, 168);
sprite_change_offset("uspecial", 134, 168);
sprite_change_offset("dspecial", 134, 168);
sprite_change_offset("dspecial_air", 134, 168);
sprite_change_offset("taunt", 60, 116);

sprite_change_offset("mound_burst", 134, 168);
sprite_change_offset("mound_idle", 134, 168);
sprite_change_offset("mound_die", 134, 168);

sprite_change_offset("wallclimb_dust_bg", 11, 32);
sprite_change_offset("wallclimb_dust_fg", 11, 32);

sprite_change_offset("plat", 68, 72);

sprite_change_offset("nspecial_proj", 64, 94);

//Victory
set_victory_bg( sprite_get( "victory_bg" ));
set_victory_theme( sound_get( "sfx_knux_win" ));