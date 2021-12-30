set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_NUM_WINDOWS, 6);
set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

var ig = 1;

//Lift Leg
set_window_value(49, ig, AG_WINDOW_TYPE, 1);
set_window_value(49, ig, AG_WINDOW_LENGTH, 8 * 4);
set_window_value(49, ig, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(49, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, ig, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_charge_gained_1"));

ig++;

//Charge 1
set_window_value(49, ig, AG_WINDOW_TYPE, 1);
set_window_value(49, ig, AG_WINDOW_LENGTH, 15 * 4);
set_window_value(49, ig, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(49, ig, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, ig, AG_WINDOW_SFX, sound_get("fs_charge"));

ig++;

//Hold
set_window_value(49, ig, AG_WINDOW_TYPE, 1);
set_window_value(49, ig, AG_WINDOW_LENGTH, 11 * 5);
set_window_value(49, ig, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(49, ig, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(49, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, ig, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_charge_full"));

ig++;

//Swing
set_window_value(49, ig, AG_WINDOW_TYPE, 1);
set_window_value(49, ig, AG_WINDOW_LENGTH, 2 * 3);
set_window_value(49, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, ig, AG_WINDOW_ANIM_FRAME_START, 34);
set_window_value(49, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, ig, AG_WINDOW_SFX, sound_get("fs_shoot"));

ig++;

//Shoot
set_window_value(49, ig, AG_WINDOW_TYPE, 1);
set_window_value(49, ig, AG_WINDOW_LENGTH, 5 * 3);
set_window_value(49, ig, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(49, ig, AG_WINDOW_ANIM_FRAME_START, 36);

ig++;

//Stay
set_window_value(49, ig, AG_WINDOW_TYPE, 1);
set_window_value(49, ig, AG_WINDOW_LENGTH, 1 * 30);
set_window_value(49, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, ig, AG_WINDOW_ANIM_FRAME_START, 40);

//END