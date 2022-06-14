//Down air
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_DAIR, 3);

//Startup 1
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//Attack 1
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, sound_get("missile_shoot"));
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -3);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//Follow through 1
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//Startup 2
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//Attack 2
set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, sound_get("missile_shoot"));
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED, -3);
set_window_value(AT_DAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//Follow through 2
set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//Startup 3
set_window_value(AT_DAIR, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//Attack 3
set_window_value(AT_DAIR, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_SFX, sound_get("missile_shoot"));
set_window_value(AT_DAIR, 8, AG_WINDOW_VSPEED, -6);
set_window_value(AT_DAIR, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//Follow through 3
set_window_value(AT_DAIR, 9, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.6);


//Hitbox 1
set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 45);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 35);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("missile_hit"));
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, dair_vfx);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -50);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -40);

set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("dair_proj"));
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_VSPEED, 10);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);

//Hitbox 2
set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 45);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);

//Hitbox 3
set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 8);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 45);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);