set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong2"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong2_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_GOTO, get_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS) + 1);

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_FSTRONG_2, 2);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 140);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 100);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));