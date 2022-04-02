set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//startup
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 6);

//attack
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_ori_dtilt_perform"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 2);

//endlag
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 5);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 62);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 110);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 120);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("sword_hit_s"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 301);

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -92);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 65);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sound_get("sword_hit_s"));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 301);

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 15);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -100);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, sound_get("sword_hit_m"));
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 60);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_SPRITE, sprite_get("corn1"));
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_MASK, sprite_get("corn1"));
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_HSPEED, -1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 60);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_SPRITE, sprite_get("corn2"));
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_MASK, sprite_get("corn2"));
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_UNBASHABLE, 1);