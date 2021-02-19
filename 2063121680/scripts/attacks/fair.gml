set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 15);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 5);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, 2);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 82);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);

//sourspots

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, 30);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 44);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, get_hitbox_value(AT_FAIR, 2, HG_PRIORITY));
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, get_hitbox_value(AT_FAIR, 2, HG_DAMAGE));
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, get_hitbox_value(AT_FAIR, 2, HG_ANGLE));
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, get_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK));
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING));
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, get_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE));
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, get_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING));
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, get_hitbox_value(AT_FAIR, 2, HG_HIT_SFX));
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, get_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT));
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, get_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP));

set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 45);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 25);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, get_hitbox_value(AT_FAIR, 2, HG_PRIORITY));
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, get_hitbox_value(AT_FAIR, 2, HG_DAMAGE));
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, get_hitbox_value(AT_FAIR, 2, HG_ANGLE));
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, get_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK));
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING));
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, get_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE));
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, get_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING));
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, get_hitbox_value(AT_FAIR, 2, HG_HIT_SFX));
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, get_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT));
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, get_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP));
