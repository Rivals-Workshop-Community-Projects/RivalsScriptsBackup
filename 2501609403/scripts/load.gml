sprite_change_offset("idle", 24, 60);
sprite_change_offset("hurt", 24, 60);
sprite_change_offset("hurtground", 24, 54);
sprite_change_offset("spinhurt", 32, 60);
sprite_change_offset("bighurt", 26, 56);
sprite_change_offset("crouch", 24, 70);
sprite_change_offset("walk", 24, 60);
sprite_change_offset("walkturn", 24, 60);
sprite_change_offset("dash", 56, 60);
sprite_change_offset("dashstart", 56, 60);
sprite_change_offset("dashstop", 56, 60);
sprite_change_offset("dashturn", 56, 60);

sprite_change_offset("jumpstart", 24, 60);
sprite_change_offset("jump", 24, 60);
sprite_change_offset("doublejump", 24, 60);
sprite_change_offset("walljump", 12, 64);
sprite_change_offset("pratfall", 20, 52);
sprite_change_offset("land", 24, 60);
sprite_change_offset("landinglag", 24, 60);

sprite_change_offset("parry", 28, 56);
sprite_change_offset("roll_forward", 102, 76);
sprite_change_offset("roll_backward", 102, 76);
sprite_change_offset("airdodge", 24, 60);
sprite_change_offset("waveland", 24, 60);
sprite_change_offset("tech", 26, 56);

sprite_change_offset("jab", 24, 60);
sprite_change_offset("dattack", 36, 74);
sprite_change_offset("ftilt", 24, 60);
sprite_change_offset("dtilt", 20, 70);
sprite_change_offset("utilt", 24, 126);
sprite_change_offset("nair", 64, 94);
sprite_change_offset("fair", 30, 54);
sprite_change_offset("bair", 78, 58);
sprite_change_offset("uair", 34, 76);
sprite_change_offset("dair", 84, 102);
sprite_change_offset("fstrong", 24, 56);
sprite_change_offset("ustrong", 46, 128);
sprite_change_offset("dstrong", 62, 62);
sprite_change_offset("nspecial", 28, 62);
sprite_change_offset("fspecial", 48, 164);
sprite_change_offset("uspecial", 28, 60);
sprite_change_offset("dspecial", 30, 56);
sprite_change_offset("taunt", 60, 96);

sprite_change_offset("plat", 52, 0);

sprite_change_offset("crouchroll", 18, 34);
sprite_change_offset("crouchroll_backward", 18, 34);

//projectiles
sprite_change_offset("taunt_proj", 40, 42);
sprite_change_offset("nspecial_proj1.2", 138, 32);
sprite_change_offset("nspecial_jack_proj1.2", 72, 32);
sprite_change_offset("nspecial_proj2.2", 32, 32);
sprite_change_offset("nspecial_proj2.3", 32, 32);
sprite_change_offset("nspecial_proj3", 20, 20);
sprite_change_offset("nspecial_proj6", 20, 20);
sprite_change_offset("nspecial_proj6_mask", 20, 20);
sprite_change_offset("dspeciak_walk", 60, 94);

//fx
sprite_change_offset("fx_walk", 24, 60);
sprite_change_offset("fx_uspecial", 24, 60);
sprite_change_offset("fx_wrench", 44, 40);
sprite_change_offset("fx_dumbell", 44, 40);
sprite_change_offset("fx_smallhit1", 46, 46);
sprite_change_offset("fx_smallhit2", 80, 80);
sprite_change_offset("fx_logsmallhit2", 80, 80);
sprite_change_offset("fx_jack_stars", 110, 130);
sprite_change_offset("fx_rageball", 20, 20);
sprite_change_offset("fx_explosion", 86, 108);
sprite_change_offset("fx_explosion2", 86, 108);
sprite_change_offset("fx_funny1", 32, 60);
sprite_change_offset("fx_funny2", 62, 60);
fx_walk = hit_fx_create(sprite_get("fx_walk"), 55);
fx_uspecial = hit_fx_create(sprite_get("fx_uspecial"), 30);
fx_wrench = hit_fx_create(sprite_get("fx_wrench"), 15);
fx_dumbell = hit_fx_create(sprite_get("fx_dumbell"), 15);
fx_smallhit1 = hit_fx_create(sprite_get("fx_smallhit1"), 15);
fx_smallhit2 = hit_fx_create(sprite_get("fx_smallhit2"), 15);
fx_logsmallhit2 = hit_fx_create(sprite_get("fx_logsmallhit2"), 15);
fx_jackstars = hit_fx_create(sprite_get("fx_jack_stars"), 25);
fx_rageball = hit_fx_create(sprite_get("fx_rageball"), 25);
fx_explosion = hit_fx_create(sprite_get("fx_explosion"), 30);
fx_explosion2 = hit_fx_create(sprite_get("fx_explosion2"), 30);
fx_funny1 = hit_fx_create(sprite_get("fx_funny1"), 25);
fx_funny2 = hit_fx_create(sprite_get("fx_funny2"), 25);

sprite_change_offset("intro", 54, 52);
sprite_change_offset("hud_inventory", 38, 24);
sprite_change_offset("hud_inventory2", 12, 12);

sprite_change_offset("_pho_idle", 10, 88);
sprite_change_offset("_pho_speaker", 24, 60);
sprite_change_offset("_bug_kirb", 32, 54);

set_victory_bg( sprite_get( "custom" ));
set_victory_theme( sound_get( "bugingi_fanfare" ));
sprite_change_offset("collision_mask", 24, 62);
mask_index = (sprite_get("collision_mask"));