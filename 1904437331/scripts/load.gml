// Other Setup
set_victory_theme(sound_get("music_win_cosmic"));
set_victory_bg(9); //CH_ABSA - but CH_ABSA leads to Maypul's for some reason

// Effect Sprite Offsets
sprite_change_offset("card_set", 16, 32);
//sprite_change_offset("card_set_hurt", 16, 32);
sprite_change_offset("card_small", 8, 8);
sprite_change_offset("card_medium", 9, 10);
sprite_change_offset("card_large", 16, 16);
sprite_change_offset("fspecial_sun_shot", 40, 30);
sprite_change_offset("fspecial_sun_shot_hurt", 40, 30);
sprite_change_offset("fspecial_sun_burst", 40, 40);
sprite_change_offset("fspecial_star_shot1", 32, 32);
sprite_change_offset("fspecial_star_shot1_hurt", 32, 32);
sprite_change_offset("fspecial_star_shot2", 16, 16);
sprite_change_offset("fspecial_galaxy_shot", 16, 16);
sprite_change_offset("dspecial_galaxy", 48, 48);
sprite_change_offset("sparkle", 5, 5);

// Main Sprite Offsets
sprite_change_offset("idle", 64, 126);
sprite_change_offset("crouch", 64, 126);
sprite_change_offset("walk", 64, 126);
sprite_change_offset("walkturn", 64, 126);
sprite_change_offset("dash", 64, 126);
sprite_change_offset("dashstart", 64, 126);
sprite_change_offset("dashstop", 64, 126);
sprite_change_offset("dashturn", 64, 126);

sprite_change_offset("jump_hurt", 64, 126);

sprite_change_offset("hurt", 64, 126);
sprite_change_offset("hurtground", 64, 126);
sprite_change_offset("uphurt", 64, 126);
sprite_change_offset("downhurt", 64, 126);
sprite_change_offset("bighurt", 64, 126);
sprite_change_offset("bouncehurt", 64, 126);
sprite_change_offset("spinhurt", 64, 126);

sprite_change_offset("jumpstart", 64, 126);
sprite_change_offset("jump", 64, 126);
sprite_change_offset("doublejump", 64, 126);
sprite_change_offset("walljump", 64, 126);
sprite_change_offset("pratfall", 64, 126);
sprite_change_offset("land", 64, 126);
sprite_change_offset("landinglag", 64, 126);

sprite_change_offset("parry", 64, 126);
sprite_change_offset("roll_forward", 64, 126);
sprite_change_offset("roll_backward", 64, 126);
sprite_change_offset("airdodge", 64, 126);
sprite_change_offset("waveland", 64, 126);
sprite_change_offset("tech", 64, 126);

sprite_change_offset("jab", 96, 126);
sprite_change_offset("dattack", 96, 126);
sprite_change_offset("ftilt", 96, 126);
sprite_change_offset("dtilt", 96, 126);
sprite_change_offset("utilt", 96, 126);
sprite_change_offset("nair", 64, 126);
sprite_change_offset("fair", 64, 126);
sprite_change_offset("fair_shot", 34, 9);
sprite_change_offset("bair", 64, 126);
sprite_change_offset("uair", 64, 126);
sprite_change_offset("dair", 64, 126);
sprite_change_offset("fstrong", 96, 126);
sprite_change_offset("ustrong", 96, 126);
sprite_change_offset("dstrong", 96, 126);
sprite_change_offset("nspecial", 64, 126);
sprite_change_offset("fspecial", 64, 126);
sprite_change_offset("uspecial", 64, 126);
sprite_change_offset("dspecial", 64, 126);
sprite_change_offset("taunt", 64, 126);

sprite_change_offset("plat", 56, 0);

roa_signature_de = (real(url) + id) ^ $2a36bc48;
