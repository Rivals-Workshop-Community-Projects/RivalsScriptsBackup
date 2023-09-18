set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("wait2"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_EXTRA_2, AG_MUNO_ATTACK_NAME, "Wait2");

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 120);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 28);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);

var startup_frame = get_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH);
set_attack_value(AT_EXTRA_2, AG_MUNO_ATTACK_MISC_ADD, `Heals ${WAIT2_SELF_DAMAGE} per ${WAIT2_SELF_DAMAGE_TIME} starting on frame ${startup_frame}.`);

