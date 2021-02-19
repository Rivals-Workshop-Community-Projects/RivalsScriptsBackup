//AR taunt 3
//fries

//note for someone digging around: AT_TAUNT_3 DOESN'T EXIST NORMALLY. it was defined in init.gml.

set_attack_value(AT_TAUNT_3, AG_SPRITE, sprite_get("fries_AR"));
set_attack_value(AT_TAUNT_3, AG_NUM_WINDOWS, 9); //9 normal, 19 hime
set_attack_value(AT_TAUNT_3, AG_HURTBOX_SPRITE, sprite_get("ar_hurtbox"));

//x5
//ends 21

set_window_value(AT_TAUNT_3, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_3, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_TAUNT_3, 1, AG_WINDOW_SFX, sound_get("brush"));

set_window_value(AT_TAUNT_3, 2, AG_WINDOW_LENGTH, 26);
set_window_value(AT_TAUNT_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT_3, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_3, 2, AG_WINDOW_SFX_FRAME, 18);
set_window_value(AT_TAUNT_3, 2, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_place"));

set_window_value(AT_TAUNT_3, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT_3, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_3, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_3, 3, AG_WINDOW_SFX_FRAME, 14);
set_window_value(AT_TAUNT_3, 3, AG_WINDOW_SFX, asset_get("sfx_frog_nspecial_shove"));

set_window_value(AT_TAUNT_3, 4, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT_3, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_TAUNT_3, 4, AG_WINDOW_ANIM_FRAMES, 11);

set_window_value(AT_TAUNT_3, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT_3, 5, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_TAUNT_3, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_3, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_3, 5, AG_WINDOW_SFX_FRAME, 24);
set_window_value(AT_TAUNT_3, 5, AG_WINDOW_SFX, asset_get("sfx_zetter_shine_taunt"));

set_window_value(AT_TAUNT_3, 6, AG_WINDOW_LENGTH, 56);
set_window_value(AT_TAUNT_3, 6, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_TAUNT_3, 6, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT_3, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT_3, 7, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_TAUNT_3, 7, AG_WINDOW_ANIM_FRAMES, 1);

//--end

set_window_value(AT_TAUNT_3, 8, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT_3, 8, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_TAUNT_3, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_3, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_3, 8, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));

set_window_value(AT_TAUNT_3, 9, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_3, 9, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_TAUNT_3, 9, AG_WINDOW_ANIM_FRAMES, 5);

//--hime

set_window_value(AT_TAUNT_3, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_3, 10, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_TAUNT_3, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_3, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_3, 10, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_TAUNT_3, 10, AG_WINDOW_SFX, sound_get("exclamation"));

set_window_value(AT_TAUNT_3, 11, AG_WINDOW_LENGTH, 42);
set_window_value(AT_TAUNT_3, 11, AG_WINDOW_ANIM_FRAME_START, 34);
set_window_value(AT_TAUNT_3, 11, AG_WINDOW_ANIM_FRAMES, 4);

//loop, wait for hime?
set_window_value(AT_TAUNT_3, 12, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_3, 12, AG_WINDOW_ANIM_FRAME_START, 37);
set_window_value(AT_TAUNT_3, 12, AG_WINDOW_ANIM_FRAMES, 1);

//fries offer
set_window_value(AT_TAUNT_3, 13, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_3, 13, AG_WINDOW_ANIM_FRAME_START, 38);
set_window_value(AT_TAUNT_3, 13, AG_WINDOW_ANIM_FRAMES, 3);

//monch
set_window_value(AT_TAUNT_3, 14, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT_3, 14, AG_WINDOW_ANIM_FRAME_START, 41);
set_window_value(AT_TAUNT_3, 14, AG_WINDOW_ANIM_FRAMES, 4);

//hand extend
set_window_value(AT_TAUNT_3, 15, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_3, 15, AG_WINDOW_ANIM_FRAME_START, 45);
set_window_value(AT_TAUNT_3, 15, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_3, 15, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_3, 15, AG_WINDOW_SFX_FRAME, 29);
set_window_value(AT_TAUNT_3, 15, AG_WINDOW_SFX, asset_get("mfx_coin"));

//pat1
set_window_value(AT_TAUNT_3, 16, AG_WINDOW_LENGTH, 17);
set_window_value(AT_TAUNT_3, 16, AG_WINDOW_ANIM_FRAME_START, 48);
set_window_value(AT_TAUNT_3, 16, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_3, 16, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_3, 16, AG_WINDOW_SFX_FRAME, 16);
set_window_value(AT_TAUNT_3, 16, AG_WINDOW_SFX, asset_get("mfx_coin"));

//pat2
set_window_value(AT_TAUNT_3, 17, AG_WINDOW_LENGTH, 17);
set_window_value(AT_TAUNT_3, 17, AG_WINDOW_ANIM_FRAME_START, 50);
set_window_value(AT_TAUNT_3, 17, AG_WINDOW_ANIM_FRAMES, 2);

//end
set_window_value(AT_TAUNT_3, 18, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT_3, 18, AG_WINDOW_ANIM_FRAME_START, 52);
set_window_value(AT_TAUNT_3, 18, AG_WINDOW_ANIM_FRAMES, 2);

//back
set_window_value(AT_TAUNT_3, 19, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT_3, 19, AG_WINDOW_ANIM_FRAME_START, 53);
set_window_value(AT_TAUNT_3, 19, AG_WINDOW_ANIM_FRAMES, 1);



















