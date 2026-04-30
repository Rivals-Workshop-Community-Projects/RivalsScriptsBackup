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
sprite_change_offset("jump", 32, 56);
sprite_change_offset("doublejump", 32, 56);
sprite_change_offset("walljump", 32, 56);
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
sprite_change_offset("fair", 72, 104);
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
sprite_change_offset("taunt", 34, 64);

sprite_change_offset("plat", 64, 96);

sprite_change_offset("nspecial_proj", 64, 96);
sprite_change_offset("uspecial_proj", 40, 48);

sprite_change_offset("coins", 16, 16);

//offsets for in built SSL hit effects
sprite_change_offset("hfx_smaller", 64, 64);
sprite_change_offset("hfx_small", 64, 64);
sprite_change_offset("hfx_medium", 100, 100);
sprite_change_offset("hfx_big", 100, 100);
sprite_change_offset("hfx_bigger", 128, 128);
sprite_change_offset("hfx_bigger", 128, 128);
sprite_change_offset("arm-pop", 64, 64);
sprite_change_offset("lemon-pop", 64, 64);
sprite_change_offset("bigshot-pop", 64, 64);

// dust effects
sprite_change_offset("dust_walk", 16, 32);
sprite_change_offset("dust_land", 48, 32);
sprite_change_offset("dust_jump", 36, 32);
sprite_change_offset("dust_djump", 48, 16);
sprite_change_offset("dust_fastfall", 14, 14);
sprite_change_offset("dust_fly_color", 40, 40);
sprite_change_offset("dust_fly_large", 40, 40);
sprite_change_offset("dust_hitbounce", 48, 96);
sprite_change_offset("dust_killspark", 188, 202);
sprite_change_offset("dust_killslash", 480, 32);
sprite_change_offset("dust_killstar", 24, 24);
sprite_change_offset("dust_killspeed", 960, 548);
sprite_change_offset("dust_stage_explosion", 0, 256);

set_victory_theme( sound_get( "victory_char1") );
set_victory_bg( sprite_get("victorybg"));