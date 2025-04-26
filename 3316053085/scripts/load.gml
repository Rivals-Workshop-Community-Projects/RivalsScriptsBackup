//load.gml

//ground movement
sprite_change_offset("idle",            24, 47);
sprite_change_offset("crouch",          24, 47);
sprite_change_offset("walk",            24, 47);
sprite_change_offset("walkturn",        24, 47);
sprite_change_offset("dash",            24, 47);
sprite_change_offset("dashstart",       24, 47);
sprite_change_offset("dashstop",        24, 47);
sprite_change_offset("dashturn",        24, 47);

//air movement
sprite_change_offset("jumpstart",       24, 47);
sprite_change_offset("jump",            26, 43);
sprite_change_offset("doublejump",      24, 43);
sprite_change_offset("walljump",        26, 43);
sprite_change_offset("wallslide",       26, 43);
sprite_change_offset("wallkick",        26, 43);
sprite_change_offset("pratfall",        26, 43);
sprite_change_offset("land",            24, 47);
sprite_change_offset("landinglag",      24, 47);

//parry button
sprite_change_offset("parry",           24, 47);
sprite_change_offset("roll",            24, 47);
sprite_change_offset("airdodge",        24, 43);
sprite_change_offset("waveland",        24, 47);
sprite_change_offset("tech",            24, 47);

//hurt
sprite_change_offset("hurt",            24, 47); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("hurt_tumble",     24, 47); //normally called "spinhurt"

//normals
sprite_change_offset("jab",             24, 47, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("utilt",           16, 55, true);
sprite_change_offset("ftilt",           24, 47, true);
sprite_change_offset("dtilt",           38, 31, true);
sprite_change_offset("dattack",         24, 47, true);
sprite_change_offset("ustrong",         32, 47, true);
sprite_change_offset("fstrong",         37, 47, true);
sprite_change_offset("dstrong",         38, 47, true);
sprite_change_offset("nair",            32, 43, true);
sprite_change_offset("uair",            24, 63, true);
sprite_change_offset("fair",            23, 47, true);
sprite_change_offset("bair",            28, 43, true);
sprite_change_offset("dair",            24, 43, true);

//specials
sprite_change_offset("nspecial",                24, 47, true);
sprite_change_offset("nspecial_aim",            24, 47, true);
sprite_change_offset("nspecial_air",            24, 43, true);
sprite_change_offset("nspecial_aim_air",        24, 43, true);
sprite_change_offset("uspecial",                32, 39, true); //24, 47
sprite_change_offset("fspecial",                30, 55, true);
sprite_change_offset("fspecial_swiftjump",      32, 32);
sprite_change_offset("fspecial_swiftjump_hurt", 64, 96);
sprite_change_offset("fspecial_air",            30, 55, true);
sprite_change_offset("dspecial",                24, 47, true);
sprite_change_offset("dspecial_air",            24, 47, true);

sprite_change_offset("_test_dspec",             23, 32, true);

//misc
sprite_change_offset("taunt",           24, 47, true);
sprite_change_offset("intro",           24, 47, true);
sprite_change_offset("wait",            24, 47);
sprite_change_offset("plat",            32, 47); //don't use this
sprite_change_offset("plat_pre",        48, 47); //draws platform behind the player
sprite_change_offset("plat_pre_gb",     48, 47);
sprite_change_offset("overdrive",       24, 47, true);

sprite_change_offset("hurtbox_idle",    19, 66);
sprite_change_offset("ex1_mask",        64, 64);
sprite_change_offset("ex1_hudnorm",     0, -2);
sprite_change_offset("ex1_hudhurt",     0, -2);
sprite_change_offset("ex1_offscreen",   16, 18);
sprite_change_offset("nurse_idle",      24, 47);
sprite_change_offset("nurse_gone",      48, 94);
sprite_change_offset("fx_intro_gate",   48, 65);
sprite_change_offset("fx_intro_gate_gb",48, 65);
sprite_change_offset("fx_intro_light",  40, 30);

//effects
sprite_change_offset("fx_hit_small_fg", 64, 64);
sprite_change_offset("fx_hit_small_bg", 0, 64);
sprite_change_offset("fx_hit_medium_fg", 96, 96);
sprite_change_offset("fx_hit_medium_bg", 32, 96);
sprite_change_offset("fx_hit_big_fg", 128, 128);
sprite_change_offset("fx_hit_big_bg", -16, 128);

sprite_change_offset("fx_light_hit1", 48, 64);
sprite_change_offset("fx_light_hit2", 56, 96);
sprite_change_offset("fx_light_hit3", 64, 128);
sprite_change_offset("fx_light_follow", 9, 9);

sprite_change_offset("fx_ustrong_smear1", 64, 94);
sprite_change_offset("fx_ustrong_smear2", 64, 94);
sprite_change_offset("fx_fstrong_smear1", 74, 94);
sprite_change_offset("fx_fstrong_smear2", 74, 94);
sprite_change_offset("fx_dstrong_smear", 76, 94);

sprite_change_offset("artc_rune", 24, 24);
sprite_change_offset("artc_rune_hp", 24, 24);
sprite_change_offset("artc_rune_layers", 24, 24);
sprite_change_offset("artc_rune_hurt", 24, 24);
sprite_change_offset("hud_artc_rune_angle", 11, 11);
sprite_change_offset("fx_artc_rune_destroyed", 48, 48);
sprite_change_offset("fx_fstrong_proj1", 80, 32);
sprite_change_offset("fx_fstrong_proj2", 88, 32);
sprite_change_offset("fx_fstrong_proj3", 96, 32);
sprite_change_offset("fx_fstrong_proj_end1", 80, 32);
sprite_change_offset("fx_fstrong_proj_end2", 88, 32);
sprite_change_offset("fx_fstrong_proj_end3", 96, 32);
sprite_change_offset("fstrong_proj_col", 16, 16);
sprite_change_offset("fx_dstrong_ex", 28, 54);
sprite_change_offset("fx_uspec_smear", 64, 80);
sprite_change_offset("fx_dspec", 24, 47); //16, 24
sprite_change_offset("fx_dspec_end", 80, 80);
if ("static_colorO" in self) orig_line = [static_colorO[8*4+0], static_colorO[8*4+1], static_colorO[8*4+2]];

if ("alt_cur" in self && !s_alt && (alt_cur == 0 || alt_cur == 30))
{
    col_lightmain = [
        [static_colorO[6*4+0], static_colorO[6*4+1], static_colorO[6*4+2]],
        [get_color_profile_slot_r(26, 6)/255, get_color_profile_slot_g(26, 6)/255, get_color_profile_slot_b(26, 6)/255],
    ];
    col_lightsub = [
        [static_colorO[7*4+0], static_colorO[7*4+1], static_colorO[7*4+2]],
        [get_color_profile_slot_r(26, 7)/255, get_color_profile_slot_g(26, 7)/255, get_color_profile_slot_b(26, 7)/255],
    ];
}

sprite_change_offset("fx_dspec_healfield", 56, 56);
sprite_change_offset("fx_lightstun_arrow", 48, 128);
sprite_change_offset("fx_lightstunned", 64, 64);
sprite_change_offset("fx_lightstun_blast", 96, 80);
sprite_change_offset("fx_ashe_trail", 9, 9);

sprite_change_offset("fx_od_start", 64, 94);
sprite_change_offset("fx_od_eyeshine", 48, 94);
sprite_change_offset("fx_od_shock", 304, 304);
sprite_change_offset("fx_od_drag", 272, 272); //v1: 304, 304 | v2: 272, 272 | v3: 288, 144
sprite_change_offset("fx_od_finalhit", 240, 240);
sprite_change_offset("fx_od_part", 16, 16);
sprite_change_offset("fx_od_shockwave", 100, 100);
sprite_change_offset("fx_od_stun", 64, 64);
sprite_change_offset("fx_od_garden_bg1", 232, 200);
sprite_change_offset("fx_od_garden_bg2", 232, 200);
sprite_change_offset("fx_od_garden_bg3", 232, 200);
sprite_change_offset("fx_od_garden_bg4", 232, 200);
sprite_change_offset("fx_od_garden_over", 112+8, 112+8);
sprite_change_offset("artc_od_garden_mask", 112, 112);

//workshop compatibilities
sprite_change_offset("mamizou_rabbit",  20, 40);
sprite_change_offset("sonictrick",      24, 47, true);
sprite_change_offset("GFZ_signpost",    18, 41);

//break the targets
sprite_change_offset("btt_bg_skybox",   116, 64);