set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sfx_gunload);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 3);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -27);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -110);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 32);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.01);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, vfx_flash);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sfx_hit4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, get_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE));
set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, get_hitbox_value(AT_USTRONG, 1, HG_WINDOW));
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, get_hitbox_value(AT_USTRONG, 1, HG_LIFETIME));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, get_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, get_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y));
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, get_hitbox_value(AT_USTRONG, 1, HG_WIDTH));
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, get_hitbox_value(AT_USTRONG, 1, HG_HEIGHT));
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, get_hitbox_value(AT_USTRONG, 1, HG_PRIORITY));
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, get_hitbox_value(AT_USTRONG, 1, HG_DAMAGE));
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, get_hitbox_value(AT_USTRONG, 1, HG_ANGLE));
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, get_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK));
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING));
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, get_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE));
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, get_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING));
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, get_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT));
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, get_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET));
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, get_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, get_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP));

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -27);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 52);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, vfx_flash);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sfx_hit3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
