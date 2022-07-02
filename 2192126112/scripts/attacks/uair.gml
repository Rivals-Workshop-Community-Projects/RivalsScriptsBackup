set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));


set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("demo_sword_swing3"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX, 0);
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_UAIR, 1);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -5);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -119);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 1, HG_EFFECT, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("cbar_hitbod1"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 1, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_UAIR, 1, HG_THROWS_ROCK, 0);