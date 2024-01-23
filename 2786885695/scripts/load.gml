//ground movement
sprite_change_offset("idle", 31, 94);
sprite_change_offset("crouch", 31, 94);
sprite_change_offset("walk", 47, 94);
sprite_change_offset("walkturn", 47, 94);
sprite_change_offset("dash", 71, 94);
sprite_change_offset("dashstart", 47, 94);
sprite_change_offset("dashstop", 47, 94);
sprite_change_offset("dashturn", 47, 94);

//air movement
sprite_change_offset("jumpstart", 33, 94);
sprite_change_offset("jump", 31, 126);
sprite_change_offset("doublejump", 33, 94);
sprite_change_offset("walljump", 31, 126);
sprite_change_offset("pratfall", 31, 126);
sprite_change_offset("land", 33, 94);
sprite_change_offset("landinglag", 33, 94);

//parry button
sprite_change_offset("parry", 47, 94);
sprite_change_offset("roll", 61, 94); //set up on animation.gml instead of roll_forward and roll_backwards cuz they are the same
sprite_change_offset("airdodge", 47, 94);
sprite_change_offset("waveland", 31, 94);
sprite_change_offset("tech", 31, 94);

//hurt
sprite_change_offset("hurt", 47, 94);
sprite_change_offset("hurt_tumble", 48, 48);
sprite_change_offset("hurt_crystal", floor(47/2), 94/2);

//normals
sprite_change_offset("jab", 63, 126);
sprite_change_offset("dattack", 71, 110);
sprite_change_offset("ftilt", 63, 94);
sprite_change_offset("dtilt", 15, 62);
sprite_change_offset("utilt", 55, 126);
sprite_change_offset("fstrong", 65, 94);
sprite_change_offset("ustrong", 63, 110);
sprite_change_offset("dstrong", 63, 142);
sprite_change_offset("nair", 79, 102);
sprite_change_offset("fair", 43, 96);
sprite_change_offset("bair", 89, 96);
sprite_change_offset("uair", 39, 158);
sprite_change_offset("dair", 59, 126);

//specials
sprite_change_offset("nspecial", 59, 94);
sprite_change_offset("nspecial_rot", 59, 94);
sprite_change_offset("nspecial_part2", 77, 110);
sprite_change_offset("nspecial_air", 59, 126);
sprite_change_offset("nspecial_rot_air", 59, 126);
sprite_change_offset("nspecial_part2_air", 73, 110);
sprite_change_offset("fspecial", 79, 126-16);
sprite_change_offset("uspecial", 60, 94);
sprite_change_offset("uspecial_air", 60, 94);
sprite_change_offset("dspecial", 72, 94);
sprite_change_offset("dspecial_air", 72, 94);

sprite_change_offset("starward_sword", 54, 94);

//effects
sprite_change_offset("fx_vanish", 64, 64);
sprite_change_offset("fx_intro_spark", 16, 16);
sprite_change_offset("fx_electro1", 48, 48);
sprite_change_offset("fx_electro2", 48, 48);
sprite_change_offset("fx_electro3", 48, 48);
sprite_change_offset("fx_electro_aura", 48, 48);

sprite_change_offset("fx_jab5", 22, 27);
sprite_change_offset("fx_dair_air", 16, 80);
sprite_change_offset("fx_dair_ground", 96, 96);
sprite_change_offset("fx_fstrong", 40, 80);
sprite_change_offset("fx_ustrong", 48, 160);
sprite_change_offset("fx_dstrong", 112, 54);

sprite_change_offset("fx_part_phys", 8, 8);
sprite_change_offset("fx_hit_phys1", 48, 48);
sprite_change_offset("fx_hit_phys2", 64, 64);
sprite_change_offset("fx_hit_phys3", 80, 80);
sprite_change_offset("fx_part_elec", 8, 8);
sprite_change_offset("fx_hit_elec1", 48, 48);
sprite_change_offset("fx_hit_elec2", 64, 64);
sprite_change_offset("fx_hit_elec3", 80, 80);

sprite_change_offset("artc_nspec_cursor", 23, 23);
sprite_change_offset("artc_nspec_mask", 23, 23);
sprite_change_offset("fx_nspec_shoot", 32, 32);
sprite_change_offset("artc_nspec_idle", 15, 16);
sprite_change_offset("fx_nspec_cursorspawn", 50, 46);
sprite_change_offset("fx_nspec_proj", 32, 16);
sprite_change_offset("fx_nspec_proj_afterimage", 32, 16);
sprite_change_offset("fx_nspec_marker_spawn", 48, 48);
sprite_change_offset("fx_nspec_marker_despawn", 48, 48);
sprite_change_offset("fx_nspec_warpstart", 96, 80);
sprite_change_offset("fx_nspec_warpend", 96, 80);
sprite_change_offset("fx_nspec_marker_explosion", 96, 76);

sprite_change_offset("fx_uspec_flash", 56, 32); //32,32
sprite_change_offset("fx_uspec_vanish", 48, 48);

sprite_change_offset("fx_fspec_slash", 64, 64);

sprite_change_offset("artc_dspec_afterimage", 31, 52);
sprite_change_offset("fx_dspec_fade", 48, 94);
sprite_change_offset("fx_dspec_afterimage_spawn", 31, 52);
sprite_change_offset("fx_dspec_afterimage_despawn", 31, 52);

sprite_change_offset("fx_starward_sword_aoe", 100, 100);
sprite_change_offset("fx_starward_sword_aoe_wave", 100, 100);
sprite_change_offset("fx_starward_sword_clones", 96, 94);
sprite_change_offset("fx_starward_sword_slash", 208, 16);
sprite_change_offset("fx_starward_sword_finalslash", 386, 160);

//misc
sprite_change_offset("taunt", 93, 126);
sprite_change_offset("plat_back", 39, 66);
sprite_change_offset("plat_back_gb", 39, 66);
sprite_change_offset("intro", 53, 126);
sprite_change_offset("wait", 45, 94);
sprite_change_offset("hurtbox_wait", 4, 70);

sprite_change_offset("taunt2", 29, 94);
sprite_change_offset("fx_lyre_note", 16, 16);
sprite_change_offset("fx_lyre_note_gb", 16, 16);
sprite_change_offset("fx_lyre_despawn", 16, 16);
sprite_change_offset("fx_lyre_despawn_gb", 16, 16);
sprite_change_offset("hud_lyre", 4, 48);

sprite_change_offset("fx_damage", 4, 5);
sprite_change_offset("fx_damage_gb", 4, 5);
sprite_change_offset("fx_damage_heal", 7, 5);

sprite_change_offset("hud_skill_bg", 16, 16);
sprite_change_offset("hud_skill_icon", 11, 11);
sprite_change_offset("hud_skill_used", 16, 16);
sprite_change_offset("hud_skill_timer", 16, 16);
sprite_change_offset("hud_skill_flash", 32, 32);
sprite_change_offset("hud_burst_mask", 16, 16);

sprite_change_offset("offscreen_icons", 16, 17);
sprite_change_offset("offscreen_arrow", 16, 16);

sprite_change_offset("qiqi_idle", 16, 16);
sprite_change_offset("qiqi_vanish", 64, 48);

sprite_change_offset("plat", 64, 94);
sprite_change_offset("portrait", 16, -8);
sprite_change_offset("portrait_ex1", 16, -8);
set_victory_theme(sound_get("mus_victory"));
set_victory_bg(sprite_get("winscreen"));

sprite_change_offset("hurtbox_idle", 23, 70);
sprite_change_offset("hurtbox_dash", 30, 48);
sprite_change_offset("hurtbox_nspec", 11, 70);
sprite_change_offset("hurtbox_uspec", 32, 64);
sprite_change_offset("hb_arrow", 0, 8);

//rune stuff
sprite_change_offset("runeE_part", 8, 8);
sprite_change_offset("runeE_orb", 16, 16);
sprite_change_offset("runeK_stamina", 40, 24);
sprite_change_offset("runeK_glider", 40, 16);
sprite_change_offset("runeO_line", 24, 24);
sprite_change_offset("runeO_main", 24, 24);

sprite_change_offset("fx_runeE_afterimage", 8, 8);
sprite_change_offset("fx_runeK_glider_spawn", 80, 32);
sprite_change_offset("fx_runeK_glider_despawn", 80, 32);
sprite_change_offset("fx_runeO_disable", 16, 16);

//workshop compatibilities
sprite_change_offset("mamizou_catqing", 48, 84);
sprite_change_offset("sonictrick", 32, 94);