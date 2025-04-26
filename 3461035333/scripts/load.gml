xl = 64;
yl = 126;

sprite_change_offset("idle", xl, yl);
sprite_change_offset("hurt", xl, yl);
sprite_change_offset("crouch", xl, yl);
sprite_change_offset("walk", xl, yl);
sprite_change_offset("walkturn", xl, yl);
sprite_change_offset("dash", xl, yl);
sprite_change_offset("dashstart", xl, yl);
sprite_change_offset("dashstop", xl, yl);
sprite_change_offset("dashturn", xl, yl);

sprite_change_offset("jumpstart", xl, yl);
sprite_change_offset("jump", xl+4, yl-16);
sprite_change_offset("doublejump", xl+4, yl-20);
sprite_change_offset("walljump", xl-16, yl-16);
sprite_change_offset("pratfall", xl, yl-16);
sprite_change_offset("land", xl, yl);
sprite_change_offset("landinglag", xl, yl);

sprite_change_offset("parry", xl, yl);
sprite_change_offset("roll_forward", xl, yl);
sprite_change_offset("roll_backward", xl, yl);
sprite_change_offset("airdodge", xl+4, yl-16);
sprite_change_offset("waveland", xl, yl);
sprite_change_offset("tech", xl, yl);

sprite_change_offset("jab", xl+20, yl+52);
sprite_change_offset("dattack", xl+24, yl+14);
sprite_change_offset("ftilt", xl+20, yl+52);
sprite_change_offset("dtilt", xl+10, yl+52);
sprite_change_offset("utilt", xl+20, yl+52);
sprite_change_offset("nair", xl+16, yl+10);
sprite_change_offset("fair", xl+24, yl+4);
sprite_change_offset("bair", 95, 140);
sprite_change_offset("uair", 100, 140);
sprite_change_offset("dair", xl+16, yl+10);
sprite_change_offset("fstrong", xl+24, yl+53);
sprite_change_offset("fstrong_air", xl+24, yl);
sprite_change_offset("ustrong", xl+30, yl+52);
sprite_change_offset("ustrong_air", xl+30, yl+20);
sprite_change_offset("dstrong", xl+30, yl+52);
sprite_change_offset("dstrong_air", xl+24, yl+14);
sprite_change_offset("nspecial", xl+30, yl+50);
sprite_change_offset("nspecial_air", xl+30, yl+10);
sprite_change_offset("fspecial", xl+31, yl+5);
sprite_change_offset("uspecial", xl+24, yl+14);
sprite_change_offset("uspecial_smear", 92, 44);
sprite_change_offset("dspecial", 64, 94);
sprite_change_offset("taunt", xl, yl);

sprite_change_offset("plat", 64, 94);

sprite_change_offset("nspecial_proj", 64, 94);
sprite_change_offset("nspecial_throw", xl, yl);
sprite_change_offset("nspecial_throw_air", xl, yl);

sprite_change_offset("clone_idle", xl, yl-18);
sprite_change_offset("projo", xl+60, yl-20);
sprite_change_offset("projectile", xl+40, yl-30);
sprite_change_offset("projectile_start_up", xl+30, yl);
sprite_change_offset("projectile_endlag", 102, 79);
sprite_change_offset("_arrow", 7, 0);
sprite_change_offset("fauteuil", xl-5, yl-20);
sprite_change_offset("mark", xl, yl);
sprite_change_offset("feuille_prout", xl, yl);
sprite_change_offset("leafburst", xl, yl-20);
sprite_change_offset("sonic_boom", xl+40, yl);
sprite_change_offset("sonic_boom_reversed", xl-40, yl);
sprite_change_offset("aura", xl-63, yl-60);
sprite_change_offset("aura_big", xl-63, yl-60);
sprite_change_offset("fes", xl-6, yl);

sprite_change_offset("offscreen", 16, 18);

//Sage
sprite_change_offset("sage_nspecial", xl+30, yl+50);
sprite_change_offset("sage_nspecial_air", xl+30, yl+10);
sprite_change_offset("sage_clone_idle", xl, yl-18);
sprite_change_offset("sage_projectile", xl+40, yl-30);
sprite_change_offset("sage_projectile_start_up", xl+30, yl);
sprite_change_offset("sage_projectile_endlag", 102, 79);
sprite_change_offset("sage_activation", xl+52, yl+60);
sprite_change_offset("sage_deactivation", xl+52, yl+60);
sprite_change_offset("offscreen_sage", 16, 18);
sprite_change_offset("sage_fes", xl-6, yl);

//hurt
sprite_change_offset("hurtground", xl, yl);
sprite_change_offset("hurt", xl+4, yl-16);
sprite_change_offset("downhurt", xl+4, yl-16);
sprite_change_offset("uphurt", xl+4, yl-16);
sprite_change_offset("bighurt", xl+4, yl-16);
sprite_change_offset("bouncehurt", xl+4, yl-16);
sprite_change_offset("spinhurt", xl+4, yl-16);

// Victory music
set_victory_theme( sound_get( "victory" ));

user_event(0);