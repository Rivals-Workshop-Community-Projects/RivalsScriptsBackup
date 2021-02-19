sprite_change_offset("idle", 30, 78);
sprite_change_offset("hurt", 32, 62);
sprite_change_offset("crouch", 32, 69);
sprite_change_offset("walk", 39, 78);
sprite_change_offset("walkturn", 29, 73);
sprite_change_offset("dash", 52, 94);
sprite_change_offset("dashcolor", 39, 65);
sprite_change_offset("dashstart", 34, 71);
sprite_change_offset("dashstop", 34, 71);
sprite_change_offset("dashturn", 30, 73);

sprite_change_offset("jumpstart", 32, 62);
sprite_change_offset("jump", 35, 77);
sprite_change_offset("doublejump", 35, 67);
sprite_change_offset("walljump", 21, 67);
sprite_change_offset("pratfall", 32, 62);
sprite_change_offset("land", 32, 62);
sprite_change_offset("landinglag", 32, 62);

sprite_change_offset("parry", 35, 71);
sprite_change_offset("roll_forward", 25, 45);
sprite_change_offset("roll_backward", 25, 45);
sprite_change_offset("airdodge", 40, 80);
sprite_change_offset("waveland", 42, 61);
sprite_change_offset("tech", 25, 45);

sprite_change_offset("jab", 30, 69);
sprite_change_offset("dattack", 54, 65);
sprite_change_offset("ftilt", 34, 90);
sprite_change_offset("dtilt", 33, 70);
sprite_change_offset("utilt", 73, 115);
sprite_change_offset("nair", 40, 75);
sprite_change_offset("fair", 39, 87);
sprite_change_offset("bair", 64, 94);
sprite_change_offset("uair", 54, 93);
sprite_change_offset("dair", 32, 69);
sprite_change_offset("fstrong", 50, 76);
sprite_change_offset("ustrong", 60, 107);
sprite_change_offset("dstrong", 80, 100);
sprite_change_offset("nspecial", 38, 72); //55 73
sprite_change_offset("fspecial", 50, 74);
sprite_change_offset("uspecial", 38, 72); //55 80
sprite_change_offset("dspecial", 60, 76); //38 72
sprite_change_offset("taunt", 56, 93);
sprite_change_offset("ring", 0, 0);
sprite_change_offset("ringmask", 20, 12);

sprite_change_offset("plat", 73, 112);

sprite_change_offset("entrance", 39, 73);

sprite_change_offset("soundbreak", 50, 40);

soundbreak = hit_fx_create(sprite_get("soundbreak"), 18);

set_victory_theme( sound_get( "colors" ));