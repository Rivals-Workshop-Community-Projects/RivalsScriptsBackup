set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, (get_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH) / 2) - 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 3);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sfx_hit1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, get_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE));
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, get_hitbox_value(AT_DAIR, 1, HG_WINDOW));
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, get_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH) / 2)
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, get_hitbox_value(AT_DAIR, 1, HG_LIFETIME));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, get_hitbox_value(AT_DAIR, 1, HG_HITBOX_X));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, get_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y));
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, get_hitbox_value(AT_DAIR, 1, HG_WIDTH));
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, get_hitbox_value(AT_DAIR, 1, HG_HEIGHT));
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, get_hitbox_value(AT_DAIR, 1, HG_SHAPE));
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, get_hitbox_value(AT_DAIR, 1, HG_PRIORITY));
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, get_hitbox_value(AT_DAIR, 1, HG_DAMAGE));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, get_hitbox_value(AT_DAIR, 1, HG_ANGLE));
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, get_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK));
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING));
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, get_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE));
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, get_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING));
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, get_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT));
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, get_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET));
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, get_hitbox_value(AT_DAIR, 1, HG_HIT_SFX));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, get_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP));

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 280);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sfx_hit4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);