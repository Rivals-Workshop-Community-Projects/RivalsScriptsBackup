set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("PP"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("PP"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("PP_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX, sound_get("PLASMA PISTOL"));
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_SFX, sound_get("PLASMA SHOT"));
set_window_value(AT_FTHROW, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_FTHROW, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 12);


set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 21);
//set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, +56);
set_hitbox_value(AT_FTHROW, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("PP proj"));
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_MASK, sprite_get("PP coll"));
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 28);
