set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, sound_get("rutilt"));
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 10);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED, 8);

//recovery window
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED, 4);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.05);


set_num_hitboxes(AT_USPECIAL_2, 2);

set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 11*2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -24*2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 27*2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 28*2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, fx_rhit );
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_USPECIAL_2, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 2*2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -13*2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 31*2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 30*2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, fx_rhit );
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
