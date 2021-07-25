set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 15);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);


set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 1, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_SDI_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL, 7, HG_WIDTH, 190);
set_hitbox_value(AT_FSPECIAL, 7, HG_HEIGHT, 190);
set_hitbox_value(AT_FSPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_DAMAGE, 0.1);
set_hitbox_value(AT_FSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 7, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HIT_SFX, sound_get("slicel"));