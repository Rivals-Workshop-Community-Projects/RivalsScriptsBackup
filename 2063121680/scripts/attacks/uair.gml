set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 4);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 110);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, get_hitbox_value(AT_UAIR, 1, HG_PRIORITY));
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, get_hitbox_value(AT_UAIR, 1, HG_DAMAGE));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, get_hitbox_value(AT_UAIR, 1, HG_ANGLE));
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, get_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK));
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING));
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, get_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE));
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, get_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING));
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, get_hitbox_value(AT_UAIR, 1, HG_HIT_SFX));
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, get_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT));
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, get_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP));

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, 20);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, -90);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 1);