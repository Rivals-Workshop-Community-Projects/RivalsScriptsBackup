sprite_change_offset("idle", 32, 118);
sprite_change_offset("hurt", 64, 144);
sprite_change_offset("hurtground", 64, 144);
sprite_change_offset("uphurt", 64, 144);
sprite_change_offset("downhurt", 64, 144);
sprite_change_offset("crouch", 54, 120);
sprite_change_offset("walk", 35, 100);
sprite_change_offset("walkturn", 32, 121);
sprite_change_offset("dash", 70, 148);
sprite_change_offset("dashstart", 70, 148);
sprite_change_offset("dashstop", 54, 120);
sprite_change_offset("dashturn", 54, 120);

sprite_change_offset("jumpstart", 54, 120);
sprite_change_offset("jump", 64, 144);
sprite_change_offset("doublejump", 64, 144);
sprite_change_offset("walljump", 64, 144);
sprite_change_offset("pratfall", 64, 144);
sprite_change_offset("land", 54, 120);
sprite_change_offset("landinglag", 54, 120);

sprite_change_offset("parry", 64, 144);
sprite_change_offset("roll_forward", 64, 144);
sprite_change_offset("roll_backward", 64, 144);
sprite_change_offset("airdodge", 64, 144);
sprite_change_offset("waveland", 54, 120);
sprite_change_offset("tech", 64, 144);

sprite_change_offset("jab", 64, 144);
sprite_change_offset("dattack", 64, 144);
sprite_change_offset("ftilt", 64, 144);
sprite_change_offset("dtilt", 64, 112);
sprite_change_offset("utilt", 64, 144);
sprite_change_offset("nair", 64, 144);
sprite_change_offset("fair", 100, 144);
sprite_change_offset("bair", 64, 142);
sprite_change_offset("uair", 64, 144);
sprite_change_offset("dair", 64, 144);
sprite_change_offset("fstrong", 100, 144);
sprite_change_offset("dstrong", 64, 142);
sprite_change_offset("nspecial", 64, 144);
sprite_change_offset("nspecial_air", 64, 144);
sprite_change_offset("fspecial", 64, 144);
sprite_change_offset("uspecial", 80, 164);
sprite_change_offset("taunt", 64, 144);
sprite_change_offset("goldendeath", 64, 144);

sprite_change_offset("airdash", 80, 144);
sprite_change_offset("clap", 64, 144);
sprite_change_offset("fries", 70, 144);

sprite_change_offset("lazer", 64, 144);
sprite_change_offset("finger", 64, 144);

sprite_change_offset("plat", 64, 4);

sprite_change_offset("hamburger", 16, 16);
sprite_change_offset("cheese", 60, 8);
sprite_change_offset("cheese_large", 90, 8);
sprite_change_offset("shockwave", 100, 100);
sprite_change_offset("shockwave_r", 100, 100);
sprite_change_offset("blackhole", 100, 100);
sprite_change_offset("blackhole_r", 100, 100);
sprite_change_offset("error", 314, 239);
sprite_change_offset("cutout", 0, 118);
sprite_change_offset("circle", 0, 40);

sprite_change_offset("airdash_spark", 118, 141);
sprite_change_offset("hamburger_giant", 80, 80);
sprite_change_offset("hamburger_gibs", 80, 80);
sprite_change_offset("willowisp", 26, 50);
sprite_change_offset("willowisp_mask", 30, 30);
sprite_change_offset("soulsiphon", 90, 102);
sprite_change_offset("fry_projectiles", 48, 40);

sprite_change_offset("barrier", 21, 47);
sprite_change_offset("barrier_mask", 26, 47);
sprite_change_offset("barrier_break", 31, 67);

sprite_change_offset("ronald_girl", 64, 144);

set_victory_bg( sprite_get("victorybg"));
set_victory_theme( sound_get("victorytheme"));

shakeexplosion =  hit_fx_create( sprite_get( "shakeexplosion" ), 24);
sprite_change_offset("shakeexplosion", 88, 496);

sprite_change_offset("superspark", 209, 221);
sprite_change_offset("counterspark", 153, 155);