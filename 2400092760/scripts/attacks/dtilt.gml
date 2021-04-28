set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 6);

//HELD VARIANT EXTENDED STARTUP
set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX, sound_get("EnemySword"));
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DTILT, 5, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));

set_window_value(AT_DTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 6);


set_num_hitboxes(AT_DTILT, 5);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"))

set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, -1);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 106);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, hit_sprites[1]);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_DTILT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, -1);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 144);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, hit_sprites[1]);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DTILT, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 60);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 75);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 56);
set_hitbox_value(AT_DTILT, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT, hit_sprites[1]);
set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, sound_get("hit4"));

set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, 92);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DTILT, 5, HG_WIDTH, 70);
set_hitbox_value(AT_DTILT, 5, HG_HEIGHT, 56);
set_hitbox_value(AT_DTILT, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 100);
set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 5, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT, hit_sprites[1]);
set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 5, HG_HIT_SFX, sound_get("hit1"));