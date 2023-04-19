//RECODE

sprite_change_offset("idle_hurtbox", 26, 64);
sprite_change_offset("crouch_hurtbox", 26, 48);
sprite_change_offset("idle", 59, 100);
sprite_change_offset("hurt", 53, 78);
sprite_change_offset("uphurt", 28, 60);
sprite_change_offset("bighurt", 60, 94);
sprite_change_offset("spinhurt", 42,84); // same as tech
sprite_change_offset("downhurt", 42,84); // same as tech
sprite_change_offset("downhurt", 74, 96); // Same as BAIR

sprite_change_offset("crouch", 50, 68);
sprite_change_offset("hurtground", 50, 68); // Same as crouch
sprite_change_offset("sl_hurtground", 50, 68); // Same as crouch

sprite_change_offset("walk", 46,82);
sprite_change_offset("walkturn", 44,82);
sprite_change_offset("dash", 76,72);
sprite_change_offset("dashstart", 54, 74);
sprite_change_offset("dashstop", 60, 76);
sprite_change_offset("dashturn", 54, 72);
sprite_change_offset("bouncehurt", 64, 80);
sprite_change_offset("jumpstart", 54, 74);
sprite_change_offset("jump", 46, 84);
sprite_change_offset("doublejump", 54, 70);
sprite_change_offset("walljump", 32, 82);
sprite_change_offset("pratfall", 42, 84);
sprite_change_offset("land", 50, 74);
sprite_change_offset("landinglag", 50, 68);

sprite_change_offset("parry", 60, 84);
sprite_change_offset("roll_forward", 44, 74);
sprite_change_offset("roll_backward", 44, 74);
sprite_change_offset("airdodge", 62,96);
sprite_change_offset("waveland", 50, 72);
sprite_change_offset("tech", 42,84);

sprite_change_offset("jab", 66, 90);
sprite_change_offset("sl_jab", 66, 90);
sprite_change_offset("dattack", 60, 82);
sprite_change_offset("sl_dattack", 60, 82); // Non-standard name
sprite_change_offset("dattack_hurt", 60, 82);
sprite_change_offset("ftilt", 47, 84);
sprite_change_offset("sl_ftilt", 47, 84);
sprite_change_offset("dtilt", 68, 80);
sprite_change_offset("sl_dtilt", 68, 80);
sprite_change_offset("dtilt_hurt", 68, 74);
sprite_change_offset("utilt", 70, 102);
sprite_change_offset("sl_utilt", 70, 102);
sprite_change_offset("uspecial", 91, 141);
sprite_change_offset("sl_uspecial", 91, 141); // May Be Reworked - Part of uspecial and no acutal Utilt
sprite_change_offset("uspecial_hurt", 91, 141);
sprite_change_offset("nair", 62, 130);
sprite_change_offset("sl_nair", 62, 130); // Has a different offset from standard
sprite_change_offset("fair", 64, 90);
sprite_change_offset("sl_fair", 64, 90);
sprite_change_offset("bair", 74, 96);
sprite_change_offset("sl_bair", 108, 134); // Non-standard name & Has a different offset from standard
sprite_change_offset("uair", 46, 106);
sprite_change_offset("sl_uair", 46, 106);
sprite_change_offset("dair", 62, 108);
sprite_change_offset("sl_dair", 62, 108);
sprite_change_offset("fstrong", 68, 88);
sprite_change_offset("sl_fstrong", 68, 88);
sprite_change_offset("ustrong", 98,190);
sprite_change_offset("sl_ustrong", 98,190);
sprite_change_offset("dstrong", 68,76);
sprite_change_offset("sl_dstrong", 68,76); // Needs tune
sprite_change_offset("nspecial", 77,198); // 
sprite_change_offset("nspecial_air", 77,198); // 
sprite_change_offset("sl_nspecial", 77,198); // 
sprite_change_offset("sl_nspecial_air", 77,198); // 
sprite_change_offset("fspecial", 94, 94); // original 94,122 - Diff of 28
sprite_change_offset("sl_fspecial", 94, 94); // original 94,122
sprite_change_offset("dspecial", 81, 166);
sprite_change_offset("sl_dspecial", 81, 100); // This is only acceible in training by dspec and taunt + down, not normally visible
sprite_change_offset("intro", 54, 90);
sprite_change_offset("dspecial_2", 96, 279); // SL Downspecial
sprite_change_offset("taunt", 48, 82);
sprite_change_offset("sl_taunt", 100,134);
sprite_change_offset("sl_idle_but_better", 50,71);

sprite_change_offset("plat", 76, 0);

sprite_change_offset("hfx_electricgold", 79, 76);
sprite_change_offset("hfx_metal", 76, 76);
sprite_change_offset("nspecial_proj", 64, 94);
sprite_change_offset("clawbig", 120, 10);
sprite_change_offset("hitfx", 96,98);
sprite_change_offset("hitfx_big_normal", 180,154);
sprite_change_offset("hitfx_med_normal", 130,130);
sprite_change_offset("hfx_uairsweet", 63,63);
sprite_change_offset("hfx_big_lightning4", 182,162)
sprite_change_offset("hfx_big_lightning3", 120,110)
sprite_change_offset("sl_chain_grab", 64,64);
sprite_change_offset("sl_chain_lightning", 64,64);
sprite_change_offset("sl_sparkfx_large",90,90);
sprite_change_offset("sl_sparkfx_trail",64,64);
sprite_change_offset("hfx_uspecial_jumpfx",64,128);
sprite_change_offset("hfx_dspecial_2_floor",64,64);
sprite_change_offset("hfx_claw_slash",128,128);
sprite_change_offset("hfx_dspecial_thunder_cloud",128,128);
sprite_change_offset("hfx_dspecial_thunder_middle",128,128);
sprite_change_offset("hfx_dspecial_thunder_bottom",128,128);
sprite_change_offset("hfx_dspecial_thunder_tracer",128,128);
sprite_change_offset("hfx_sl_dash",64,64);
sprite_change_offset("hfx_chain_sweetspot",128,128);
sprite_change_offset("hfx_fspecial_directional_arrow",128,128); // This canvas is intentially big to use an offset trick and image angle draw
sprite_change_offset("hfx_sl_transform",128,128); // 
sprite_change_offset("hfx_sl_untransform",128,128); //
sprite_change_offset("hfx_nspecial_chain_lightning",200,200); //
sprite_change_offset("hfx_uair_sweetspot",31,31); //
sprite_change_offset("hfx_nspecial_dissipation",100,100); //

sprite_change_offset("final_strong",139,247); // 278,494 original
sprite_change_offset("final_strong_hurt",278,494); // Doesn't get changed with small sprites

sprite_change_offset("parryfx",65,37);

sprite_change_offset("spark", 7,7);

sprite_change_offset("hfx_mark_active", 128,128);
sprite_change_offset("hfx_mark_consume", 128,128);
sprite_change_offset("hfx_mark_disperse", 128,128);

sprite_change_offset("hit_particle1",0,16);
sprite_change_offset("hit_particle2",0,16);
sprite_change_offset("hit_particle3",0,16);
sprite_change_offset("hit_particle4",0,16);

sprite_change_offset("sl_hud_bar",64,64);


// SL Section
var temp_x_offset  = 110;
var temp_y_offset = 134;
sprite_change_offset("sl_airdash", 100,100);
sprite_change_offset("sl_ground_dash", temp_x_offset,temp_y_offset);
sprite_change_offset("sl_bighurt", temp_x_offset,temp_y_offset);
sprite_change_offset("sl_bouncehurt", temp_x_offset,temp_y_offset);
sprite_change_offset("sl_crouch", temp_x_offset,temp_y_offset);
sprite_change_offset("sl_dash", temp_x_offset,temp_y_offset);
sprite_change_offset("sl_dashattack", temp_x_offset,temp_y_offset);
sprite_change_offset("sl_dashstart", temp_x_offset,temp_y_offset);
sprite_change_offset("sl_dashturn", temp_x_offset,temp_y_offset);
sprite_change_offset("sl_dashstop", temp_x_offset,temp_y_offset);
sprite_change_offset("sl_doublejump", temp_x_offset,temp_y_offset);
sprite_change_offset("sl_hurt", temp_x_offset,temp_y_offset);
sprite_change_offset("sl_idle", temp_x_offset,temp_y_offset);
sprite_change_offset("sl_jump", temp_x_offset,temp_y_offset); 
sprite_change_offset("sl_jumpstart", temp_x_offset,temp_y_offset); 
sprite_change_offset("sl_land", temp_x_offset,temp_y_offset); 
sprite_change_offset("sl_landinglag", temp_x_offset,temp_y_offset); 
sprite_change_offset("sl_parry", temp_x_offset,temp_y_offset); 
sprite_change_offset("sl_pratfall", temp_x_offset -10,temp_y_offset); 
sprite_change_offset("sl_tech", temp_x_offset,temp_y_offset); 
sprite_change_offset("sl_uphurt", temp_x_offset,temp_y_offset); 
sprite_change_offset("sl_walk", temp_x_offset,temp_y_offset); 
sprite_change_offset("sl_walkturn", temp_x_offset,temp_y_offset); 
sprite_change_offset("sl_walljump", temp_x_offset,temp_y_offset); 
sprite_change_offset("sl_waveland", temp_x_offset,temp_y_offset);
sprite_change_offset("sl_dspecial_2_pity_flip", temp_x_offset,temp_y_offset);

// Other Section
set_victory_theme(sound_get("victory"));

// Supersonic's Skin Handler 
user_event(15);