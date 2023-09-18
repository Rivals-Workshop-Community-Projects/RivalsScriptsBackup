set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("wait1"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_NAME, "Wait1");

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 240);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 11);

var startup_frame = 1;
set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_MISC_ADD, `${WAIT1_SELF_DAMAGE} self damage and -1 Level of Tension on frame ${startup_frame}.`);

