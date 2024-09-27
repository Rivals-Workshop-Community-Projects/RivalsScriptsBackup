set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sfx_gunload);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, sfx_gunshot2);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 3);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 63);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -39);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 86);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 35);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.05);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, vfx_flash);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sfx_hit4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, get_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE));
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, get_hitbox_value(AT_FSTRONG, 1, HG_WINDOW));
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, get_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME));
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, get_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X));
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, get_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y));
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, get_hitbox_value(AT_FSTRONG, 1, HG_WIDTH));
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, get_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT));
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, get_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY));
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, get_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE));
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, get_hitbox_value(AT_FSTRONG, 1, HG_ANGLE));
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, get_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER));
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, get_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK));
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING));
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, get_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE));
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, get_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING));
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, get_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, get_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX));
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, get_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP));

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, get_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X));
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, get_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y));
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, get_hitbox_value(AT_FSTRONG, 1, HG_WIDTH));
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, get_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT));
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 35);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, vfx_flash2);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sfx_hit3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);