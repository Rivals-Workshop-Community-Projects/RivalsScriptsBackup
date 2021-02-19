// Movement
sprite_change_offset("idle", 26, 68);
sprite_change_offset("crouch", 34, 66);
sprite_change_offset("walk", 32, 78);
sprite_change_offset("walkturn", 36, 76);
sprite_change_offset("dash", 32, 60);
sprite_change_offset("dashstart", 34, 68);
sprite_change_offset("dashstop", 34, 68);
sprite_change_offset("dashturn", 26, 66);

// Hurt
sprite_change_offset("hurt", 32, 74);
sprite_change_offset("bighurt", 32, 68);
sprite_change_offset("hurtground", 22, 54);
sprite_change_offset("bouncehurt", 32, 54);
sprite_change_offset("spinhurt", 32, 74);
sprite_change_offset("downhurt", 32, 52);

// Jumps
sprite_change_offset("jumpstart", 26, 68);
sprite_change_offset("jump", 30, 64);
sprite_change_offset("doublejump", 58, 96);
sprite_change_offset("walljump", 53, 96);
sprite_change_offset("pratfall", 26, 68);
sprite_change_offset("land", 32, 74);
sprite_change_offset("landinglag", 32, 74);

// Defensive
sprite_change_offset("parry", 46, 86);
sprite_change_offset("roll_forward", 82, 138);
sprite_change_offset("roll_backward", 82, 138);
sprite_change_offset("airdodge", 40, 80);
sprite_change_offset("airdodge_back", 32, 80);
sprite_change_offset("airdodge_downback", 32, 80);
sprite_change_offset("airdodge_upback", 32, 80);
sprite_change_offset("airdodge_up", 40, 80);
sprite_change_offset("airdodge_down", 40, 80);
sprite_change_offset("airdodge_upforward", 32, 80);
sprite_change_offset("airdodge_downforward", 32, 80);
sprite_change_offset("airdodge_forward", 32, 80);
sprite_change_offset("waveland", 36, 68);
sprite_change_offset("tech", 32, 74);

// Grounded Normals
sprite_change_offset("dattack", 94, 124);
sprite_change_offset("jab", 74, 68);
sprite_change_offset("ftilt", 36, 78);
sprite_change_offset("utilt", 42, 114);
sprite_change_offset("dtilt", 46, 58);

// Aerial Normals
sprite_change_offset("nair", 70, 140);
sprite_change_offset("fair", 88, 74);
sprite_change_offset("uair", 88, 136);
sprite_change_offset("dair", 88, 122);
sprite_change_offset("dair_proj_mask", 40, 36);
sprite_change_offset("bair", 70, 72);

// Strongs
sprite_change_offset("fstrong", 64, 144);
sprite_change_offset("ustrong", 36, 78);
sprite_change_offset("ustrong_proj1", 40, 75);
sprite_change_offset("ustrong_proj2", 32, 75);
sprite_change_offset("ustrong_proj3", 30, 78);
sprite_change_offset("ustrong_proj4", 42, 78);
sprite_change_offset("dstrong", 174, 90);

// Specials
sprite_change_offset("nspecial", 62, 92);
sprite_change_offset("fspecial", 34, 66);
sprite_change_offset("fspecial_air", 34, 66);
sprite_change_offset("rocket", 62, 106);
sprite_change_offset("rocket_air", 62, 106);
sprite_change_offset("fspecialparticle", 62, 106);
sprite_change_offset("uspecial", 64, 120);
sprite_change_offset("dspecial", 42, 88);

// Taunts
sprite_change_offset("taunt", 54, 82);
sprite_change_offset("tauntalt", 62, 92);
sprite_change_offset("tauntalt_boom", 62, 92);
sprite_change_offset("suicide_boom", 240, 236);
sprite_change_offset("suicide_boom_latter_half", 240, 236);

// Platform
sprite_change_offset("plat", 84, 24);

// Extra stuff
sprite_change_offset("dair_proj", 38, 34);
sprite_change_offset("shortsword", 29, 70);
sprite_change_offset("greatsword", 34, 66);
sprite_change_offset("hit_fx", 86, 92);
sprite_change_offset("groundparticle", 60, 34);

// Pod
sprite_change_offset("pod_mask",32, 64);

sprite_change_offset("player_indicator",6, 10);

sprite_change_offset("pod_dspec_mask",100, 100);
sprite_change_offset("pod_idle", 32, 64);
sprite_change_offset("pod_taunt", 32, 64);
sprite_change_offset("pod_hang", 32, 64);
sprite_change_offset("pod_rocket", 90, 78);
sprite_change_offset("pod_slam", 34, 70);
sprite_change_offset("pod_blade", 88, 70);
sprite_change_offset("pod_ustrong", 32, 64);
sprite_change_offset("pod_dspec_indicator", 58, 60);

sprite_change_offset("podfloat", 56, 90);

set_victory_bg(sprite_get("victory_bg"));
set_victory_theme(sound_get("victory_theme"));

// Compatibilities

// Kirby
sprite_change_offset("kirby2b", 32, 86);
