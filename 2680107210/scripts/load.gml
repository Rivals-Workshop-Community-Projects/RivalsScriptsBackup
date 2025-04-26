SCO("idle", 16, 0, 16, 0);
SCO("crouch", 0, 0, 0, 0);
SCO("walk", -8, 0, -8, 0);
SCO("walkturn", 0, 0, 0, 0);
SCO("dash", 0, 0, 0, 0);
SCO("dash_sacrifice", 0, 0, 0, 0);
SCO("dashstart", 0, 0, 0, 0);
SCO("dashstart_sacrifice", 0, 0, 0, 0);
SCO("dashstop", 0, 0, 0, 0);
SCO("dashstop_sacrifice", 0, 0, 0, 0);
SCO("dashturn", 32, 0, 32, 0);

SCO("dash_jumpsquat", 0, 0, 0, 0);
SCO("dash_shorthop", 0, 0, 0, 0);

SCO("jumpstart", 0, 32, 0, 32);
SCO("jump", 0, 22, 0, 22);
SCO("doublejump", 0, 28, 0, 28);
SCO("doublejump_back", 0, 32, 0, 32);
SCO("doublejump_extra", 0, 32, 0, 32);
SCO("walljump", 6, 16, 6, 16);
SCO("pratfall", 0, 0, 0, 0);
SCO("land", 0, 0, 0, 0);
SCO("landinglag", 0, 0, 0, 0);

SCO("parry", 8, 0, 8, 0);
SCO("roll_forward", 0, 0, 0, 0);
SCO("roll_backward", 0, 0, 0, 0);
SCO("airdodge", 0, 0, 0, 0);
/*SCO("airdodge_forward", 32, 32);
SCO("airdodge_back", 32, 32);
SCO("airdodge_up", 32, 32);
SCO("airdodge_down", 32, 32);
SCO("airdodge_upforward", 32, 32);
SCO("airdodge_downforward", 32, 32);
SCO("airdodge_upback", 32, 32);
SCO("airdodge_downback", 32, 32);*/
SCO("waveland", 0, 32, 0, 32);
SCO("tech", 32, 0, 32, 0);

SCO("hurt", 0, 32, 0, 32);
SCO("bighurt", 0, 32, 0, 32);
SCO("hurtground", 0, 32, 0, 32);
SCO("uphurt", 0, 32, 0, 32);
SCO("downhurt", 0, 32, 0, 32);
SCO("bouncehurt", 0, 32, 0, 32);
SCO("spinhurt", 0, 32, 0, 32);

SCO("jab", 0, 32, 0, 32);
SCO("dattack", 0, 0, 0, 0);
SCO("ftilt", 0, 0, 0, 0);
SCO("dtilt", 0, 0, 0, 0);
SCO("utilt", 32, 64, 32, 64);
SCO("nair", 28, 32, 28, 32);
SCO("fair", 32, 32, 32, 32);
SCO("fair_weak", 0, 32, 0, 32);
SCO("bair", 80, 0, 80, 0);
SCO("uair", 32, 0, 32, 0);
SCO("dair", 0, 16, 0, 16);
SCO("fstrong", 0, 32, 0, 32);
SCO("ustrong", 32, 84, 32, 84);
SCO("dstrong", 32, 32, 32, 32);
SCO("nspecial", 16, 14, 16, 14);
SCO("nspecial_air", 0, 0, 0, 0);
SCO("fspecial", fspecial_initial_x_offset, fspecial_initial_y_offset, fspecial_initial_x_offset, fspecial_initial_y_offset);
SCO("fspecial_air", 32, 64, 32, 64);
SCO("uspecial", 0, 0, 0, 0);
SCO("dspecial", -6, 32, -6, 32);
SCO("taunt", 32, 0, 32, 0);
//SCO("taunt_eyes", 32, 0, 32, 0);
SCO("munophone", 28, 84, 28, 84);

sprite_change_offset("plat", 32, 5);
sprite_change_offset("crouch_hurt", 8, 36);
sprite_change_offset("dashturn_hurt", spr_x_offset + 32, spr_y_offset + 0);

sprite_change_offset("hfx_shadowball", 22, 22);
sprite_change_offset("hfx_shadowball_flame", 22, 22);
sprite_change_offset("particle_shadowflame", 22, 22);
sprite_change_offset("hfx_fspecial_particle", 8, 16);

//sprite_change_offset("dspecial_indicator", 5, 5);
sprite_change_offset("dspecial_circle", 72, 72);
sprite_change_offset("dspecial_lightning", 104, 600);
sprite_change_offset("dspecial_menu", 48, 128);

sprite_change_offset("dspecial_pentagram", 50, 50);


sprite_change_offset("dstrong_extra", spr_x_offset + 64, spr_y_offset + 32);


sprite_change_offset("nspecial_projectile_unarmed", 96, 64);
sprite_change_offset("nspecial_projectile_armed", 96, 64);
sprite_change_offset("nspecial_stuck", 96, 64);
sprite_change_offset("nspecial_stuck_mask", 96, 64);
sprite_change_offset("nspecial_hazard", 96, 66);
sprite_change_offset("nspecial_hazard_mask", 96, 66);
sprite_change_offset("nspecial_hazard_radius", 66, 66);
sprite_change_offset("shadowflame_explosion", 82, 90);

sprite_change_offset("fx_hitsurface", 15, 72);

sprite_change_offset("fx_dash_shorthop_dust_color", 50, 21);

sprite_change_offset("fx_dspecial", 5, 5);



//DSpecial Boost FX
sprite_change_offset("fx_dash_sacrifice", 42, 51);
sprite_change_offset("fx_dashturn_sacrifice", 52, 54);
sprite_change_offset("fx_dashstart_sacrifice", 53, 57);
//sprite_change_offset("fx_walk_sacrifice", 38, 55);
sprite_change_offset("fx_jump_sacrifice", 38, 58);
sprite_change_offset("fx_djump_sacrifice", 39, 49);
sprite_change_offset("fx_djump_small_sacrifice", 37, 52);
sprite_change_offset("fx_walljump_sacrifice", 22, 53);


sprite_change_offset("hfx_darkfire_large", 128, 128);
sprite_change_offset("hfx_darkfire_small", 128, 128);
sprite_change_offset("hfx_strike_big", 128, 128);
sprite_change_offset("hfx_strike_die", 128, 128);
sprite_change_offset("shadowflame_explosion_large", 128, 128);
sprite_change_offset("shadowflame_explosion_small", 128, 128);
sprite_change_offset("nspecial_detonation_cue", 128, 128);


#define SCO(atk, x_off, y_off, x_off_hurt, y_off_hurt)
    sprite_change_offset(atk, round((spr_x_offset + x_off) / 2), round((spr_y_offset + y_off) / 2));
	sprite_change_offset(atk + "_hurt", spr_x_offset + x_off_hurt, spr_y_offset + y_off_hurt);