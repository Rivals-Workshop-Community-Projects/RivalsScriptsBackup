// load.gml
// called right after the item is loaded into the game. 
// This is where you would normally set sprites’ origins and bounding boxes.

sprite_change_offset("portrait", 350, 350);
sprite_change_offset("cursor", 20, 10);
sprite_change_offset("name tag", 0, 51);
sprite_change_offset("display", 0, 45);
sprite_change_offset("recharged", 25, 68);
sprite_change_offset("grabrecharged", 41, 41);

sprite_change_offset("bighit_fx", 100, 100);
sprite_change_offset("spikyhit_fx", 100, 100);
sprite_change_offset("smallhit1_fx", 100, 100);
sprite_change_offset("smallhit2_fx", 100, 100);
sprite_change_offset("smallhit3_fx", 100, 100);
sprite_change_offset("smallhit4_fx", 100, 100);

sprite_change_offset("crouch_hurtbox", 27, 26);
sprite_change_offset("standing_hurtbox", 25, 46);

sprite_change_offset("box", 23, 22);
sprite_change_offset("box_spin", 25, 24);
sprite_change_offset("plushy", 23, 22);
sprite_change_offset("plushy_spin", 25, 24);
sprite_change_offset("macka", 23, 22);
sprite_change_offset("macka_spin", 23, 22);
sprite_change_offset("flags", 25, 24);
sprite_change_offset("flag_fall", 100, 100);
sprite_change_offset("needle", 6, 5);
sprite_change_offset("tomo_pointer", 6, 6);
//sprite_change_offset("tomo_string", 6, 6);

sprite_change_offset("idle", 32, 44);
sprite_change_offset("hurt", 32, 44);
sprite_change_offset("crouch", 30, 44);
sprite_change_offset("walk", 32, 46);
sprite_change_offset("walkturn", 24, 52);
sprite_change_offset("dash", 30, 46);
sprite_change_offset("dashstart", 30, 46);
sprite_change_offset("dashstop", 30, 46);
sprite_change_offset("dashturn", 30, 54);

sprite_change_offset("jumpstart", 24, 42);
sprite_change_offset("jump", 34, 44);
sprite_change_offset("doublejump", 30, 50);
sprite_change_offset("walljump", 30, 52);
sprite_change_offset("pratfall", 24, 48);
sprite_change_offset("land", 24, 42);
sprite_change_offset("landinglag", 24, 42);

sprite_change_offset("parry", 36, 50);
sprite_change_offset("roll_forward", 20, 40);
sprite_change_offset("roll_backward", 20, 40);
sprite_change_offset("airdodge", 30, 46);
sprite_change_offset("waveland", 24, 42);
sprite_change_offset("tech", 24, 42);

sprite_change_offset("jab", 54, 76);
sprite_change_offset("dattack", 78, 64);
sprite_change_offset("ftilt", 46, 86);
sprite_change_offset("dtilt", 58, 54);
sprite_change_offset("utilt", 58, 100);
sprite_change_offset("nair", 72, 82);
sprite_change_offset("fair", 60, 70);
sprite_change_offset("bair", 72, 80);
sprite_change_offset("uair", 58, 86);
sprite_change_offset("dair", 72, 80);
sprite_change_offset("fstrong", 74, 50);
sprite_change_offset("ustrong", 38, 122);
sprite_change_offset("dstrong", 72, 66);
sprite_change_offset("nspecial_ground", 50, 78);
sprite_change_offset("nspecial_air", 50, 78);
sprite_change_offset("tomochungus", 86, 122);
sprite_change_offset("fspecial", 32, 74);
sprite_change_offset("uspecial", 50, 98);
sprite_change_offset("dspecial", 36, 56);
sprite_change_offset("taunt", 38, 52);
sprite_change_offset("taunt2", 33, 56);
sprite_change_offset("taunt3", 52, 74);
sprite_change_offset("taunt4", 52, 74);

sprite_change_offset("plat", 64, 62);
sprite_change_offset("plat_back", 64, 62);

sprite_change_offset("nthrow", 50, 98);
sprite_change_offset("fthrow", 30, 98);
sprite_change_offset("uthrow", 50, 98);
sprite_change_offset("dthrow", 50, 98);
sprite_change_offset("balloon", 38, 38);
sprite_change_offset("stickygoo", 50, 98);
sprite_change_offset("string", 10, 16);

sprite_change_offset("nspecialfx", 0, 88);
sprite_change_offset("dspecialmenu", 65, 65);
sprite_change_offset("dspecialmenu2", 81, 81);
sprite_change_offset("gifts", 18, 22);
sprite_change_offset("heart", 10, 10);
sprite_change_offset("heartoutline", 12, 12);
sprite_change_offset("meter", 30, 4);

sprite_change_offset("bighurt", 24, 50);
sprite_change_offset("spinhurt", 30, 60);
//sprite_change_offset("uphurt", 74, 118);

sprite_change_offset("hit_medium1", 174, 166);
sprite_change_offset("hit_medium2", 174, 166);
sprite_change_offset("hit_diagonal1", 174, 166);
sprite_change_offset("hit_diagonal3", 174, 166);
sprite_change_offset("hit_diagonal2", 174, 166);
sprite_change_offset("hit_up1", 174, 166);
sprite_change_offset("hit_slap", 174, 166);
sprite_change_offset("hit_heart", 174, 166);

set_victory_theme( sound_get( "victory_tune" ));
set_victory_bg( sprite_get( "victory_bg" ));