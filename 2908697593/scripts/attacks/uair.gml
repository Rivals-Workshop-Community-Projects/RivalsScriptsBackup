set_attack_value(AT_UAIR, AG_CATEGORY, 2);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uairg"));
set_attack_value(AT_UAIR, AG_AIR_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 12);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_UAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("isaac_pulserifle_shot"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX, sound_get("isaac_pulserifle_shot"));
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 7, AG_WINDOW_SFX, sound_get("isaac_pulserifle_shot"));
set_window_value(AT_UAIR, 7, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 8, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 9, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 10, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 10, AG_WINDOW_SFX, sound_get("isaac_pulserifle_shot"));
set_window_value(AT_UAIR, 10, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 11, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 12, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 12, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_UAIR, 1);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -77);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 90);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("isaac_pulserifle_bullet"));
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_MASK, sprite_get("isaac_pulserifle_bullet"));
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_VSPEED, -21);

set_num_hitboxes(AT_UAIR, 4);

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -77);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 90);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("isaac_pulserifle_bullet"));
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_MASK, sprite_get("isaac_pulserifle_bullet"));
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_HSPEED, 22);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_VSPEED, -22);

set_num_hitboxes(AT_UAIR, 7);

set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 7);
set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 10);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -86);
set_hitbox_value(AT_UAIR, 7, HG_WIDTH, 90);
set_hitbox_value(AT_UAIR, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_SPRITE, sprite_get("isaac_pulserifle_bullet_last"));
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_MASK, sprite_get("isaac_pulserifle_bullet_last"));
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_HSPEED, 21);
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_VSPEED, -16);

set_num_hitboxes(AT_UAIR, 10);

set_hitbox_value(AT_UAIR, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 10, HG_WINDOW, 10);
set_hitbox_value(AT_UAIR, 10, HG_LIFETIME, 10);
set_hitbox_value(AT_UAIR, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 10, HG_HITBOX_Y, -86);
set_hitbox_value(AT_UAIR, 10, HG_WIDTH, 90);
set_hitbox_value(AT_UAIR, 10, HG_HEIGHT, 80);
set_hitbox_value(AT_UAIR, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 10, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 10, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UAIR, 10, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 10, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 10, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 10, HG_PROJECTILE_SPRITE, sprite_get("isaac_pulserifle_bullet_last"));
set_hitbox_value(AT_UAIR, 10, HG_PROJECTILE_MASK, sprite_get("isaac_pulserifle_bullet_last"));
set_hitbox_value(AT_UAIR, 10, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_UAIR, 10, HG_PROJECTILE_HSPEED, 21);
set_hitbox_value(AT_UAIR, 10, HG_PROJECTILE_VSPEED, -15);


