set_attack_value(AT_FSTRONG_2, AG_SPRITE, spr_nspecial_item_crossbow);
set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 10);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_FSTRONG_2, AG_MUNO_ATTACK_NAME, "NSpecial: Crossbow");

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_FSTRONG_2, 1); //see fstrong.gml