set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);


set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 0);

set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 13);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.15);

set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 10);


set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_UAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UAIR,3);




set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 4); 
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -68);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 86);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 84);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 68);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.5); 
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5.5);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("slice3"));
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 1, HG_SDI_MULTIPLIER, 0.8);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME,0);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 76);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 98);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 76);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("strong1"));
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
