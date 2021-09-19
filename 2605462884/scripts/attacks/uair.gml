set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 1, AG_BODY_CELL, 22);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_BODY_CELL, 23);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 3, AG_BODY_CELL, 23);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 4, AG_BODY_CELL, 22);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UAIR, 3); 

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -120);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 132);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("pain_short"));

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -120);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 131);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 26);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));





