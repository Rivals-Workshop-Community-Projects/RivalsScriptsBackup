// load.gml
// called right after the item is loaded into the game. 
// This is where you would normally set sprites’ origins and bounding boxes.

sprite_change_offset("offscreen_wisp", 28, 56);
sprite_change_offset("offscreen_HUD", 28, 56);

sprite_change_offset("mimikyu_stand_hurtbox", 68, 94);
sprite_change_offset("mimikyu_crouch_hurtbox", 68, 94);

sprite_change_offset("hitfx_shadow_small", 96, 96);
sprite_change_offset("hitfx_shadow_mid", 96, 96);
sprite_change_offset("hitfx_shadow_big", 96, 96);

sprite_change_offset("hitfx_wood_big", 128, 128);
sprite_change_offset("hitfx_wood_small", 80, 80);

sprite_change_offset("hitfx_nail", 128, 128);
sprite_change_offset("hitfx_mimibig", 128, 144);

sprite_change_offset("fx_fire1", 112, 112);
sprite_change_offset("fx_fire2", 64, 64);
sprite_change_offset("fx_fire3", 12, 23);

sprite_change_offset("curse", 28, 80);
sprite_change_offset("curse_off", 28, 80);
sprite_change_offset("curse_mask", 28, 80);

sprite_change_offset("curse_pin", 12, 28);

sprite_change_offset("shadowcharge_core", 32, 64);

sprite_change_offset("shadowcharge_core", 32, 64);
sprite_change_offset("shadowcharge_spin", 32, 32);
sprite_change_offset("shadowcharge_succ1", 32, 64);
sprite_change_offset("shadowcharge_succ2", 32, 64);

sprite_change_offset("curse_pin_intro", 48, 82);
sprite_change_offset("curse_pin_consume", 48, 82);

sprite_change_offset("willo_morph", 36, 86);
sprite_change_offset("willothunder_segment", 36, 56);
sprite_change_offset("willothunder_end", 64, 56);
sprite_change_offset("willothunder_tip", 36, 68);

sprite_change_offset("willo_ignite", 48, 80);

sprite_change_offset("curse_tick", 6, 6);
sprite_change_offset("shadowball", 14, 14);
sprite_change_offset("shadowball_big", 26, 26);

sprite_change_offset("vfx_playcloud", 64, 128);
sprite_change_offset("vfx_play1", 48, 96);
sprite_change_offset("vfx_play2", 48, 96);
sprite_change_offset("vfx_play3", 48, 96);
sprite_change_offset("vfx_play4", 48, 96);
sprite_change_offset("vfx_ustrong_tipper", 48, 96);

sprite_change_offset("fspec_zmove_text", 170, 108);

sprite_change_offset("idle", 48, 80);
sprite_change_offset("hurt", 48, 80);
sprite_change_offset("bighurt", 48, 80);
sprite_change_offset("crouch", 48, 80);
sprite_change_offset("walk", 48, 80);
sprite_change_offset("walkturn", 48, 80);
sprite_change_offset("dash", 48, 80);
sprite_change_offset("dashstart", 48, 80);
sprite_change_offset("dashstop", 48, 80);
sprite_change_offset("dashturn", 48, 80);

sprite_change_offset("jumpstart", 48, 80);
sprite_change_offset("jump", 48, 80);;
sprite_change_offset("doublejump", 48, 80);
sprite_change_offset("walljump", 48, 80);
sprite_change_offset("pratfall", 48, 80);
sprite_change_offset("land", 48, 80);
sprite_change_offset("landinglag", 48, 80);

sprite_change_offset("parry", 68, 80);
sprite_change_offset("parry_hit", 68, 80);
sprite_change_offset("roll_forward", 48, 80);
sprite_change_offset("roll_backward", 48, 80);
sprite_change_offset("airdodge", 48, 80);
sprite_change_offset("waveland", 48, 80);
sprite_change_offset("tech", 48, 80);

sprite_change_offset("intro", 48, 80);

sprite_change_offset("jab", 96, 80);
sprite_change_offset("dattack", 64, 98);
sprite_change_offset("ftilt", 72, 80);
sprite_change_offset("dtilt", 72, 80);
sprite_change_offset("utilt", 64, 96);
sprite_change_offset("nair", 64, 94);
sprite_change_offset("fair", 96, 96);
sprite_change_offset("bair", 92, 96);
sprite_change_offset("uair", 64, 94);
sprite_change_offset("dair", 48, 78);
sprite_change_offset("fstrong", 136, 184);
sprite_change_offset("ustrong", 126, 240);
sprite_change_offset("dstrong", 94, 96);
sprite_change_offset("nspecial", 66, 96);
sprite_change_offset("fspecial", 66, 104);
sprite_change_offset("fspec_pre_play_grab", 74, 102);
sprite_change_offset("fspec_zmove", 100, 152);
sprite_change_offset("uspecial", 76, 76);
sprite_change_offset("dspecial", 48, 80);
sprite_change_offset("taunt", 48, 80);

sprite_change_offset("plat", 64, 124);

sprite_change_offset("nspecial_proj", 64, 94);

sprite_change_offset("mamizou_compat", 48, 72);

//victory screen
set_victory_bg( sprite_get( "mimikyu_victorybg" ));
set_victory_theme( sound_get( "mimikyu_victory" ));