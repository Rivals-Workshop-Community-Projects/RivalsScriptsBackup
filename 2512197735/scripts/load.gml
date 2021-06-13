sprite_change_offset("idle", 128, 164);
sprite_change_offset("looking_up", 128, 164);
sprite_change_offset("crouch", 128, 164);
sprite_change_offset("crawl", 128, 164);

sprite_change_offset("walk", 128, 164);
sprite_change_offset("walkturn", 128, 164);

sprite_change_offset("dash", 128, 164);
sprite_change_offset("dashstart", 128, 164);
sprite_change_offset("dashstop", 128, 164);
sprite_change_offset("dashturn", 128, 164);

sprite_change_offset("jumpstart", 128, 164);
sprite_change_offset("jump", 128, 164);
sprite_change_offset("doublejump", 128, 164);
sprite_change_offset("walljump", 128, 164);

sprite_change_offset("land", 128, 164);
sprite_change_offset("landinglag", 128, 164);
sprite_change_offset("waveland", 128, 164);

sprite_change_offset("parry", 128, 164);
sprite_change_offset("parry_retro", 128, 164);

sprite_change_offset("roll_forward", 128, 164);
sprite_change_offset("roll_backward", 128, 164);

sprite_change_offset("tech", 128, 164);

sprite_change_offset("airdodge", 128, 164);

sprite_change_offset("hurt", 128, 164);
sprite_change_offset("bighurt", 128, 164);
sprite_change_offset("uphurt", 128, 164);
sprite_change_offset("downhurt", 128, 164);
sprite_change_offset("hurtground", 128, 164);
sprite_change_offset("frozen", 128, 164);
sprite_change_offset("shocked", 128, 164);
sprite_change_offset("burned", 128, 164);
sprite_change_offset("bouncehurt", 128, 164);
sprite_change_offset("bubbled", 128, 164);
sprite_change_offset("wrapped", 128, 164);
sprite_change_offset("spinhurt", 128, 164);

sprite_change_offset("jab", 128, 164);

sprite_change_offset("dattack", 128, 164);
sprite_change_offset("dattack_afterimage", 128, 164);

sprite_change_offset("ftilt", 128, 164);
sprite_change_offset("dtilt", 127, 164);
sprite_change_offset("utilt", 128, 164);

sprite_change_offset("nair", 128, 164);
sprite_change_offset("fair", 128, 164);
sprite_change_offset("bair", 128, 164);

sprite_change_offset("uair", 128, 164);
sprite_change_offset("uair_retro", 128, 164);

sprite_change_offset("dair", 128, 164);

sprite_change_offset("fstrong", 128, 164);
sprite_change_offset("fstrong_retro", 128, 164);

sprite_change_offset("ustrong", 128, 164);
sprite_change_offset("dstrong", 128, 164);

sprite_change_offset("nspecial", 128, 164);
sprite_change_offset("nspecial_throw", 128, 164);

sprite_change_offset("idle_hold", 128, 164);

sprite_change_offset("walk_hold", 128, 164);

sprite_change_offset("jumpstart_hold", 128, 164);

sprite_change_offset("jump_hold", 128, 164);

sprite_change_offset("land_hold", 128, 164);

sprite_change_offset("walkturn_hold", 128, 164);

sprite_change_offset("nspecial_cursor", 20, 64);

sprite_change_offset("fspecial", 128, 164);
sprite_change_offset("fspecial_fx", 128, 164);
sprite_change_offset("fspecial_afterimage", 128, 164);

sprite_change_offset("fspecial_jet", 128, 164);
sprite_change_offset("fspecial_jet_retro", 128, 164);
sprite_change_offset("fspecial_jet_fx", 128, 164);
sprite_change_offset("fspecial_jet_afterimage", 128, 164);

sprite_change_offset("uspecial", 128, 164);
sprite_change_offset("pratfall", 128, 164);

sprite_change_offset("dspecial", 128, 164);
sprite_change_offset("dspecial_afterimage", 128, 164);
sprite_change_offset("dspecial_proj", 132, 156);
sprite_change_offset("dspecial_probj2", 132, 156);

sprite_change_offset("taunt", 128, 164);
sprite_change_offset("taunt2", 128, 164);
sprite_change_offset("taunt3", 128, 164);

sprite_change_offset("plat", 64, 84);

sprite_change_offset("placeholder_gem", 26, 38);

set_victory_theme( sound_get( "victory" ));
set_victory_bg( sprite_get( "victorybg" ));


sprite_change_offset("abyss_death", 128, 166);

sprite_change_offset("garlic", 19, 36);

sprite_change_offset("final_smash", 128, 164);
sprite_change_offset("final_smash_air", 128, 164);

sprite_change_offset("waluigi_projectile", 34, 42);
sprite_change_offset("waluigi_projectile_trail", 24, 32);
sprite_change_offset("waluigi_projectile_mask", 34, 42);

sprite_change_offset("final_smash_explosion", 128, 186);

sprite_change_offset("intro", 128, 164);
sprite_change_offset("intro_portal", 128, 164);
sprite_change_offset("intro_portal_glow", 128, 164);

sprite_change_offset("wario_miiverse", 60, 30);
sprite_change_offset("portrait_wario", 27, 39);
sprite_change_offset("sign", 18, 41);
sprite_change_offset("feri_costume_wario", 84, 114);
sprite_change_offset("wario_goomba", 27, 39);


if (get_player_color( player ) == 8) {
set_victory_theme(sound_get("victory_gamecube"));
}

if (get_player_color( player ) == 21) {
set_victory_theme(sound_get("victory_boss"));
}


