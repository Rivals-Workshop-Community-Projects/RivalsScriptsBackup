sprite_change_offset("idle", 112, 158);
sprite_change_offset("hurt", 112, 158);
sprite_change_offset("bighurt", 112, 158);
sprite_change_offset("hurtground", 112, 158);
sprite_change_offset("bouncehurt", 112, 158);
sprite_change_offset("spinhurt", 112, 158);
sprite_change_offset("uphurt", 112, 158);
sprite_change_offset("downhurt", 112, 158);
sprite_change_offset("crouch", 112, 158);
sprite_change_offset("walk", 112, 158);
sprite_change_offset("walkturn", 112, 158);
sprite_change_offset("dash", 112, 158);
sprite_change_offset("dashstart", 112, 158);
sprite_change_offset("dashstop", 112, 158);
sprite_change_offset("dashturn", 112, 158);

sprite_change_offset("jumpstart", 112, 158);
sprite_change_offset("jump", 112, 158);
sprite_change_offset("doublejump", 112, 158);
sprite_change_offset("walljump", 112, 158);
sprite_change_offset("pratfall", 112, 158);
sprite_change_offset("land", 112, 158);
sprite_change_offset("landinglag", 112, 158);

sprite_change_offset("parry", 112, 158);
sprite_change_offset("roll_forward", 112, 158);
sprite_change_offset("roll_backward", 112, 158);
sprite_change_offset("airdodge", 112, 158);
sprite_change_offset("waveland", 112, 158);
sprite_change_offset("tech", 112, 158);

sprite_change_offset("jab", 112, 158);
sprite_change_offset("dattack", 128, 190);
sprite_change_offset("ftilt", 112, 158);
sprite_change_offset("dtilt", 112, 158);
sprite_change_offset("utilt", 112, 190);
sprite_change_offset("nair", 112, 158);
sprite_change_offset("fair", 112, 190);
sprite_change_offset("bair", 112, 190);
sprite_change_offset("uair", 112, 190);
sprite_change_offset("dair", 112, 158);
sprite_change_offset("dair_land", 112, 158);
sprite_change_offset("fstrong", 112, 158);
sprite_change_offset("ustrong", 112, 158);
sprite_change_offset("dstrong", 112, 158);
sprite_change_offset("nspecial", 112, 158);
sprite_change_offset("nspecial_air", 112, 158);
sprite_change_offset("fspecial", 112, 158);
sprite_change_offset("fspecial_air", 112, 158);
sprite_change_offset("uspecial", 112, 158);
sprite_change_offset("dspecial", 112, 158);
sprite_change_offset("dspecial_air", 112, 158);
sprite_change_offset("taunt", 112, 158);

sprite_change_offset("plat", 64, 0);

sprite_change_offset("fspecial_ice", 40, 62);
sprite_change_collision_mask("fspecial_ice", false, 2, 16, 16, 64, 64, 1);
sprite_change_offset("fspecial_icedestroy", 40, 62);
sprite_change_offset("fspecial_ice2", 24, 24);
sprite_change_offset("nspecial_missile", 64, 16);
sprite_change_collision_mask("nspecial_missile", false, 2, 34, 10, 88, 24, 0);
sprite_change_offset("ustrong_proj", 24, 48);
sprite_change_offset("uspecial_projstart", 112, 80);
sprite_change_offset("uspecial_proj", 112, 80);
sprite_change_offset("uspecial_projend", 112, 80);
sprite_change_offset("dspecial_wind", 16, 16);

sprite_change_offset("hurt_box", 43, 113);
sprite_change_offset("crouch_hurt_box", 43, 113);

set_victory_theme(sound_get("sfx_duff_victory"));
set_victory_bg( sprite_get("vs_bg") );