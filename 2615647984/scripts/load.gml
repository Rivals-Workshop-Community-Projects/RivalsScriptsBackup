sprite_change_offset("idle", 32, 64);
sprite_change_offset("hurtbox", 32, 64);
sprite_change_offset("hurt", 32, 64);
sprite_change_offset("crouch", 32, 64);
sprite_change_offset("walk", 32, 64);
sprite_change_offset("walkturn", 32, 64);
sprite_change_offset("dash", 32, 64);
sprite_change_offset("dashstart", 32, 64);
sprite_change_offset("dashstop", 32, 64);
sprite_change_offset("dashturn", 32, 64);

sprite_change_offset("jumpstart", 32, 64);
sprite_change_offset("jump", 32, 64);
sprite_change_offset("doublejump", 32, 64);
sprite_change_offset("walljump", 32, 64);
sprite_change_offset("pratfall", 32, 64);
sprite_change_offset("land", 32, 64);
sprite_change_offset("landinglag", 32, 64);

sprite_change_offset("parry", 32, 64);
sprite_change_offset("roll_forward", 32, 64);
sprite_change_offset("roll_backward", 32, 64);
sprite_change_offset("airdodge", 32, 64);
sprite_change_offset("waveland", 32, 64);
sprite_change_offset("tech", 32, 64);

sprite_change_offset("jab", 64, 96);
sprite_change_offset("dattack", 64, 96);
sprite_change_offset("ftilt", 64, 64);
sprite_change_offset("dtilt", 64, 96);
sprite_change_offset("utilt", 64, 96);
sprite_change_offset("nair", 64, 96);
sprite_change_offset("fair", 64, 96);
sprite_change_offset("bair", 64, 96);
sprite_change_offset("uair", 96, 128);
sprite_change_offset("dair", 64, 96);
sprite_change_offset("fstrong", 64, 96);
sprite_change_offset("ustrong", 64, 160);
sprite_change_offset("dstrong", 64, 96);
sprite_change_offset("nspecial", 64, 88);
sprite_change_offset("nspecial_air", 64, 96);
sprite_change_offset("fspecial", 64, 96);
sprite_change_offset("uspecial", 64, 96);
sprite_change_offset("dspecial", 64, 96);
sprite_change_offset("taunt", 32, 64);

sprite_change_offset("plat", 64, 96);

sprite_change_offset("nspecial_proj", 64, 96);

sprite_change_offset("coins", 16, 16);

set_victory_theme( sound_get( "victory_char1") );
set_victory_bg( sprite_get("victorybg"));