set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ell_big_missile_fire"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UAIR, 3);

//sweetspot
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -73);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 25);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("chaos_fire_hit"));
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 148);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 21);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_zetter_shine"));
set_hitbox_value(AT_UAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 40);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);

//late hit
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -14);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -68);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 56);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 47);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 100);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_zetter_shine"));
set_hitbox_value(AT_UAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 40);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -20);
