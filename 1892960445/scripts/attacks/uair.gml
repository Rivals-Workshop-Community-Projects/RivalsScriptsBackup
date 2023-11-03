set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("open1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, sound_get("ambient7"));

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_UAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_UAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 7, AG_WINDOW_SFX, sound_get("close2"));
set_window_value(AT_UAIR, 7, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_UAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,5);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9); //horizontal kb towards hitbox center
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, snow_effect);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, snow_effect);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, snow_effect);

set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, snow_effect);

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 6);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 55);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_UAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 3); //horizontal KB away from hitbox center
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, crit_effect);