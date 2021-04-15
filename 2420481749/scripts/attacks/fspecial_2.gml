set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 0);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial_1000_fold_arms"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_2, AG_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_1000_fold_hurt"));

//startup
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("oliviaappear"));

//arms
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 90);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 0);

//grab
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, sound_get("shinysound"));

//slam1
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_blow_heavy2"));
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 15);

//slam2
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_SFX, asset_get("sfx_blow_heavy2"));
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_SFX_FRAME, 15);

//slam3
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_SFX, asset_get("sfx_blow_heavy2"));
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_SFX_FRAME, 15);

//slamFinal
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_LENGTH, 44);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 34);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_SFX, asset_get("sfx_blow_heavy2"));
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_SFX_FRAME, 24);

//attack end1
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 20);

//attack end2
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_ANIM_FRAME_START, 28);

//grab
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_LENGTH, 40);
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_SFX, sound_get("swing"));
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_SFX_FRAME, 15);
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_FSPECIAL_2,10);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 28);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, sound_get("pulloff"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, starryhit);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 19);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -116);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 180);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, sound_get("hurt"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, sound_get("hurt"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, sidehammer);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 110);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX, sound_get("hurt"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT, sidehammer);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HIT_SFX, sound_get("hurt"));
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_VISUAL_EFFECT, sidehammer);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_X, 110);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HIT_SFX, sound_get("hurt"));
set_hitbox_value(AT_FSPECIAL_2, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_VISUAL_EFFECT, sidehammer);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_FSPECIAL_2, 7, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HIT_SFX, sound_get("hurt"));
set_hitbox_value(AT_FSPECIAL_2, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_VISUAL_EFFECT, sidehammer);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_FSPECIAL_2, 8, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_HITBOX_X, 110);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_HIT_SFX, sound_get("hurt"));
set_hitbox_value(AT_FSPECIAL_2, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_VISUAL_EFFECT, sidehammer);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_FSPECIAL_2, 9, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_HIT_SFX, sound_get("hurt"));
set_hitbox_value(AT_FSPECIAL_2, 9, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_VISUAL_EFFECT, sidehammer);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_FSPECIAL_2, 10, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_HITBOX_X, 110);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_HEIGHT, 80); 
set_hitbox_value(AT_FSPECIAL_2, 10, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_HIT_SFX, sound_get("hurt"));
set_hitbox_value(AT_FSPECIAL_2, 10, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_VISUAL_EFFECT, sidehammer);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_HITBOX_GROUP, 4  );