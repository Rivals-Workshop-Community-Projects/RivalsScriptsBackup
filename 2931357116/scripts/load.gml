//movement
for(var j = 0; j < 10; j++){
sprite_change_offset(string(j%5)+"PS_IDLE"+(j >= 5? "_blade":""), 35, 40)
sprite_change_offset(string(j%5)+"PS_CROUCH"+(j >= 5? "_blade":""), 28, 40)
sprite_change_offset(string(j%5)+"PS_WALK"+(j >= 5? "_blade":""), 35, 37)
sprite_change_offset(string(j%5)+"PS_WALK_TURN"+(j >= 5? "_blade":""), 35, 37)
sprite_change_offset(string(j%5)+"PS_DASH"+(j >= 5? "_blade":""), 31, 29)
sprite_change_offset(string(j%5)+"PS_DASH_START"+(j >= 5? "_blade":""), 27, 36)
sprite_change_offset(string(j%5)+"PS_DASH_STOP"+(j >= 5? "_blade":""), 30, 35)
sprite_change_offset(string(j%5)+"PS_DASH_TURN"+(j >= 5? "_blade":""), 35, 37)

sprite_change_offset(string(j%5)+"PS_JUMPSQUAT"+(j >= 5? "_blade":""), 22, 37)
sprite_change_offset(string(j%5)+"PS_FIRST_JUMP"+(j >= 5? "_blade":""), 36, 46)
sprite_change_offset(string(j%5)+"PS_DOUBLE_JUMP"+(j >= 5? "_blade":""), 31, 38)
sprite_change_offset(string(j%5)+"PS_WALL_JUMP"+(j >= 5? "_blade":""), 27, 42)
sprite_change_offset(string(j%5)+"PS_PRATFALL"+(j >= 5? "_blade":""), 27, 43)
sprite_change_offset(string(j%5)+"PS_LANDING_LAG"+(j >= 5? "_blade":""), 23, 39)

sprite_change_offset(string(j%5)+"PS_PARRY"+(j >= 5? "_blade":""), 31, 44)
sprite_change_offset(string(j%5)+"PS_ROLL"+(j >= 5? "_blade":""), 39, 37)
sprite_change_offset(string(j%5)+"PS_AIR_DODGE"+(j >= 5? "_blade":""), 35, 40)
sprite_change_offset(string(j%5)+"PS_WAVELAND"+(j >= 5? "_blade":""), 25, 31)
sprite_change_offset(string(j%5)+"PS_LAND"+(j >= 5? "_blade":""), 23, 39)
sprite_change_offset(string(j%5)+"PS_TECH_GROUND"+(j >= 5? "_blade":""), 26, 39)

sprite_change_offset(string(j%5)+"HURT0"+(j >= 5? "_blade":""), 17, 36)
sprite_change_offset(string(j%5)+"HURT1"+(j >= 5? "_blade":""), 14, 34)
sprite_change_offset(string(j%5)+"HURT2"+(j >= 5? "_blade":""), 25, 44)
sprite_change_offset(string(j%5)+"HURT3"+(j >= 5? "_blade":""), 22, 23)
sprite_change_offset(string(j%5)+"HURT4"+(j >= 5? "_blade":""), 24, 40)
sprite_change_offset(string(j%5)+"HURT5"+(j >= 5? "_blade":""), 14, 31)
sprite_change_offset(string(j%5)+"HURT6"+(j >= 5? "_blade":""), 27, 29)

//attacks
sprite_change_offset(string(j%5)+"jab"+(j >= 5? "_blade":""), 43, 55);
sprite_change_offset(string(j%5)+"dattack"+(j >= 5? "_blade":""), 38, 48);

sprite_change_offset(string(j%5)+"ftilt"+(j >= 5? "_blade":""), 38, 52);
sprite_change_offset(string(j%5)+"dtilt"+(j >= 5? "_blade":""), 38, 50);
sprite_change_offset(string(j%5)+"utilt"+(j >= 5? "_blade":""), 50, 68);

sprite_change_offset(string(j%5)+"nair"+(j >= 5? "_blade":""), 48, 47);
sprite_change_offset(string(j%5)+"fair"+(j >= 5? "_blade":""), 38, 51);
sprite_change_offset(string(j%5)+"bair"+(j >= 5? "_blade":""), 74, 40);
sprite_change_offset(string(j%5)+"uair"+(j >= 5? "_blade":""), 41, 62);
sprite_change_offset(string(j%5)+"dair"+(j >= 5? "_blade":""), 40, 54);

sprite_change_offset(string(j%5)+"fstrong"+(j >= 5? "_blade":""), 46, 58);
sprite_change_offset(string(j%5)+"ustrong"+(j >= 5? "_blade":""), 41, 76);
sprite_change_offset(string(j%5)+"dstrong"+(j >= 5? "_blade":""), 51, 56);

sprite_change_offset(string(j%5)+"nspecial"+(j >= 5? "_blade":""), 45, 60);
sprite_change_offset(string(j%5)+"nspecial_air"+(j >= 5? "_blade":""), 45, 60);
sprite_change_offset(string(j%5)+"fspecial"+(j >= 5? "_blade":""), 44, 47);
sprite_change_offset(string(j%5)+"fspecial_air"+(j >= 5? "_blade":""), 44, 47);
sprite_change_offset(string(j%5)+"uspecial"+(j >= 5? "_blade":""), 41, 54);
sprite_change_offset(string(j%5)+"dspecial"+(j >= 5? "_blade":""), 65, 66);
sprite_change_offset(string(j%5)+"dspecial_air"+(j >= 5? "_blade":""), 65, 66);

sprite_change_offset(string(j%5)+"taunt"+(j >= 5? "_blade":""), 43, 51);

//hurtboxes
sprite_change_offset(string(j%5)+"jab_hurt", 43*2, 55*2);
sprite_change_offset(string(j%5)+"dattack_hurt", 38*2, 48*2);

sprite_change_offset(string(j%5)+"ftilt_hurt", 38*2, 52*2);
sprite_change_offset(string(j%5)+"dtilt_hurt", 38*2, 50*2);
sprite_change_offset(string(j%5)+"utilt_hurt", 50*2, 68*2);

sprite_change_offset(string(j%5)+"nair_hurt", 48*2, 47*2);
sprite_change_offset(string(j%5)+"fair_hurt", 38*2, 51*2);
sprite_change_offset(string(j%5)+"bair_hurt", 74*2, 40*2);
sprite_change_offset(string(j%5)+"uair_hurt", 41*2, 62*2);
sprite_change_offset(string(j%5)+"dair_hurt", 40*2, 54*2);

sprite_change_offset(string(j%5)+"fstrong_hurt", 46*2, 58*2);
sprite_change_offset(string(j%5)+"ustrong_hurt", 41*2, 76*2);
sprite_change_offset(string(j%5)+"dstrong_hurt", 51*2, 56*2);

sprite_change_offset(string(j%5)+"nspecial_hurt", 45*2, 60*2);
sprite_change_offset(string(j%5)+"nspecial_air_hurt", 45*2, 60*2);
sprite_change_offset(string(j%5)+"fspecial_hurt", 44*2, 47*2);
sprite_change_offset(string(j%5)+"fspecial_air_hurt", 44*2, 47*2);
sprite_change_offset(string(j%5)+"uspecial_hurt", 41*2, 54*2);
sprite_change_offset(string(j%5)+"dspecial_hurt", 65*2, 66*2);
sprite_change_offset(string(j%5)+"dspecial_air_hurt", 65*2, 66*2);

sprite_change_offset(string(j%5)+"taunt_hurt", 43*2, 51*2);
}

//plat
sprite_change_offset("plat", 42, 0);

//misc
sprite_change_offset("hud_arrow", 7, 10);
sprite_change_offset("hud_particle", 10, 10);
sprite_change_offset("1particle", 15, 15);
sprite_change_offset("4particle", 9, 9);

//ragnarok
sprite_change_offset("ragnarok_artc_1", 28, 26);
sprite_change_offset("ragnarok_artc_mask1", 28, 26);
sprite_change_offset("ragnarok_artc_2", 27, 27);
sprite_change_offset("ragnarok_artc_mask2", 27, 27);
sprite_change_offset("ragnarok_artc_3", 29, 28);
sprite_change_offset("ragnarok_artc_mask3", 29, 28);
sprite_change_offset("ragnarok_projectile", 6, 18);
sprite_change_offset("ragnarok_projectile_after", 10, 18);
sprite_change_offset("ragnarok_explosion", 30, 25);

//fspecial
sprite_change_offset("0fspecial_proj", 32, 30);
sprite_change_offset("0fspecial_mask", 19, 61);

//frostbite
sprite_change_offset("frostbite_mark", 0, 9);

//wisdom keyblade
sprite_change_offset("wis_keyblade_article", 27, 32);
sprite_change_offset("wis_trap_article", 31, 27);

//dashes
sprite_change_offset("master_dash", 10, 7);
sprite_change_offset("master_dash_fx", 10, 7);
sprite_change_offset("airdash0", 36, 46);
sprite_change_offset("airdash0_blade", 36, 46);
sprite_change_offset("airdash1", 36, 46);
sprite_change_offset("airdash1_blade", 36, 46);
sprite_change_offset("airdash2", 36, 46);
sprite_change_offset("airdash2_blade", 36, 46);
sprite_change_offset("airdash3", 36, 46);
sprite_change_offset("airdash3_blade", 36, 46);
sprite_change_offset("airdash4", 36, 46);
sprite_change_offset("airdash4_blade", 36, 46);
sprite_change_offset("airdash5", 36, 46);
sprite_change_offset("airdash5_blade", 36, 46);
sprite_change_offset("airdash6", 36, 46);
sprite_change_offset("airdash6_blade", 36, 46);
sprite_change_offset("airdash7", 36, 46);
sprite_change_offset("airdash7_blade", 36, 46);

//hit fxs
sprite_change_offset("kingdomkey_hfx", 64, 48);
sprite_change_offset("kingdomkey_hfx1", 64, 48);
sprite_change_offset("kingdomkey_hfx2", 64, 48);
sprite_change_offset("kingdomkey_hfxsmall", 64, 48);

sprite_change_offset("oathkeeper_hfx", 64, 48);
sprite_change_offset("oathkeeper_hfx1", 64, 48);
sprite_change_offset("oathkeeper_hfx2", 64, 48);
sprite_change_offset("oathkeeper_hfxsmall", 64, 48);

sprite_change_offset("oblivion_hfx", 64, 48);
sprite_change_offset("oblivion_hfx1", 64, 48);
sprite_change_offset("oblivion_hfx2", 64, 48);
sprite_change_offset("oblivion_hfxsmall", 64, 48);

//hand vfx
sprite_change_offset("master_handfx", 16, 16);
sprite_change_offset("3idle_fx", 11, 46);
sprite_change_offset("3idle_fx_smear", 11, 46);

//intro
sprite_change_offset("intro", 46, 63);

//float
sprite_change_offset("glide", 36, 40);
sprite_change_offset("glide_blade", 36, 40);

//flowmotion
sprite_change_offset("4flowmotion", 32, 59);
sprite_change_offset("4flowmotion_blade", 32, 59);
sprite_change_offset("4flowmotion_hurt", 64, 118);

sprite_change_offset("final_blade_collision", 8, 52);
sprite_change_offset("final_blade0", 39, 34);
sprite_change_offset("final_blade1", 39, 34);
sprite_change_offset("final_blade2", 39, 34);